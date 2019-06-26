/**
 * All methods listed below can be called directly on an instance or via $('selector').sticky('methodName', arg1, arg2, argN).
 * @name sticky
 * @class
 * @memberOf! jQuery.fn
 */
(function($, window) {
	'use strict';

	/** name of the plugin */
	var pluginName = 'sticky',
		/**
		 * Default configuration.
		 * @class
		 * @memberOf jQuery.fn.sticky~
		 */
		defaults = {
            /** @lends jQuery.fn.sticky.defaults# */
			/** additional offset from the top */
			fixedOffset: 0,
			/** prefix of renamed fields in the cloned element */
			inputPrefix: 'sticky_copy_of_',
			/** css class that will be added to original element */
			cssOriginal: 'sticky-original',
			/** css class that will be added to cloned element */
			cssClone: 'sticky-clone',
			/** css class that will be added when element floats */
			cssFloating: 'floating'
		};

    /**
     * Stores element-reference, merges options with default values, triggers init().
     * @constructor
     * @class
     * @private
     * @name Plugin
     * @memberOf jQuery.fn.sticky~
     * @returns void
     * @param {Object} el element
     * @param {Object} options configuration of this sticky instance
     */
	function Plugin(el, options) {
		var base = this,
			$el = $(el),
			$window = $(window),
			isFloating = false,
			$original, $placeholder, $forEl;

		/**
		 * initializes the plugin, cloning the floating area, renaming fields
		 */
		base.init = function init() {
			base.options = $.extend({}, defaults, options);

			$original = $el.is('table') && $el.children('thead').length ? $el.children('thead') : $el;

			var forId = $el.data('for');
			if (forId) $forEl = $('#' + forId);
			if (!$forEl || !$forEl.length) $forEl = $el;

			$placeholder = $original.clone().addClass(base.options.cssClone);
			$original.addClass(base.options.cssOriginal);

			// prefix all cloned elements that have [id] or [name]
			$placeholder.find('[id],[name]').each(function() {
				var $this = $(this),
					id = $this.attr('id'),
					name = $this.attr('name');

				if (id) $this.attr('id', base.options.inputPrefix + id);
				if (name) $this.attr('name', base.options.inputPrefix + name);
			});

			// add floating element after original
			$original.after($placeholder);

			$window.scroll(base.update);
			$window.resize(base.update);

			$window.trigger('resize');
		};

		/**
		 * triggers the floating check and updates widths on the cloned element
		 */
		base.update = function update() {
			base._toggle();
			base._updateWidth();
		};

		/**
		 * get position of the element
		 * @private
		 * @returns {Object} top and left as offset, start and end as position when to start/stop floating
		 */
		base._position = function _position() {
			var forElOffset = $forEl.offset(),
				forElHeight = $forEl.height(),
				offset = $placeholder.offset(),
				height = $placeholder.height(),
				top = 0,
				start, end;

			// determine start of floating
			if (offset.top < forElOffset.top) {
				start = offset.top;
			} else {
				start = forElOffset.top;
			}

			// determine end of floating
			if (offset.top + height > forElOffset.top + forElHeight) {
				end = offset.top + height;
			} else {
				end = forElOffset.top + forElHeight;
			}
/*
			// add up heights of previous floating elements
			$('.' + base.options.cssOriginal + '.' + base.options.cssFloating).each(function addFloatingHeights() {
				var $this = $(this);
				// stop if the current element is reached
				if ($this.is($original)) return false;
				top += $this.height();
			});
*/
			return {
				top: top,
				left: offset.left,
				start: start - top,
				end: end - top - height
			};
		};

		/**
		 * checks if element should float (based on start/end received from _position)
		 * and toggles the floating state by css
		 * @private
		 */
		base._toggle = function _toggle() {
			var scrollTop = $window.scrollTop() + base.options.fixedOffset,
				scrollLeft = $window.scrollLeft(),
				position = base._position();

			if ((scrollTop > position.start) && (scrollTop < position.end)) {
				// show floating header
				$placeholder.addClass(base.options.cssFloating);
				$original.addClass(base.options.cssFloating);

				position = base._position();

				$original.css({
					'top': position.top + base.options.fixedOffset,
					'left': position.left - scrollLeft
				});

				isFloating = true;
			} else if (isFloating) {
				// hide floating header
				$original.removeClass(base.options.cssFloating);
				$original.css({
					top: 'auto',
					left: 'auto'
				});
				$placeholder.removeClass(base.options.cssFloating);
	
				isFloating = false;
			}
		};

		/**
		 * updates widths of cloned element
		 * @private
		 */
		base._updateWidth = function _updateWidth() {
			if ($original.is('thead')) {
				if (!isFloating) return;

				// Copy cell widths
				$original.find('th').each(function(index, el) {
					var $this = $(el),
						$cell = $placeholder.find('th').eq(index),
						width = $cell.width();

					if (width > 0) $this.removeAttr('width').width(width);
				});
			}

			if (isFloating) {
				$original.width($placeholder.width());
			} else {
				$original.width('');
			}
		};

		base.init();
	}

	/**
	 * Sticky plugin
	 * @params {Object} options see defaults
	 * @returns {jQuery} element
	 */
	$.fn[pluginName] = function(options) {
		return this.each(function() {
			if (!$.data(this, 'plugin_' + pluginName)) {
				$.data(this, 'plugin_' + pluginName, new Plugin(this, options));
			}
		});
	};
})(jQuery, window);
