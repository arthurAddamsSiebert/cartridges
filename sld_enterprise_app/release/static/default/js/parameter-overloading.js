var cpoManager = (function($) {
	var manager = {};

	manager.init = function($containerForm) {
		$containerForm.find('.cpo-action-start-revert').bind('click', function() {
			$containerForm.find('.cpo-revert-buttons').show();
			$containerForm.find('.cpo-non-revert-buttons').hide();

			$('#cpo-sfe-revert-buttons').show();
			$('#cpo-sfe-non-revert-buttons').hide();

			$containerForm.find('.cpo-state[value="true"]').closest('.cpo-parameter').find('.cpo-revert-select').each(function() {
				var revertSelect = this;
				this.checked = false;
				$(revertSelect).css('visibility', 'visible');
			});

			manager.updateMessage($containerForm);
		});

		$containerForm.find('.cpo-action-cancel-revert').bind('click', function() {
			$containerForm.find('.cpo-revert-select').css('visibility', 'hidden');
			$containerForm.find('.cpo-revert-buttons').hide();
			$containerForm.find('.cpo-non-revert-buttons').show();

			$('#cpo-sfe-revert-buttons').hide();
			$('#cpo-sfe-non-revert-buttons').show();

			manager.updateMessage($containerForm);
		});
	};

	manager.updateMessage = function($containerForm) {
		
		var designViewButtonBar= '#sfe-panel-edit-controls .sfe-button-bar';
		
		if ($containerForm.find('.cpo-revert-buttons').is(':visible')) {
			$containerForm.find('.cpo-message-revert').show();
			$containerForm.find('.cpo-message-overloading').hide();
			$containerForm.find('.cpo-message-inheriting').hide();
		} else {
			$containerForm.find('.cpo-message-revert').hide();

			if ($containerForm.find('.cpo-state[value="true"]').size() > 0) {
				$containerForm.find('.cpo-message-overloading').show();
				$containerForm.find('.cpo-message-inheriting').hide();
				// enable revert button only if not permanently disabled, because pagelet is not editable
				$containerForm.find('.cpo-action-start-revert:not(.cpo-disabled)').attr('disabled', false);
			} else {
				$containerForm.find('.cpo-message-overloading').hide();
				$containerForm.find('.cpo-message-inheriting').show();
				$containerForm.find('.cpo-action-start-revert').attr('disabled', true);
			}
		}
		//trigger event also for design view button bar
		$(designViewButtonBar).trigger('cpo-change');
	}

	manager.createUIParameter = function($parameterUI) {
		var result = {};

		result.$parameterUI = $parameterUI;
		result.$overloadingFlag = $parameterUI.find('.cpo-state');
		result.$stateIcon = $parameterUI.find('.cpo-state-icon');
		result.$containerForm = $parameterUI.closest('form');

		result.isOverloading = function() {
			return this.$overloadingFlag.val() == 'true';
		};

		result.setOverloading = function(overloading) {
			this.$overloadingFlag.val(overloading ? 'true' : 'false');
			this.updateOverloadingSwitch();
		};

		result.updateOverloadingSwitch = function() {
			this.$stateIcon.css('visibility',
				this.isOverloading() ? 'visible' : 'hidden');

			manager.updateMessage(this.$containerForm);
		};

		result.init = function() {
			var thisParameter = this;

			this.$parameterUI.bind('cpo-change', function() {
				thisParameter.setOverloading(true);
				if (thisParameter.$containerForm.find('.cpo-revert-buttons').is(':visible')) {
					thisParameter.$parameterUI.find('.cpo-revert-select').css('visibility', 'visible');
				}
			});

			this.updateOverloadingSwitch();
		};

		return result;
	}

	return manager;
})(jQuery);