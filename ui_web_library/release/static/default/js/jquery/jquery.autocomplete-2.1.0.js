/**
 * @fileOverview jquery-autocomplete, the jQuery Autocompleter
 * @author <a href="mailto:dylan@dyve.net">Dylan Verheul</a>
 * @requires jQuery 1.6+
 *
 * Copyright 2005-2012, Dylan Verheul
 *
 * Use under either MIT, GPL or Apache 2.0. See LICENSE.txt
 *
 * Project home: https://github.com/dyve/jquery-autocomplete
 */

(function($) {
    "use strict";

    /**
     * jQuery autocomplete plugin
     * @param {object|string} options
     * @returns (object} jQuery object
     */
    $.fn.autocomplete = function(options) {
        var url;
        if (arguments.length > 1) {
            url = options;
            options = arguments[1];
            options.url = url;
        } else if (typeof options === 'string') {
            url = options;
            options = { url: url };
        }
        var opts = $.extend({}, $.fn.autocomplete.defaults, options);
        return this.each(function() {
            var $this = $(this);
            $this.data('autocompleter', new $.Autocompleter(
                $this,
                $.meta ? $.extend({}, opts, $this.data()) : opts
            ));
        });
    };

    /**
     * Store default options
     * @type {object}
     */
    $.fn.autocomplete.defaults = {
    	inputClass: 'acInput',
    	resultsClass: 'acResults',
        selectClass: 'acSelect',
        loadingClass: 'acLoading',
        queryParamName: 'q',
        limitParamName: 'limit',
        extraParams: {},
        remoteDataType: false,
        lineSeparator: '\n',
        cellSeparator: '|',
        minChars: 2,
        maxItemsToShow: 10,
        delay: 400,
        useCache: true,
        maxCacheLength: 10,
        matchSubset: true,
        matchCase: false,
        matchInside: true,
        mustMatch: false,
        selectFirst: false,
        selectOnly: false,
        showResult: null,
        preventDefaultReturn: true,
        preventDefaultTab: false,
        autoFill: false,
        filterResults: true,
        sortResults: true,
        sortFunction: null,
        onItemSelect: null,
        onNoMatch: null,
        onFinish: null,
        matchStringConverter: null,
        beforeUseConverter: null,
        autoWidth: 'min-width',
        useDelimiter: false,
        delimiterChar: ',',
        delimiterKeyCode: 188
    };

    /**
     * Sanitize result
     * @param {Object} result
     * @returns {Object} object with members value (String) and data (Object)
     * @private
     */
    var sanitizeResult = function(result) {
        var value, data;
        var type = typeof result;
        if (type === 'string') {
            value = result;
            data = {};
        } else if ($.isArray(result)) {
            value = result[0];
            data = result.slice(1);
        } else if (type === 'object') {
            value = result.value;
            data = result.data;
        }
        value = String(value);
        if (typeof data !== 'object') {
            data = {};
        }
        return {
            value: value,
            data: data
        };
    };

    /**
     * Sanitize integer
     * @param {mixed} value
     * @param {Object} options
     * @returns {Number} integer
     * @private
     */
    var sanitizeInteger = function(value, stdValue, options) {
        var num = parseInt(value, 10);
        options = options || {};
        if (isNaN(num) || (options.min && num < options.min)) {
            num = stdValue;
        }
        return num;
    };

    /**
     * Create partial url for a name/value pair
     */
    var makeUrlParam = function(name, value) {
        return [name, encodeURIComponent(value)].join('=');
    };

    /**
     * Build an url
     * @param {string} url Base url
     * @param {object} [params] Dictionary of parameters
     */
    var makeUrl = function(url, params) {
        var urlAppend = [];
        $.each(params, function(index, value) {
            urlAppend.push(makeUrlParam(index, value));
        });
        if (urlAppend.length) {
            url += url.indexOf('?') === -1 ? '?' : '&';
            url += urlAppend.join('&');
        }
        return url;
    };

    /**
     * Default sort filter
     * @param {object} a
     * @param {object} b
     * @param {boolean} matchCase
     * @returns {number}
     */
    var sortValueAlpha = function(a, b, matchCase) {
        a = String(a.value);
        b = String(b.value);
        if (!matchCase) {
            a = a.toLowerCase();
            b = b.toLowerCase();
        }
        if (a > b) {
            return 1;
        }
        if (a < b) {
            return -1;
        }
        return 0;
    };

    /**
     * Parse data received in text format
     * @param {string} text Plain text input
     * @param {string} lineSeparator String that separates lines
     * @param {string} cellSeparator String that separates cells
     * @returns {array} Array of autocomplete data objects
     */
    var plainTextParser = function(text, lineSeparator, cellSeparator) {
        var results = [];
        var i, j, data, line, value, lines;
        
        // Be nice, fix linebreaks before splitting on lineSeparator
        // INTERSHOP modification start
        lines = String(text).replace(/<!--[\s\S]*?-->/g, '').replace('\r\n', '\n').split(lineSeparator);
        // INTERSHOP modification end
        
        for (i = 0; i < lines.length; i++) {
            line = lines[i].split(cellSeparator);
            data = [];
            for (j = 0; j < line.length; j++) {
                data.push(decodeURIComponent(line[j]));
            }
            value = data.shift();
            
            // INTERSHOP modification start
            if(value.length) {
            	results.push({ value: value, data: data });
            }
            // INTERSHOP modification end
        }
        return results;
    };

    /**
     * Autocompleter class
     * @param {object} $elem jQuery object with one input tag
     * @param {object} options Settings
     * @constructor
     */
    $.Autocompleter = function($elem, options) {

        /**
         * Assert parameters
         */
        if (!$elem || !($elem instanceof $) || $elem.length !== 1 || $elem.get(0).tagName.toUpperCase() !== 'INPUT') {
            throw new Error('Invalid parameter for jquery.Autocompleter, jQuery object with one element with INPUT tag expected.');
        }

        /**
         * @constant Link to this instance
         * @type object
         * @private
         */
        var self = this;

        /**
         * @property {object} Options for this instance
         * @public
         */
        this.options = options;

        /**
         * @property object Cached data for this instance
         * @private
         */
        this.cacheData_ = {};

        /**
         * @property {number} Number of cached data items
         * @private
         */
        this.cacheLength_ = 0;

        /**
         * @property {number} Handler to activation timeout
         * @private
         */
        this.keyTimeout_ = null;

        /**
         * @property {number} Handler to finish timeout
         * @private
         */
        this.finishTimeout_ = null;

        /**
         * @property {number} Last key pressed in the input field (store for behavior)
         * @private
         */
        this.lastKeyPressed_ = null;

        /**
         * @property {string} Last value processed by the autocompleter
         * @private
         */
        this.lastProcessedValue_ = null;

        /**
         * @property {string} Last value selected by the user
         * @private
         */
        this.lastSelectedValue_ = null;

        /**
         * @property {boolean} Is this autocompleter active (showing results)?
         * @see showResults
         * @private
         */
        this.active_ = false;

        /**
         * @property {boolean} Is this autocompleter allowed to finish on blur?
         * @private
         */
        this.finishOnBlur_ = true;

        /**
         * Sanitize options
         */
        this.options.minChars = sanitizeInteger(this.options.minChars, $.fn.autocomplete.defaults.minChars, { min: 1 });
        this.options.maxItemsToShow = sanitizeInteger(this.options.maxItemsToShow, $.fn.autocomplete.defaults.maxItemsToShow, { min: 0 });
        this.options.maxCacheLength = sanitizeInteger(this.options.maxCacheLength, $.fn.autocomplete.defaults.maxCacheLength, { min: 1 });
        this.options.delay = sanitizeInteger(this.options.delay, $.fn.autocomplete.defaults.delay, { min: 0 });

        /**
         * Init DOM elements repository
         */
        this.dom = {};

        /**
         * Store the input element we're attached to in the repository
         */
        this.dom.$elem = $elem;

        /**
         * Switch off the native autocomplete and add the input class
         */
        this.dom.$elem.attr('autocomplete', 'off').addClass(this.options.inputClass);

        /**
         * Create DOM element to hold results, and force absolute position
         */
        // INTERSHOP modification start
        this.dom.$results = $('<ol/>').addClass(this.options.resultsClass).css({
            position: 'absolute',
            display: 'none'
        });
        if (this.options.resultsListClass) 
        	this.dom.$results.addClass(this.options.resultsListClass);
        // INTERSHOP modification end
        
        $('body').append(this.dom.$results);

        /**
         * Attach keyboard monitoring to $elem
         */
        $elem.keydown(function(e) {
            self.lastKeyPressed_ = e.keyCode;
            switch(self.lastKeyPressed_) {

                case self.options.delimiterKeyCode: // comma = 188
                    if (self.options.useDelimiter && self.active_) {
                        self.selectCurrent();
                    }
                    break;

                // ignore navigational & special keys
                case 35: // end
                case 36: // home
                case 16: // shift
                case 17: // ctrl
                case 18: // alt
                case 37: // left
                case 39: // right
                    break;

                case 38: // up
                    e.preventDefault();
                    if (self.active_) {
                        self.focusPrev();
                    } else {
                        self.activate();
                    }
                    return false;

                case 40: // down
                    e.preventDefault();
                    if (self.active_) {
                        self.focusNext();
                    } else {
                        self.activate();
                    }
                    return false;

                case 9: // tab
                    if (self.active_) {
                        self.selectCurrent();
                        if (self.options.preventDefaultTab) {
                            e.preventDefault();
                            return false;
                        }
                    }
                break;

                case 13: // return
                    if (self.active_) {
                        self.selectCurrent();
                        if (self.options.preventDefaultReturn) {
                            e.preventDefault();
                            return false;
                        }
                    }
                break;

                case 27: // escape
                    if (self.active_) {
                        e.preventDefault();
                        self.deactivate(true);
                        return false;
                    }
                break;

                default:
                    self.activate();

            }
        });

        /**
         * Finish on blur event
         * Use a timeout because instant blur gives race conditions
         */
        $elem.blur(function() {
            if (self.finishOnBlur_) {
                self.finishTimeout_ = setTimeout(function() { self.deactivate(true); }, 200);
            }
        });

    };

    /**
     * Position output DOM elements
     * @private
     */
    $.Autocompleter.prototype.position = function() {
        var offset = this.dom.$elem.offset();
        this.dom.$results.css({
        	//top: offset.top + this.dom.$elem.outerHeight(),
            
        	// INTERSHOP modification start
        	top: Math.floor(offset.top + this.dom.$elem.outerHeight()) + this.options.topOffset,
            // INTERSHOP modification end            
            
        	left: offset.left
        });
    };
    
    /**
     * Read from cache
     * @private
     */
    $.Autocompleter.prototype.cacheRead = function(filter) {
        var filterLength, searchLength, search, maxPos, pos;
        if (this.options.useCache) {
            filter = String(filter);
            filterLength = filter.length;
            if (this.options.matchSubset) {
                searchLength = 1;
            } else {
                searchLength = filterLength;
            }
            while (searchLength <= filterLength) {
                if (this.options.matchInside) {
                    maxPos = filterLength - searchLength;
                } else {
                    maxPos = 0;
                }
                pos = 0;
                while (pos <= maxPos) {
                    search = filter.substr(0, searchLength);
                    if (this.cacheData_[search] !== undefined) {
                        return this.cacheData_[search];
                    }
                    pos++;
                }
                searchLength++;
            }
        }
        return false;
    };

    /**
     * Write to cache
     * @private
     */
    $.Autocompleter.prototype.cacheWrite = function(filter, data) {
        if (this.options.useCache) {
            if (this.cacheLength_ >= this.options.maxCacheLength) {
                this.cacheFlush();
            }
            filter = String(filter);
            if (this.cacheData_[filter] !== undefined) {
                this.cacheLength_++;
            }
            this.cacheData_[filter] = data;
            return this.cacheData_[filter];
        }
        return false;
    };

    /**
     * Flush cache
     * @public
     */
    $.Autocompleter.prototype.cacheFlush = function() {
        this.cacheData_ = {};
        this.cacheLength_ = 0;
    };

    /**
     * Call hook
     * Note that all called hooks are passed the autocompleter object
     * @param {string} hook
     * @param data
     * @returns Result of called hook, false if hook is undefined
     */
    $.Autocompleter.prototype.callHook = function(hook, data) {
        var f = this.options[hook];
        if (f && $.isFunction(f)) {
            return f(data, this);
        }
        return false;
    };

    /**
     * Set timeout to activate autocompleter
     */
    $.Autocompleter.prototype.activate = function() {
        var self = this;
        if (this.keyTimeout_) {
            clearTimeout(this.keyTimeout_);
        }
        this.keyTimeout_ = setTimeout(function() {
            self.activateNow();
        }, this.options.delay);
    };

    /**
     * Activate autocompleter immediately
     */
    $.Autocompleter.prototype.activateNow = function() {
        var value = this.beforeUseConverter(this.dom.$elem.val());
        if (value !== this.lastProcessedValue_ && value !== this.lastSelectedValue_) {
            this.fetchData(value);
        }
    };

    /**
     * Get autocomplete data for a given value
     * @param {string} value Value to base autocompletion on
     * @private
     */
    $.Autocompleter.prototype.fetchData = function(value) {
        var self = this;
        var processResults = function(results, filter) {
            // INTERSHOP modification start
        	if(results.length) {
        		self.showResults(self.filterResults(results, filter), filter);
        	}
            // INTERSHOP modification end
        };
        this.lastProcessedValue_ = value;
        if (value.length < this.options.minChars) {
            processResults([], value);
        } else if (this.options.data) {
            processResults(this.options.data, value);
        } else {
            this.fetchRemoteData(value, function(remoteData) {
                processResults(remoteData, value);
            });
        }
    };

    /**
     * Get remote autocomplete data for a given value
     * @param {string} filter The filter to base remote data on
     * @param {function} callback The function to call after data retrieval
     * @private
     */
    $.Autocompleter.prototype.fetchRemoteData = function(filter, callback) {
        var data = this.cacheRead(filter);
        if (data) {
            callback(data);
        } else {
            var self = this;
            var dataType = self.options.remoteDataType === 'json' ? 'json' : 'text';
            var ajaxCallback = function(data) {
                var parsed = false;
                if (data !== false) {
                    parsed = self.parseRemoteData(data);
                    self.cacheWrite(filter, parsed);
                }
                self.dom.$elem.removeClass(self.options.loadingClass);
                callback(parsed);
            };
            this.dom.$elem.addClass(this.options.loadingClass);
            $.ajax({
                url: this.makeUrl(filter),
                success: ajaxCallback,
                error: function() {
                    ajaxCallback(false);
                },
                dataType: dataType
            });
        }
    };

    /**
     * Create or update an extra parameter for the remote request
     * @param {string} name Parameter name
     * @param {string} value Parameter value
     * @public
     */
    $.Autocompleter.prototype.setExtraParam = function(name, value) {
        var index = $.trim(String(name));
        if (index) {
            if (!this.options.extraParams) {
                this.options.extraParams = {};
            }
            if (this.options.extraParams[index] !== value) {
                this.options.extraParams[index] = value;
                this.cacheFlush();
            }
        }
    };

    /**
     * Build the url for a remote request
     * If options.queryParamName === false, append query to url instead of using a GET parameter
     * @param {string} param The value parameter to pass to the backend
     * @returns {string} The finished url with parameters
     */
    $.Autocompleter.prototype.makeUrl = function(param) {
        var self = this;
        var url = this.options.url;
        var params = $.extend({}, this.options.extraParams);

        if (this.options.queryParamName === false) {
            url += encodeURIComponent(param);
        } else {
            params[this.options.queryParamName] = param;
        }

        if (this.options.limitParamName && this.options.maxItemsToShow) {
            params[this.options.limitParamName] = this.options.maxItemsToShow;
        }

        return makeUrl(url, params);
    };

    /**
     * Parse data received from server
     * @param remoteData Data received from remote server
     * @returns {array} Parsed data
     */
    $.Autocompleter.prototype.parseRemoteData = function(remoteData) {
        var remoteDataType;
        if (this.options.remoteDataType === 'json') {
            remoteDataType = typeof(remoteData);
            switch (remoteDataType) {
                case 'object':
                    return remoteData;
                case 'string':
                    return $.parseJSON(remoteData);
                default:
                    throw new Error("Unexpected remote data type: " + remoteDataType);
            }
        }
        return plainTextParser(remoteData, this.options.lineSeparator, this.options.cellSeparator);
    };

    /**
     * Filter result
     * @param {Object} result
     * @param {String} filter
     * @returns {boolean} Include this result
     * @private
     */
    $.Autocompleter.prototype.filterResult = function(result, filter) {
        if (!result.value) {
            return false;
        }
        if (this.options.filterResults) {
            var pattern = this.matchStringConverter(filter);
            var testValue = this.matchStringConverter(result.value);
            if (!this.options.matchCase) {
                pattern = pattern.toLowerCase();
                testValue = testValue.toLowerCase();
            }
            var patternIndex = testValue.indexOf(pattern);
            if (this.options.matchInside) {
                return patternIndex > -1;
            } else {
                return patternIndex === 0;
            }
        }
        return true;
    };

    /**
     * Filter results
     * @param results
     * @param filter
     */
    $.Autocompleter.prototype.filterResults = function(results, filter) {
        var filtered = [];
        var i, result;

        for (i = 0; i < results.length; i++) {
            result = sanitizeResult(results[i]);
            if (this.filterResult(result, filter)) {
                filtered.push(result);
            }
        }
        if (this.options.sortResults) {
            filtered = this.sortResults(filtered, filter);
        }
        if (this.options.maxItemsToShow > 0 && this.options.maxItemsToShow < filtered.length) {
            filtered.length = this.options.maxItemsToShow;
        }
        return filtered;
    };

    /**
     * Sort results
     * @param results
     * @param filter
     */
    $.Autocompleter.prototype.sortResults = function(results, filter) {
        var self = this;
        var sortFunction = this.options.sortFunction;
        if (!$.isFunction(sortFunction)) {
            sortFunction = function(a, b, f) {
                return sortValueAlpha(a, b, self.options.matchCase);
            };
        }
        results.sort(function(a, b) {
            return sortFunction(a, b, filter, self.options);
        });
        return results;
    };

    /**
     * Convert string before matching
     * @param s
     * @param a
     * @param b
     */
    $.Autocompleter.prototype.matchStringConverter = function(s, a, b) {
        var converter = this.options.matchStringConverter;
        if ($.isFunction(converter)) {
            s = converter(s, a, b);
        }
        return s;
    };

    /**
     * Convert string before use
     * @param s
     * @param a
     * @param b
     */
    $.Autocompleter.prototype.beforeUseConverter = function(s, a, b) {
        s = this.getValue();
        var converter = this.options.beforeUseConverter;
        if ($.isFunction(converter)) {
            s = converter(s, a, b);
        }
        return s;
    };

    /**
     * Enable finish on blur event
     */
    $.Autocompleter.prototype.enableFinishOnBlur = function() {
        this.finishOnBlur_ = true;
    };

    /**
     * Disable finish on blur event
     */
    $.Autocompleter.prototype.disableFinishOnBlur = function() {
        this.finishOnBlur_ = false;
    };

    /**
     * Create a results item (LI element) from a result
     * @param result
     */
    $.Autocompleter.prototype.createItemFromResult = function(result) {
        var self = this;
		
        // INTERSHOP modification start
		var $li = $('<li/>').html(this.showResult(result.value, result.data));
		if (this.options.listItemClass)  
			$li.addClass(this.options.listItemClass);
		// INTERSHOP modification end
		
        $li.data({value: result.value, data: result.data})
            .click(function() {
                self.selectItem($li);
            })
            .mousedown(self.disableFinishOnBlur)
            .mouseup(self.enableFinishOnBlur)
        ;
        return $li;
    };

    /**
     * Show all results
     * @param results
     * @param filter
     */
    $.Autocompleter.prototype.showResults = function(results, filter) {
        var numResults = results.length;
        var self = this;
        var i, result, $li, autoWidth, first = false, $first = false;

        // INTERSHOP modification start
        this.dom.$results.html('');
        // INTERSHOP modification end
        
        if (numResults) {
            for (i = 0; i < numResults; i++) {
                result = results[i];
                $li = this.createItemFromResult(result);
                
                // INTERSHOP modification start
                this.dom.$results.append($li);
                // INTERSHOP modification end
                
                if (first === false) {
                    first = String(result.value);
                    $first = $li;
                    $li.addClass(this.options.firstItemClass);
                }
                if (i === numResults - 1) {
                    $li.addClass(this.options.lastItemClass);
                }
            }

            // Always recalculate position before showing since window size or
            // input element location may have changed.
            this.position();

            // INTERSHOP modification start
            this.dom.$results.show();
            // INTERSHOP modification end
            
            if (this.options.autoWidth) {
                autoWidth = this.dom.$elem.outerWidth() - this.dom.$results.outerWidth() + this.dom.$results.width();
                this.dom.$results.css(this.options.autoWidth, autoWidth);
            }
            $('li', this.dom.$results).hover(
                function() { self.focusItem(this); },
                function() { /* void */ }
            );
            if (this.autoFill(first, filter) || this.options.selectFirst || (this.options.selectOnly && numResults === 1)) {
                this.focusItem($first);
            }
            this.active_ = true;
        } else {
            this.hideResults();
            this.active_ = false;
        }
    };

    $.Autocompleter.prototype.showResult = function(value, data) {
        if ($.isFunction(this.options.showResult)) {
            return this.options.showResult(value, data);
        } else {
            return value;
        }
    };

    $.Autocompleter.prototype.autoFill = function(value, filter) {
        var lcValue, lcFilter, valueLength, filterLength;
        if (this.options.autoFill && this.lastKeyPressed_ !== 8) {
            lcValue = String(value).toLowerCase();
            lcFilter = String(filter).toLowerCase();
            valueLength = value.length;
            filterLength = filter.length;
            if (lcValue.substr(0, filterLength) === lcFilter) {
                var d = this.getDelimiterOffsets();
                var pad = d.start ? ' ' : ''; // if there is a preceding delimiter
                this.setValue( pad + value );
                var start = filterLength + d.start + pad.length;
                var end = valueLength + d.start + pad.length;
                this.selectRange(start, end);
                return true;
            }
        }
        return false;
    };

    $.Autocompleter.prototype.focusNext = function() {
        this.focusMove(+1);
    };

    $.Autocompleter.prototype.focusPrev = function() {
        this.focusMove(-1);
    };

    $.Autocompleter.prototype.focusMove = function(modifier) {
        var $items = $('li', this.dom.$results);
        modifier = sanitizeInteger(modifier, 0);
        if (modifier) {
            for (var i = 0; i < $items.length; i++) {
                if ($($items[i]).hasClass(this.options.selectClass_)) {
                    this.focusItem(i + modifier);
                    return;
                }
            }
        }
        this.focusItem(0);
    };

    $.Autocompleter.prototype.focusItem = function(item) {
        var $item, $items = $('li', this.dom.$results);
        if ($items.length) {
            $items.removeClass(this.options.selectClass_).removeClass(this.options.selectClass);
            if (typeof item === 'number') {
                if (item < 0) {
                    item = 0;
                } else if (item >= $items.length) {
                    item = $items.length - 1;
                }
                $item = $($items[item]);
            } else {
                $item = $(item);
            }
            if ($item) {
                $item.addClass(this.options.selectClass_).addClass(this.options.selectClass);
            }
        }
    };

    $.Autocompleter.prototype.selectCurrent = function() {
        var $item = $('li.' + this.options.selectClass_, this.dom.$results);
        if ($item.length === 1) {
            this.selectItem($item);
        } else {
            this.deactivate(false);
        }
    };

    $.Autocompleter.prototype.selectItem = function($li) {
        var value = $li.data('value');
        var data = $li.data('data');
        var displayValue = this.displayValue(value, data);
        var processedDisplayValue = this.beforeUseConverter(displayValue);
        this.lastProcessedValue_ = processedDisplayValue;
        this.lastSelectedValue_ = processedDisplayValue;
        var d = this.getDelimiterOffsets();
        var delimiter = this.options.delimiterChar;
        var elem = this.dom.$elem;
        var extraCaretPos = 0;
        if ( this.options.useDelimiter ) {
            // if there is a preceding delimiter, add a space after the delimiter
            if ( elem.val().substring(d.start-1, d.start) == delimiter ) {
                displayValue = ' ' + displayValue;
            }
            // if there is not already a delimiter trailing this value, add it
            if ( elem.val().substring(d.end, d.end+1) != delimiter && this.lastKeyPressed_ != this.options.delimiterKeyCode ) {
                displayValue = displayValue + delimiter;
            } else {
                // move the cursor after the existing trailing delimiter
                extraCaretPos = 1;
            }
        }
        this.setValue(displayValue);
        elem.focus();
        this.setCaret(d.start + displayValue.length + extraCaretPos);
        this.callHook('onItemSelect', { value: value, data: data });
        this.deactivate(true);
    };

    $.Autocompleter.prototype.displayValue = function(value, data) {
        if ($.isFunction(this.options.displayValue)) {
            return this.options.displayValue(value, data);
        }
        return value;
    };

    $.Autocompleter.prototype.hideResults = function() {
        this.dom.$results.hide();
    };

    $.Autocompleter.prototype.deactivate = function(finish) {
        if (this.finishTimeout_) {
            clearTimeout(this.finishTimeout_);
        }
        if (this.keyTimeout_) {
            clearTimeout(this.keyTimeout_);
        }
        if (finish) {
            if (this.lastProcessedValue_ !== this.lastSelectedValue_) {
                if (this.options.mustMatch) {
                    this.setValue('');
                }
                this.callHook('onNoMatch');
            }
            if (this.active_) {
                this.callHook('onFinish');
            }
            this.lastKeyPressed_ = null;
            this.lastProcessedValue_ = null;
            this.lastSelectedValue_ = null;
            this.active_ = false;
        }
        this.hideResults();
    };

    $.Autocompleter.prototype.selectRange = function(start, end) {
        var input = this.dom.$elem.get(0);
        if (input.setSelectionRange) {
            input.focus();
            input.setSelectionRange(start, end);
        } else if (this.createTextRange) {
            var range = this.createTextRange();
            range.collapse(true);
            range.moveEnd('character', end);
            range.moveStart('character', start);
            range.select();
        }
    };

    /**
     * Move caret to position
     * @param {Number} pos
     */
    $.Autocompleter.prototype.setCaret = function(pos) {
        this.selectRange(pos, pos);
    };

    /**
     * Get caret position
     */
    $.Autocompleter.prototype.getCaret = function() {
        var elem = this.dom.$elem;
        if ($.browser.msie) {
            // ie
            var selection = document.selection;
            if (elem[0].tagName.toLowerCase() != 'textarea') {
                var val = elem.val();
                var range = selection.createRange().duplicate();
                range.moveEnd('character', val.length);
                var s = ( range.text == '' ? val.length : val.lastIndexOf(range.text) );
                range = selection.createRange().duplicate();
                range.moveStart('character', -val.length);
                var e = range.text.length;
            } else {
                var range = selection.createRange();
                var stored_range = range.duplicate();
                stored_range.moveToElementText(elem[0]);
                stored_range.setEndPoint('EndToEnd', range);
                var s = stored_range.text.length - range.text.length;
                var e = s + range.text.length;
            }
        } else {
            // ff, chrome, safari
            var s = elem[0].selectionStart;
            var e = elem[0].selectionEnd;
        }
        return {
            start: s,
            end: e
        };        
    };

    /**
     * Set the value that is currently being autocompleted
     * @param {String} value
     */
    $.Autocompleter.prototype.setValue = function(value) {
        if ( this.options.useDelimiter ) {
            // set the substring between the current delimiters
            var val = this.dom.$elem.val();
            var d = this.getDelimiterOffsets();
            var preVal = val.substring(0, d.start);
            var postVal = val.substring(d.end);
            value = preVal + value + postVal;
        }
        this.dom.$elem.val(value);
    };

    /**
     * Get the value currently being autocompleted
     * @param {String} value
     */
    $.Autocompleter.prototype.getValue = function() {
        var val = this.dom.$elem.val();
        if ( this.options.useDelimiter ) {
            var d = this.getDelimiterOffsets();
            return val.substring(d.start, d.end).trim();
        } else {
            return val;
        }
    };

    /**
     * Get the offsets of the value currently being autocompleted
     */
    $.Autocompleter.prototype.getDelimiterOffsets = function() {
        var val = this.dom.$elem.val();
        if ( this.options.useDelimiter ) {
            var preCaretVal = val.substring(0, this.getCaret().start);
            var start = preCaretVal.lastIndexOf(this.options.delimiterChar) + 1;
            var postCaretVal = val.substring(this.getCaret().start);
            var end = postCaretVal.indexOf(this.options.delimiterChar);
            if ( end == -1 ) end = val.length;
            end += this.getCaret().start;
        } else {
            start = 0;
            end = val.length;
        }
        return {
            start: start,
            end: end
        };
    };

})(jQuery);
