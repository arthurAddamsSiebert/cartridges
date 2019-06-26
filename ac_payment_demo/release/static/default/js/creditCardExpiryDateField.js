/*global jQuery:true, intershop:true */
'use strict';
!function (global, utils, $) {
    var ui = utils.namespace('intershop.propertygroups.ui'),
		editor = utils.namespace('intershop.propertygroups.ui.editor'),
		template = '' +
			'<div class="propertygroup-editor propertygroup-editor-creditCardExpiryDate">' +
				'<input type="text" class="propertygroup-editor-value form-control" />' +
			'</div>';

	/**
	 * Create a new CreditCardExpiryDate editor.
	 * @param {Object} json configuration as JSON
	 * @param {String} name name of the editor
	 */
	var CreditCardExpiryDate = function CreditCardExpiryDate(json, name) {

	    this.$el = $($.parseHTML(template));
		this.$el.children('.propertygroup-editor-value').attr('name', name);

		Object.defineProperty(this, 'value', {
			configurable: true,
			enumerable: true,
			get: function () {

			    return this.$el.children('.propertygroup-editor-value').val();
			},
			set: function (v) {

			    this.$el.children('.propertygroup-editor-value').val(v);
			}
		});

		this.fromJSON(json);
		this.bindEvents();

        if (!this.autoCompleteEnabled) {
            this.$el.children('.propertygroup-editor-value').attr('autocomplete', 'off');
        }
	};
    
    /**
	 * Bind events to the DOM element.
	 * @private
	 */
	CreditCardExpiryDate.prototype.bindEvents = function bindEvents() {
		var _this = this;
		this.$el.find('.propertygroup-editor-value')
			.on('input.propertygroup', function onInput() {
				_this.modified = true;
			});
	};

	/**
	 * Load configuration from JSON.
	 * @param {Object} originJSON configuration as JSON
	 * @private
	 */
	CreditCardExpiryDate.prototype.fromJSON = function fromJSON(originJSON) {
		var json = $.extend(true, {}, originJSON);

		this.modified = json.modified || false;
		this.value = json.value || '';
        this.autoCompleteEnabled = json.autoCompleteEnabled;
	};

	/**
	 * Create configuration as JSON.
	 * @param {Object} originJSON old configuration as JSON
	 * @return {Object} updated configuration as JSON
	 */
	CreditCardExpiryDate.prototype.toJSON = function toJSON(originJSON) {
		var json = $.extend(true, {}, originJSON);

		json.modified = this.modified;
		if (this.modified) {
			json.value = this.value;
		}

		return json;
	};

	/**
	 * Enable the editor.
	 */
	CreditCardExpiryDate.prototype.enable = function enable() {
		this.$el.find('.propertygroup-editor-value').prop('disabled', false);
	};

	/**
	 * Disable the editor.
	 */
	CreditCardExpiryDate.prototype.disable = function disable() {
		this.$el.find('.propertygroup-editor-value').prop('disabled', true);
	};

	/**
     * View the value of the editor.
     */
	CreditCardExpiryDate.prototype.view = function view() {
        if (this.value != '') {
            this.$el.text(this.value);
        }
        else {
            this.$el.html('&nbsp;');
        }
    };

	/**
	 * Get the jQuery DOM element.
	 * @return {jQuery} jQuery DOM elements
	 */
	CreditCardExpiryDate.prototype.render = function render() {
		return this.$el;
	};

	editor.CreditCardExpiryDate = editor.CreditCardExpiryDate || CreditCardExpiryDate;
	ui.Controller.registerEditor('com.intershop.adapter.payment.demo.internal.creditcard.editor.ExpiryDateField', CreditCardExpiryDate);
}(window, intershop.propertygroups.utils, jQuery);