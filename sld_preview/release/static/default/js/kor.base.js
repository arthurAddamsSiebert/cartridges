/**
 * The base package of the kor api.
 * @file kor.base.js
 * @package kor.base
 * @version 1.0.15
 * @author Brad Hurley hurleyb@gsicommerce.com
 */
(function($) {

	if(typeof(KOR) == 'undefined'){
		/**
		 * class for the jsu library. does nothing right now.
		 * Used as a namespace. Used as a namespace. Don't Bother creating an instance of KOR.
		 * @namespace KOR
		 * @static
		 */
		KOR = function(){return};
	};

    var isDebug = function(){
		if(!isDebug._init){
			isDebug._init = true;
			if(location.search.match(/debug=true/) && console){
				KOR.debug = true;
			}
		}
		return KOR.debug
	}

    /**
	 * Used to log out to the console
	 * @function con
	 * @private
	 */
    var con = function(type, args){
		if (isDebug() && console[type]) {
			console[type].apply(this, args)
		}
	};

	/**
	 * Used to sort arrays
	 * @function seqenceSortCallback
	 * @private
	 */
	var seqenceSortCallback = function(a, b, p) {
		if(p) {
			a = a[p];
			b = b[p];
		}
		if(!parseInt(a, 10)) {
			a = String(a).toUpperCase();
		}
		if(!parseInt(b, 10)) {
			b = String(b).toUpperCase();
		}
		if (a > b) {
			return -1;
		}
		if (b > a) {
			return 1;
		}
		return 0;
	};
	/**
	 * Used to store template functions
	 * @function cache
	 * @private
	 */
	var cache = {
		template: {}
	};

	/**
	 * flag for weather or not to call the init method of a class instance
	 * @variable initializing
	 * @type {boolean}
	 * @default false
	 * @private
	 */
	var initializing = false;

	$.extend(KOR, {
		/**
		 * the version of the api
		 * @variable VERSION
		 * @constant
		 * @type String
		 * @example:
		 * console.log(KOR.VERSION)
		 */
		VERSION: '1.0.15',

		/**
		 * Debugging in Console
		 * @variable debug
		 * @type boolean
		 * @default false
		 * @example:
		 * KOR.debug = true;
		 * KOR.log(123);
		*/
		debug: false,

        ifDebug: function(fn){
        	if(isDebug()) fn();
        },

		/**
		 * counts the members of an object
		 * @returns {Number} the number of members of the object
		 * @param {object} object to count
		 * @example
		 * var obj = {
		 *	   a: 123,
		 *	   b: 'abc'
		 * };
		 * console.log(KOR.count(obj));
		 */
		count : function(o){
			var i = 0;
			for (var p in o) {
				i++
			}
			return i;
		},

        $: function(selector, clear){
            if(!this['_element_instance_'+selector] || clear){
                this['_element_instance_'+selector] = $(selector);
            }
            return this['_element_instance_'+selector]
        },

		/**
		 * creates and returns a namespace
		 * @returns {object} the object of the last namespace
		 * @param {string} ns string that (may or may not contain dots seperating namespaces) translate to namespaces
		 * @param {object} context append namespace to this context
		 * @name KOR.namespace
		 * @function
		 * @example
		 * var mySandboxedObject = KOR.namespace('xxx.yyy.zzz')
		 */
		'namespace': function(ns, context){
			var o, i, j, d;
			d = ns.split(".");
			o = context || window;
			for (j = (d[0] == "window") ? 1 : 0; j < d.length; j = j + 1) {
				o[d[j]] = o[d[j]] || {};
				o = o[d[j]];
			}
			return o;
		},

		/**
		 * creates a class. a simple implimentation of class based inheritence
		 * @returns {function} a function with extended prototype
		 * @param {object|function} *subclasses objects and or functions to add methods to the prototype of the  returned class function
		 * @name KOR.class
		 * @function
		 * @example
		 * //base class
		 * var MyClass = KOR.createClass({
		 *     init: function(){
		 *		this.param1 = 123;
		 *		return this;
		 *     },
		 *     method1: function(){
		 *		return this.param1;
		 *     }
		 * });
		 *
		 * //subclass
		 * var SubClass = KOR.createClass(myClass, {
		 *     method2: function(){
		 *		return this.param1;
		 *     }
		 * });
		 *
		 //subclass with override and super
		 * var SubClass2 = KOR.createClass(myClass, {
		 *     method1: function(){
		 *		return this._super(this) + ' more';
		 *     }
		 * });
		 */
		createClass: function(){
			var a = $.makeArray(arguments);
			var fn = function(){
				if(!initializing && this.init)
				  return this.init.apply(this, arguments);
				return this;
			};
			fn.constructor = fn;
			initializing = true;
			var proto = new fn();
			initializing = false;
			$.each(a, function(i,v){
				var t = $.type(v);
				if(t == "function"){
					for (var p in v){
						fn[p] = v[p];
					}
					v = v.prototype;
				};
				for (var p in v){
					var parameterType = $.type(v[p]);
					if (parameterType == 'function' && proto[p]){
						proto[p] = proto[p].overload(v[p]);
					} else {
						proto[p] = v[p];
					};
				};
			});
			fn.prototype = proto;
			return fn;
		},

		/**
		 * converts an object to a query string for urls
		 * @returns {string} a query string
		 * @param {object} object a javascript object to convert to a query string
		 */
		toQueryString: function(o) {
			var a = [];
			$.each(o, function(k,v){
				$.each($.makeArray(v), function(ii,vv){
				a.push('{{}}={{}}'.uInject(encodeURIComponent(k), encodeURIComponent(vv)));
				});
			});
			return a.join('&');
		},

		setLocationHash: function(k, v, context){
            context = context || window.location;
            var hash = KOR.getLocationHash(context);
            hash[k] = v;
            context.hash = KOR.toQueryString(hash);
        },

		getLocationHash: function(context){
            context = context || window.location;
            return context.hash.replace(/#/g,'').uQueryStringToHash();
        },


		/**
		 * @returns {undefined}
		 * @param {object} *objects the objects to log
		 */
		log: function(){
			con('log', arguments)
		},
		/**
		 * @returns {undefined}
		 * @param {object} *objects the objects to log in a verbose manner
		 */
		verbose: function(){
			con('debug', arguments)
		},
		/**
		 * @returns {undefined}
		 * @param {object} *objects the objects to log with an info icon
		 */
		info: function(){
			con('info', arguments)
		},
		/**
		 * @returns {undefined}
		 * @param {object} *objects the objects to log with a warn icon
		 */
		warn: function(){
			con('warn', arguments)
		},
		/**
		 * @returns {undefined}
		 * @param {object} *objects the objects to log with an error icon
		 */
		error: function(){
			con('error', arguments)
		},
		/**
		 * @returns {undefined}
		 * @param {object} *objects the objects to log in an object tree
		 */
		dir: function(){
			con('dir', arguments)
		},

		/**
		 * the base enumerable method. loops through and array or object
		 * @returns {undefined|object|array}
		 * @param {object|array} o the object or array to be looped over
		 * @param {function} iterator callback function called on each item of the object or array
		 * @param {object} context the object that will become the context of the iterator function
		 * @param {boolean} breakontruth should the loop break and return the first match
		 */
		each: function(o, iterator, context, breakontruth){
			var it = context ? function(){return iterator.apply(context, arguments)} : iterator;
			var t = $.type(o);
			if(t == "array"){
				var n = o.length;
				var l = n-1;
				lp:
				while (n--) {
					var r = it(o[l-n], l-n);
					if(breakontruth && r){
						return o[l-n];
						break lp;
					}
				}
			}
			else{
				lp:
				for (var p in o) {
				var r = it(o[p], p);
				if(breakontruth && r){
					return o[p];
					break lp;
				}
				}
			}
			if(breakontruth) return undefined
			else return o;
		},

		/**
		 * returns a new object or array based on what is returned from the interator function
		 * @returns {object|array} the new object or array altered by the interator function
		 * @param {object|array} o the object or array to be looped over
		 * @param {function} iterator callback function called on each item of the object or array
		 * @param {object} context the object that will become the context of the iterator function
		 */
		map: function(o, iterator, context) {
			var it = context ? function(){return iterator.apply(context, arguments)} : iterator;
			var t = $.type(o);
			var fn = function(index,value) {
				results[index] = it(value, index);
			};
			if(t == "array"){
				var results = [];
			}else{
				var results = {};
			};
			$.each(o, fn);
			return results;
		},

		/**
		 * returns a new object or array based on any non undefined results from the interator function
		 * @returns {object|array} the new object or array populated by any non undefined results from the interator function
		 * @param {object|array} o the object or array to be looped over
		 * @param {function} iterator callback function called on each item of the object or array
		 * @param {object} context the object that will become the context of the iterator function
		 */
		pluck: function(o, iterator, context) {
			var it = context ? function(){return iterator.apply(context, arguments)} : iterator;
			var t = $.type(o);
			var fn = function(index, value) {
				var r = it(value, index);
				if(r !== undefined) {
				if(t == "array")
					results.push(r);
				else
					results[index] = r;
				}
			};
			if(t == "array"){
				var results = [];
			}else{
				var results = {};
			};
			$.each(o, fn);
			return results;
		},

		/**
		 * calls a method on every element in an object or array.
		 * @returns {object|array} the same object that was send
		 * @param {object|array} o the object or array to be looped over
		 * @param {function} method method called on each item of the object or array
		 * @param {object} *arguments arguments that are send into each call to the objects method
		 */
		invoke: function(){
			var a = $.makeArray(arguments);
			var o = a.shift();
			var m = a.shift();
			return KOR.map(o, function(v){
				return v[m].apply(v, a)
			});
		},

		/**
		 * returns a the first truth resulting from the interator function
		 * @returns {object} the first truth resulting from the interator function
		 * @param {object|array} o the object or array to be looped over
		 * @param {function} iterator callback function called on each item of the object or array
		 * @param {object} context the object that will become the context of the iterator function
		 */
		detect: function(o, iterator, context) {
			return KOR.each(o, iterator, context, true);
		},

		/**
		 * utility methods injected into the uTemplate scope as utils.
		 * @class
		 * @static
		 */
		templateUtils: {
			/**
			 * shortcut for rendering templates inside dom elements with an id
			 * @returns {string}
			 * @param {string} template the id of the dom element whos inner html will be the template
			 * @param {object} object the data object that becomes the context of the template
			 */
			includeById: function(template, object){
				if(object != undefined){
				var e = document.getElementById(template).innerHTML;
				return e.uTemplate(object);
				}
				return '';
			}
		},

		/**
		 * this is a mixin for enabling custom events to objects and or functions. not intended to be called as static.
		 * @class
		 */
		eventMixin :
		/**
		 * @lends KOR.eventMixin#
		 */
		{
			/**
			 * unregisters an event type.
			 * this will also remove all observers.
			 * @returns {object}
			 * @param {string} onx the name of the custom event
			 */
			unregisterEvent: function (onx) {
				if (this.events && this.events[onx]) delete this.events[onx];
				return this
			},

			/**
			 * registers observer functions on an event type.
			 * the event types are scoped to the object that initialized the event object.
			 * @returns {object}
			 * @param {string} onx the name of the custom event to listen for
			 * @param {function} fn the function that runs on dispatch of the event
			 */
			observe: function (onx, fn, context) {
				var f = context ? function(){return fn.apply(context, arguments)} : fn;
				KOR.namespace('events', this);
				if (typeof this.events[onx] == 'undefined') this.events[onx] = {};
				this.events[onx][fn.toString()] = f;
				return this;
			},

			/**
			 * unregisters an observer function on an event type.
			 * the event types are scoped to the object that initialized the event object.
			 * @returns {object}
			 * @param {string} onx the name of the custom event
			 * @param {function} fn the function that is to be removed
			 */
			stopObserving: function (onx ,fn) {
				KOR.namespace('events', this);
				if (this.events[onx] && this.events[onx][fn.toString()])
				delete this.events[onx][fn.toString()];
				return this;
			},

			/**
			 * fires custom events.
			 * @returns {object}
			 * @param {string} onx the name of the custom event
			 * @param {object} message object to send to the listener functions
			 */
			fire: function (onx, message, context) {
				var c = context || this;
				KOR.namespace('events', this);
				if(this.events[onx]){
				$.each(this.events[onx], function(i,v){
					v({target: c, message: message})
				});
				}
				return this;
			}
		},

		/**
		 * a class to determine what browser is rendering the file.
		 * @class
		 * @static
		 */
		browser: {
			/**
			 * is the browser ie
			 * @type {boolean}
			 * @constant
			 */
			IE: !!(window.attachEvent && !window.opera),
			/**
			 * is the browser ie6
			 * @type {boolean}
			 * @constant
			 */
			IE6: navigator.userAgent.toLowerCase().indexOf("msie 6") > -1 && !window.opera,
			/**
			 * is the browser ie7
			 * @type {boolean}
			 * @constant
			 */
			IE7: navigator.userAgent.toLowerCase().indexOf("msie 7") > -1 && !window.opera,
			/**
			 * is the browser opera
			 * @type {boolean}
			 * @constant
			 */
			OPERA: !!window.opera,
			/**
			 * is the browser a version of webkit
			 * @type {boolean}
			 * @constant
			 */
			WEBKIT: navigator.userAgent.indexOf('AppleWebKit/') > -1,
			/**
			 * is the browser a version of gecko
			 * @type {boolean}
			 * @constant
			 */
			GECKO: navigator.userAgent.indexOf('Gecko') > -1 && navigator.userAgent.indexOf('KHTML') == -1,
			/**
			 * is the browser mobile safari
			 * @type {boolean}
			 * @constant
			 */
			MOBILESAFARI: !!navigator.userAgent.match(/Apple.*Mobile.*Safari/)
		}
	});

	$.extend(KOR, KOR.eventMixin);

	/**
	 * the native javascript Function class
	 * @name Function
	 * @class
	 * @lends Function
	 */
	$.extend(Function.prototype, {
		'overload' : function (overloadedFn) {
			return (function(fn, overloadedFn){
				return function(){
					this._super = fn;
					return overloadedFn.apply(this, arguments)
				}
			})(this, overloadedFn)
		}
	});

	/**
	 * the native javascript String class
	 * @name String
	 * @class
	 * @lends String
	 */
	$.extend(String.prototype,
	/** @lends String# */
	{
		/**
		 * converts a json string to a native javascript object
		 * @returns {object} a native javascript object
		 * @public
		 */
		uToJSON: function(){
		    var json = $.parseJSON(this);
			return json;
		},

		/**
		 * truncates a string and adds ...
		 * @returns {string} the truncated string
		 * @param {number} character length of the returned string
		 */
		uTruncate: function(trc){
			if(this.length > trc-3){
				return this.substring(0,trc-3) + '...';
			}
			return this;
		},

		/**
		 * creates a unique string of numbers
		 * @returns {string} a unique string of numbers
		 */
		uId: function(){
			return [this, parseInt(Math.random()*1000000), new Date().getTime()].join('')
		},

		/**
		 * strips whitespace from the beginning and end of the string
		 * @returns {string} the stripped string
		 */
		uStrip: function(){
			return this.replace(/^\s+/, '').replace(/\s+$/, '');
		},

		uClassName: function(){
			return this.uVariableName().replace(/^([a-z])/, function(match, letter){
				return letter.toUpperCase();
			})
		},

		uSlugName: function(){
			return this.uStrip().replace(/([A-Z])(?=[A-Z])/g, '$1-').replace(/\s+/g,'-').replace(/([a-z])([A-Z])/g, '$1-$2').toLowerCase()
		},

		uVariableName: function(){
			return this.uSlugName().replace(/-([a-z])/g, function(match, letter){
				return letter.toUpperCase();
			})
		},

		uDisplayName: function(){
			return this.uClassName().replace(/([A-Z])/g, ' $1').uStrip()
		},

		/**
		 * injects a data object or positioned arguments into a string
		 * @returns {string} the interpolated string
		 * @param {object} *data
		 */
		uInject: function(){
			var a = $.makeArray(arguments);
            if(a.length == 1 && $.type(a[0]) == 'array') a = a[0];
			var i = -1;
			return this.replace(/\{\{(.*?)\}\}/g, function(){
				i++
				if(arguments[1] == '') return a[i];
				if(arguments[1].match(/^[0-9]/)) return a[arguments[1]];
				else return a[0][arguments[1]];
			})
		},

		/**
		 * scriplet for javascript
		 * @returns {string} the interpolated template string
		 * @param {object} data standard javascript object
		 * @param {object} opts options
		 */
		uTemplate: function(data, opts){
			if(!cache.template[this]){
				cache.template[this] = new Function("utils", "var tok=[];tok.push('" + (this.replace(/\n|\r|'|\{\{(.*?)\}\}|\{%(.*?)%\}/g, function(){
				if(arguments[0] == "'") return "\\'";
				else if(arguments[0] == '\n' && (!opts||(opts&!opts.cleanWhitespace))) return "','\\n','";
				else if(arguments[0] == '\r' && (!opts||(opts&!opts.cleanWhitespace))) return "','\\r','";
				else if(arguments[0].charAt(1) == "{") return "',"+arguments[1]+",'";
				else return "');"+arguments[2]+";tok.push('";
				})) + "');return tok.join('');");
			}
			return cache.template[this].call(data || window, KOR.templateUtils);
		},

		uQueryStringToHash: function(){
            var hash = {}
            $.each(this.toString().split('&'), function(index, paramString){
              var paramSet = paramString.match(/(.*?)=(.*)/);
              if(paramSet && paramSet.length==3){
				hash[decodeURIComponent(paramSet[1])] = decodeURIComponent(paramSet[2]);
			  }
            });
            return hash;
        }
	});


	/**
	 * @name KOR.Multiton
	 */
	KOR.Multiton = KOR.createClass(KOR.eventMixin, {

		/**
		 * @protected
		 * @version 1.0.0
		 * @param {string} selector identifier used for named singleton or (Multiton) instances
		 * @param {object} mixin parameters and or methods object that overrides and or extends the class methods or parameters
		 * @returns {void}
		 */
		init: function(selector, mixin) {
			var obj = this;
			obj.selector = selector;
			obj.uId = "kor-".uId();
			$.extend(obj, mixin);
		}
	});

	KOR.Multiton.getInstanceOf = function(selector, mixin) {
		if (!this['selector_' + selector]) {
			this['selector_' + selector] = new this(selector, mixin);
		}
		return this['selector_' + selector];
	};

	$.extend(KOR.Multiton, KOR.eventMixin);

	KOR.UI = KOR.createClass(KOR.Multiton, {

		NAME: 'base',

        activeLabelClass: "kor-active-label",
		activeContentClass: "kor-active-content",

		/**
		 * @protected
		 * @param {string} selector identifier used for named singleton or (Multiton) instances
		 * @param {object} mixin mixin parameters and or methods object that overrides and or extends the class methods or parameters
		 * @returns {void}
		 */
		init: function(selector, mixin) {
			var obj = this;
			obj._super(selector, mixin);
			obj.registerEvents();
		},

		/**
		 * @public
		 * @returns {void}
		 * @param {jQuery} node
		 * @param {Event} ev
		 * @example
		 * KOR.dropnav('.dropnav', {
		 * 		show: function(node, ev){
		 *			node.fadeIn(300);
		 *		}
		 * });
		 */
		show: function(node, ev){
			node.show(300).addClass(this.activeContentClass);
            if(ev && ev.target) $(ev.target).addClass(this.activeLabelClass);
		},

		/**
		 * @public
		 * @returns {void}
		 * @param {jQuery} node
		 * @param {Event} ev
		 * @example
		 * KOR.dropnav('.dropnav', {
		 * 		hide: function(node, ev){
		 *			node.fadeOut(300);
		 *		}
		 * });
		 */
		hide: function(node, ev){
            node.hide(300).removeClass(this.activeContentClass);
            if(ev && ev.target) $(ev.target).removeClass(this.activeLabelClass);
		},

		/**
		 * @protected
		 * @returns {void}
		 */
		registerEvents: function() {
		},

		/**
		 * @protected
		 * @param {jQuery} node
		 * @returns {jQuery} a jQuery object
		 */
		getCurrentDom: function(node) {
			return node == window ? $() : $(node).closest(this.selector);
		}

	});


	KOR.LazyObject = KOR.createClass(KOR.UI, {

		/**
		 * Registers events for the Component Wrapper
		 *
		 * @returns
		 */
		registerEvents: function() {
			var obj = this;
			obj._super();
			$(document).delegate(obj.selector, "focus", $.proxy(obj, "singletonHandler"));
			$(document).delegate(obj.selector, "mouseenter", $.proxy(obj, "singletonHandler"));
			$(document).delegate(obj.selector, obj.NAME+':init', $.proxy(obj, "initHandler"));
		},

		/**
		 * Creates an instance of the Component based on the selector that created this wrapper.
		 *
		 * @param event
		 * @param data
		 * @returns
		 */
		initHandler: function(ev, data) {
			var obj = this;
			var node = $(ev.currentTarget);
			node.data( obj.NAME+'-instance', obj.initAction(node, ev, data));
		},

		initAction: function(node, ev, data) {
			return true;
		},

		/**
		 * Delegates the event to the :init event type.
		 *
		 * @param event
		 * @returns
		 */
		singletonHandler: function(event) {
			var obj = this;
			var node = $(event.currentTarget);
			if (!node.data( obj.NAME+'-instance')) {
				node.trigger( obj.NAME+':init', obj);
			}
		}
	});


    //fix for jquery position in 1.4.4 that returns an immutable object
    $.fn.offset = $.fn.offset.overload(function(){
        return $.extend({}, this._super.apply(this, arguments))
    });

	//fix for attr
	$.fn.attr = $.fn.attr.overload(function(){
		if(this[0] && !this[0].attributes){
			return undefined
		}else{
			return this._super.apply(this, arguments);
		}
    });

	//shortcut to render a template and context as the inner html of a jquery object
	$.fn.uTemplate = function(template, context, insertMethod, callback){
		$(this).each(function(index, element){
			KOR.ObjectFactory.getTemplate(template, function(str){
				var html = $(str.uTemplate(context));
				$(element)[insertMethod || 'html'](html);
				if (callback) callback.apply(html);
			});
		});
		return this;
	}

})(jQuery);
