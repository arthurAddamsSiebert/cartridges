var designer = designer || {};

/*
 * Design View palette functionality
 */
designer.palette = {

	/*
	 * get content from a given URL and add it to the target element
	 * used to get the according content for a selected palette tab or a selected object (e.g. directory)
	 */
	getContent: function(targetElement, contentURL) {
		if (contentURL) {
			$.ajax({
				url: contentURL,
				success: function(data) {
					targetElement.html(data);
					// necessary to init tooltips that might be part of the added content
					$('.tooltip').powerTip({
						applyThisOnPrevious: true,
						mouseOnToPopup: true,
						smartPlacement: false,
						placement: 'e'
					});
				}
			});
		}
	},

	/*
	 * Design View palette handler functions
	 */
	paletteSelectionHandler: function(event) {
		var selectedPalette = $(this);
		selectedPalette.addClass('active').siblings().removeClass('active');
		var paletteContent = $('#component-palette-content');
		if (!paletteContent.children('#'+selectedPalette.data('content-id')).length) {
			var paletteItem = jQuery('<div id="'+selectedPalette.data('content-id')+'" class="component-palette-content-item"></div>');
			paletteContent.append(paletteItem);
			designer.palette.getContent(paletteItem, selectedPalette.data('content-url'));
		}
		paletteContent.children().removeClass('active').filter('#'+selectedPalette.data('content-id')).addClass('active');
	},

	componentGroupToggleHandler: function(event) {
		$(this).toggleClass('table_opened').next().toggle();
	},

	directoryBrowseHandler: function(event) {
		designer.palette.getContent($(this).closest('.component-palette-content-item'), $(this).data('content-url'));
	},

	videoPlayHandler: function(event) {
		$(this).closest('.component-tile').toggleClass('playing');
		var video = $(this).siblings('video')[0];
		if (video.paused) {
			video.play();
		} else {
			video.pause();
		}
	},
	
	
	/* 
	* handles filtering of component palette
	* 
	* original source: https://github.com/raysrashmi/list-search
	*/	
	filterItems: function(event) {
		var $search_div = $(this).parents('[data-role="list-search"]');
		var search_field_selector = '[data-role="search-field"]';
		var terms = $(this).val().toLowerCase();
		
		if (terms.length >= 1) {
			$(this).siblings('button.btn-remove-search-palette').show();
		} else {
			$(this).siblings('button.btn-remove-search-palette').hide();
		}
		
		if (terms.length >= 2) {
			$search_div.find('.component-tileset').each(function() {
				$(this).find(search_field_selector).each(function() {
					if ($(this).text().toLowerCase().indexOf(terms) !== -1) {
						$(this).parents('.component-tile-container, .component-tileset').show();
					} else {
						$(this).parents('.component-tile-container').hide();
					}
				});
				if ($(this).find(search_field_selector + ':visible').length === 0) {
					$(this).hide();
				}
			});
		} else {
			$search_div.find('.component-tileset, .component-tile-container').show();
		}
	},
	
	/*
	 * handles clearing filter of component palette
	 */	
	removeFilterString: function(event) {
		$(this).siblings('input.search-palette-input').val('').keyup().focus();
	}
};

/*
 * initialize (event binding) Design View palette functionality on page load
 */
$(function() {
	// bind the component palette selection handling to the tabs
	$('#component-palette-tabs').on('click', 'li', designer.palette.paletteSelectionHandler);
	// initially trigger a click event on the first tab marked 'active' or the first tab to get the fitting palette content
	if ($('#component-palette-tabs li.active').length) {
		$('#component-palette-tabs li.active:first').trigger('click');
	} else {
		$('#component-palette-tabs li:first').trigger('click');
	}
	// bind necessary click handler to palette content
	$(document).on('click', '.component-tileset-title', designer.palette.componentGroupToggleHandler);
	$(document).on('click', '.directory', designer.palette.directoryBrowseHandler);
	$(document).on('click', '.video-play-button', designer.palette.videoPlayHandler);
	// filter event binding
	$(document).on('keyup', 'input.search-palette-input', designer.palette.filterItems);
	$(document).on('click', 'button.btn-remove-search-palette', designer.palette.removeFilterString);
});
