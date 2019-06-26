/* global KOR */
(function($) {

	KOR.validator = function(selector, mixin) {
		return KOR.Validator.getInstanceOf(selector, mixin);
    };

	KOR.Validator = KOR.createClass(KOR.LazyObject, {

		NAME: 'validator',

		formClassObject: 'Form',

		/**
		 * Creates an instance of the Component based on the selector that created this wrapper.
		 *
		 * @param event
		 * @param data
		 * @returns
		 */
		initAction: function(node /*, event, data */) {
			return new this.constructor[this.formClassObject](node, this.selector);
		}
	});

	KOR.Validator.AbstractValidation = KOR.createClass({

		errorClass: 'kor-error',
		errorTemplate: 'validationErrorTemplate',

		init: function(field, form, name){
			var obj = this;
			obj.name = name;
			obj.args = null;
			obj.field = field;
			obj.form = form;
			obj.renderErrors = true;
			obj.valid = false;
		},

		setArguments: function(){
			this.args = Array.prototype.slice.call(arguments, 0);
		},

		validate: function(){
			return this;
		},

		success: function(){
			this.valid = true;
			this.renderSuccess();
			this.field.trigger('validator:'+ this.name +'-success');
		},

		render: function(){
			this.renderErrors = true;
			return this.valid ? this.renderSuccess() : this.renderFailure();
		},

		renderSuccess: function(){
			if (this.renderErrors && this.valid) {
				this.field.removeClass(this.errorClass);
				this.field.next('.'+this.errorClass).remove();
			}
			return this;
		},

		failure: function(){
			this.valid = false;
			this.renderFailure();
			this.field.trigger('validator:'+ this.name +'-failure');
		},

		renderFailure: function(){
			if(!this.form.isGroupActive(this.field)){
				return this;
			}
			if (this.renderErrors && !this.valid) {
				this.field.addClass(this.errorClass);
				this.failureMessage();
			}
			return this;
		},

		failureMessage: function(){
			this.renderFailureMessage('fieldFailureMessageInvalid');
		},

		renderFailureMessage: function(extStr, args){
			var obj = this;
			if(obj.field.attr('data-error-message')){
				obj.renderFailureMessageTemplate(this.field.attr('data-error-message'));
			}else{
				KOR.ObjectFactory.getExtString(extStr, args, function(message){
					obj.renderFailureMessageTemplate(message);
				});
			}
		},
		
		renderFailureMessageTemplate: function(message){
			this.field.next('.'+this.errorClass).remove();
			this.field.uTemplate(this.errorTemplate, {
				errorClass: this.errorClass,
				errorMessage: message
			}, 'after');
		}
	});

	KOR.Validator.BasicValidation = KOR.createClass(KOR.Validator.AbstractValidation, {
		isValid : function(/* fieldValue */){
		},

		validate: function(){
			this.isValid($.trim(this.field.val())) ? this.success() : this.failure();
			return this;
		}
	});

	KOR.Validator.RegexValidation = KOR.createClass(KOR.Validator.AbstractValidation, {
		pattern : null,

		validate: function(){
			$.trim(this.field.val()).match(this.pattern) ? this.success() : this.failure();
			return this;
		}
	});

	KOR.Validator.AjaxValidation = KOR.createClass(KOR.Validator.AbstractValidation, {
		service : null,

		validate: function(){
			var obj = this;
			$.ajax({
				type: 'POST',
				url: this.service,
				data: this.field.val(),
				success: function(data){
					obj.isAjaxSuccess(data) ? obj.success() : obj.failure();
				},
				error: this.failure
			});
			return this;
		},

		isAjaxSuccess: function(data){
			data = KOR.decodeJSON(data);
			return data.valid;
		}
	});

	$.extend(KOR.namespace('KOR.Validator.rules'), {
		'required' : KOR.createClass(KOR.Validator.BasicValidation, {
			isValid : function(value){
				return value !== '';
			},
			failureMessage: function(){
				this.renderFailureMessage('fieldFailureMessageRequired');
			}
		}),

		'letters' : KOR.createClass(KOR.Validator.BasicValidation, {
			isValid : function(value){
				var m = value.match(/^[A-Za-z]+$/);
				if(m){
					if(this.args && this.args.length === 1 && this.args[0] === m[0].length){
						return true;
					} else if(this.args && this.args.length === 2 && this.args[0] === null && this.args[1] && m[0].length <= this.args[1]) {
						return true;
					} else if(this.args && this.args.length === 2 && this.args[1] === null && this.args[0] && m[0].length >= this.args[0]) {
						return true;
					} else if(this.args && this.args.length === 2 && this.args[1] && this.args[0] && m[0].length >= this.args[0] && m[0].length <= this.args[1]){
						return true;
					} else if(!this.args){
						return true;
					}
					return false;
				}
				return false;
			},
			failureMessage: function(){
				if(this.args && this.args.length === 1){
					this.renderFailureMessage('fieldFailureMessageLettersExact', [this.args[0]]);
				} else if (this.args && this.args.length === 2 && this.args[0] === null && this.args[1]) {
					this.renderFailureMessage('fieldFailureMessageLettersMax', [this.args[1]]);
				} else if (this.args && this.args.length === 2 && this.args[1] === null && this.args[0]) {
					this.renderFailureMessage('fieldFailureMessageLettersMin', [this.args[0]]);
				} else if (this.args && this.args.length === 2 && this.args[1] && this.args[0]) {
					this.renderFailureMessage('fieldFailureMessageLettersRange', [this.args[0], this.args[1]]);
				} else {
					this.renderFailureMessage('fieldFailureMessageLetters');
				}
			}
		}),

		'qty' : KOR.createClass(KOR.Validator.BasicValidation, {
			isValid : function(value){
				var m = value.match(/^[0-9]+$/);
				if(m){
					if(this.args && this.args.length === 1 && this.args[0] === m[0]){
						return true;
					} else if(this.args && this.args.length === 2 && this.args[0] === null && this.args[1] && m[0] <= this.args[1]) {
						return true;
					} else if(this.args && this.args.length === 2 && this.args[1] === null && this.args[0] && m[0] >= this.args[0]) {
						return true;
					} else if(this.args && this.args.length === 2 && this.args[1] && this.args[0] && m[0] >= this.args[0] && m[0] <= this.args[1]){
						return true;
					} else if(!this.args){
						return true;
					}
					return false;
				}
				return false;
			},
			failureMessage: function(){
				if (this.args && this.args.length === 1){
					this.renderFailureMessage('fieldFailureMessageQuantityExact', [this.args[0]]);
				} else if (this.args && this.args.length === 2 && this.args[0] === null && this.args[1]) {
					this.renderFailureMessage('fieldFailureMessageQuantityMax', [this.args[1]]);
				} else if (this.args && this.args.length === 2 && this.args[1] === null && this.args[0]) {
					this.renderFailureMessage('fieldFailureMessageQuantityMin', [this.args[0]]);
				} else if (this.args && this.args.length === 2 && this.args[1] && this.args[0]) {
					this.renderFailureMessage('fieldFailureMessageQuantityRange', [this.args[0], this.args[1]]);
				} else {
					this.renderFailureMessage('fieldFailureMessageQuantity');
				}
			}
		}),

		'numbers' : KOR.createClass(KOR.Validator.BasicValidation, {
			isValid : function(value){
				var m = value.match(/^[0-9]+$/);
				if(m){
					if(this.args && this.args.length === 1 && this.args[0] === m[0].length){
						return true;
					} else if(this.args && this.args.length === 2 && this.args[0] === null && this.args[1] && m[0].length <= this.args[1]) {
						return true;
					} else if(this.args && this.args.length === 2 && this.args[1] === null && this.args[0] && m[0].length >= this.args[0]) {
						return true;
					} else if(this.args && this.args.length === 2 && this.args[1] && this.args[0] && m[0].length >= this.args[0] && m[0].length <= this.args[1]){
						return true;
					} else if(!this.args){
						return true;
					}
					return false;
				}
				return false;
			},
			failureMessage: function(){
				if(this.args && this.args.length === 1){
					this.renderFailureMessage('fieldFailureMessageNumbersExact', [this.args[0]]);
				} else if (this.args && this.args.length === 2 && this.args[0] === null && this.args[1]) {
					this.renderFailureMessage('fieldFailureMessageNumbersMax', [this.args[1]]);
				} else if (this.args && this.args.length === 2 && this.args[1] === null && this.args[0]) {
					this.renderFailureMessage('fieldFailureMessageNumbersMin', [this.args[0]]);
				} else if (this.args && this.args.length === 2 && this.args[1] && this.args[0]) {
					this.renderFailureMessage('fieldFailureMessageNumbersRange', [this.args[0], this.args[1]]);
				} else {
					this.renderFailureMessage('fieldFailureMessageNumbers');
				}
			}
		}),

		'creditcard' : KOR.createClass(KOR.Validator.BasicValidation, {
			isValid : function(fieldValue){
				return fieldValue.replace(/\D/g, '').match(/^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6011[0-9]{12}|3(?:0[0-5]|[68][0-9])[0-9]{11}|3[47][0-9]{13})$/);
			},
			failureMessage: function(){
				this.renderFailureMessage('fieldFailureMessageCreditCard');
			}
		}),

		'email' : KOR.createClass(KOR.Validator.RegexValidation, {
			pattern: /^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,63}|[0-9]{1,3})(\]?)$/,
			failureMessage: function(){
				this.renderFailureMessage('fieldFailureMessageEmail');
			}
		}),

		'zipcode' : KOR.createClass(KOR.Validator.RegexValidation, {
			pattern: /^\d{5}([\-]\d{4})?$/,
			failureMessage: function(){
				this.renderFailureMessage('fieldFailureMessageZipcode');
			}
		}),

		'words' : KOR.createClass(KOR.Validator.RegexValidation, {
			pattern: /^\w+\s+\w+[\s\w]+$/,
			failureMessage: function(){
				this.renderFailureMessage('fieldFailureMessageWords');
			}
		})
	});

	KOR.Validator.Form = KOR.createClass({

		failureClass: 'kor-failure',
		successClass: 'kor-success',
		formFieldSampleValueClass: 'kor-form-field-sample-value',
		validClass: 'kor-valid',
		invalidClass: 'kor-invalid',

		ajaxSubmit: false,
		validationEvents: 'change blur',

		registerFormFieldListeners: function(ev, el){
			var node = el || $(ev.target);
			if(node && !node.data('initValidation')){
				var ins = node.closest('form').data('validator-instance');
				ins.addKeyupListener(node);
				ins.validateField(node);
			}
		},

		init: function(form, selector){

			var obj = this;

			obj.form = form;
			obj.initSubmit = null;
			obj.selector = selector;

			obj.getFields().each(function(){
				var node = $(this);
				obj.sampleValueFocusEvent(node);
			});

			obj.form.bind('submit', function(){
				return obj.submit();
			});

			$(document).delegate(obj.selector+' [data-validate]', 'focus', function(/* ev */){
				var node = $(this);
				var ins = node.closest('form').data('validator-instance');
				ins.validateField(node, 'silent');
			});
			
			$(document).delegate(obj.selector+' [data-validate]', obj.validationEvents, function (ev) {
				if ($(this).data('initValidation')) return;
				obj.registerFormFieldListeners(ev);
			});
		},

		submit: function(){
			var obj = this;

			$.each(obj.getValidations(), function(i, validation){
				if(!validation.field.hasClass(validation.errorClass)){
					obj.registerFormFieldListeners(false, validation.field);
					obj.removeSampleValue(validation.field);
					validation.render();
				}
			});

			return obj.isFormValid() ? obj.valid() : obj.invalid();
		},

		isAjaxSuccess: function(data){
			data = KOR.decodeJSON(data);
			if(data.error)
				return false;
			else{
				return true;
			}
		},

		ajaxSuccess: function(){
			this.form.removeClass(this.failureClass).addClass(this.successClass);
			this.form.trigger('validator:ajax-success');
		},

		ajaxFailure: function(){
			this.form.removeClass(this.successClass).addClass(this.failureClass);
			this.form.trigger('validator:ajax-failure');
		},

		valid: function(){
			var obj = this;
			if(obj.ajaxSubmit){
				$.ajax({
					type: 'POST',
					url: obj.form.attr('action'),
					data: obj.form.serialize(),
					success: function(data){
						obj.isAjaxSuccess(data) === true ? obj.form.attr('ajaxSuccess') || obj.ajaxSuccess(data) : obj.form.attr('ajaxFailure') || obj.ajaxFailure(data);
					},
					error: function(){
						obj.form.attr('ajaxFailure') || obj.ajaxFailure();
					}
				});
				return false;
			} else {
				return true;
			}
		},

		invalid: function(){
			return false;
		},

		sampleValueFocusEvent: function(node){
			var obj = this;
			if(node.attr('data-sample-value') && (node.val() === '' || node.val() === node.attr('data-sample-value'))){
				node.val(node.attr('data-sample-value')).addClass(obj.formFieldSampleValueClass);
				node.focus(function(){
					obj.removeSampleValue(node);
				});
			}
		},

		removeSampleValue: function(node){
			var obj = this;
			if(node.attr('data-sample-value')){
				node.attr('data-sample-value', '').val('').removeClass(obj.formFieldSampleValueClass);
			}
		},

		addKeyupListener: function(node){
			var obj = this;
			if(!node.data('initValidation')){
				node.data('initValidation', true);
				node.bind('keyup', function(){
					obj.validateField(node);
				});
			}
		},

		isGroupActive: function(field){
			var group = field.attr('data-validation-group');
			if(group){
				var arr = group.split(' ');
				if(!$('[data-validation-group='+ arr[0] +' master]').attr('checked')){
					return false;
				}
			}
			return true;
		},

		isFormValid: function(){
			var obj = this;
			var valid = KOR.detect(obj.getValidations(), function(validation){
				if(!obj.isGroupActive(validation.field)){
					return false;
				}
				return !validation.valid;
			}) ? false : true;
			valid ? obj.form.addClass(obj.validClass).removeClass(obj.invalidClass) : obj.form.addClass(obj.invalidClass).removeClass(obj.validClass);
			return valid;
		},

		getFields: function(){
			return $('[data-validate]', this.form);
		},

		getValidations: function(){
			var obj = this;
			var validations = [];
			obj.getFields().each(function(){
				validations = validations.concat(obj.getValidatorsForField($(this)));
			});
			return validations;
		},

		getValidatorsForField: function(field){
			var obj = this;
			var validationList = [];
			var rules = field.attr('data-validate').split(' ');
			$.each(rules, function(i,rule){
				var args = rule.match(/\(.*?\)/);
				if(args){
					args = args[0];
					rule = rule.replace(args,'');
				}

				if(KOR.Validator.rules[rule]){
					var validations = field.data('validations') || {};
					if(!validations[rule]){
						validations[rule] = new KOR.Validator.rules[rule](field, obj, rule);
						if(args){
							eval('validations[rule].setArguments'+ args);
						}
						validations[rule].renderErrors = false;
						validations[rule].validate();
						if(field.attr('data-sample-value')){
							validations[rule].valid = false;
						}
						field.data('validations', validations);
					}
					validationList.push(validations[rule]);
				}
			});
			return validationList;
		},

		validateField: function(field, silent){
			var obj = this;
			KOR.detect(obj.getValidatorsForField(field), function(validator){
				validator.renderErrors = silent ? false : true;
				validator.validate();
				if(field.attr('data-sample-value')){
					validator.valid = false;
				}
				return !validator.valid;
			});
			obj.isFormValid();
		}
	});

})(jQuery);
