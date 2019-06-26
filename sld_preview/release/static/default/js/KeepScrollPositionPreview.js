/**
 * Copyright (C) 2013 Intershop Communications AG, all rights reserved.
 *
 * Saves the and restores the scroll position.
 *
 * Also it scrolls confirmation messages (elements with class 'error_icon') into view.
 *
 * Scroll position is stored in cookies.
 */
'use strict';
(function($) {
	var $window = $(window);

	/**
	 * Copied from jQuery.position and modified to support specifying parent
	 * The .position() method allows us to retrieve the current position of an element relative to the parent.
	 * Contrast this with .offset(), which retrieves the current position relative to the document.
	 *
	 * @param {jQuery} $child
	 * @param {jQuery} $parent
	 * @returns {{top: number, left: number}}
	 */
	var position = function position($child, $parent) {
		var offset,
			parentOffset = {
				top: 0,
				left: 0
			};

		// fixed elements are offset from window (parentOffset = {top:0, left: 0}, because it is it's only offset parent
		if ($.css($child[0], 'position') === 'fixed') {

			// we assume that getBoundingClientRect is available when computed position is fixed
			offset = $child[0].getBoundingClientRect();
		} else {

			// Get correct offsets
			offset = $child.offset();
			if (!$.nodeName($parent[0], 'html')) {
				parentOffset = $parent.offset();
			}

			// Add offsetParent borders
			parentOffset.top  += $.css($parent[0], 'borderTopWidth', true);
			parentOffset.left += $.css($parent[0], 'borderLeftWidth', true);
		}

		// Subtract parent offsets and element margins
		// note: when an element has margin: auto the offsetLeft and marginLeft
		// are the same in Safari causing offset.left to incorrectly be 0
		return {
			top:  offset.top  - parentOffset.top - $.css($child[0], 'marginTop', true),
			left: offset.left - parentOffset.left - $.css($child[0], 'marginLeft', true)
		};
	};

	/**
	 * Restores the scroll position of a $container from cookie. Scrolls to error messages instead, if there is one.
	 *
	 * @param {jQuery} $container The container to restore the scroll position for. When omitted, window is used
	 */
	window.restoreScrollPosition = function restoreScrollPosition($container) {
		$container || ($container = $window);

		var scrollLeft = $.cookie('scrollPositionLeft'),
			scrollTop  = $.cookie('scrollPositionTop'),
			scrollToExplicitPos, $scrollHere, childPosition, notCompletelyInView;
		if (scrollLeft && scrollTop) {
			$container.scrollLeft(scrollLeft);
			$container.scrollTop(scrollTop);
		}

		// these values are only valid through a single page reload
		// so remove all cookies now
		$.cookie('scrollPositionLeft', null);
		$.cookie('scrollPositionTop', null);

		// if there are any elements, that have the class 'error_icon'
		// (like confirmation messages) scroll to the first one afterwards
		$scrollHere = $('.error_icon:visible:not(.no_confirmation)');

		// Only overwrite "scrollHere" if no errors are occurred and explicit anchor with class "scroll Here" exists
		if ($scrollHere.length === 0) {
			scrollToExplicitPos = $('.scrollToHere');
			if (scrollToExplicitPos.length > 0) $scrollHere = scrollToExplicitPos;
		}

		if ($scrollHere.length > 0) {
			// only scroll to the first one if there are multiple
			$scrollHere = $scrollHere.first();
			childPosition = position($scrollHere, $container);

			// check whether it is actually not completely inside viewport
			notCompletelyInView =
					(childPosition.top > $container.height() ||
					childPosition.left > $container.width() ||
					childPosition.top < 0 ||
					childPosition.left < 0);

			if (notCompletelyInView) {
				$container.scrollTo($scrollHere, 500);
			}
		}
	};

	/**
	 * Stores the current scroll position within the $container to cookie
	 *
	 * @param {jQuery} $container The container to store the scroll position for. When omitted, window is used
	 */
	window.saveScrollPosition = function saveScrollPosition($container) {
		$container || ($container = $window);

		$.cookie('scrollPositionLeft', $container.scrollLeft());
		$.cookie('scrollPositionTop',  $container.scrollTop());
	};

})(jQuery);
