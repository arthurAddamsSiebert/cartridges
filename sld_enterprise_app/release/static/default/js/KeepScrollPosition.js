/**
 * Copyright (C) 2012 Intershop Communications AG, all rights reserved.
 * 
 * Saves the scroll position upon page unload and restores it after page reload. To 
 * determine whether the user stayed on the same page or went to another, the breadcrumb
 * text is compared.
 * 
 * Also it scrolls confirmation messages (elements with class 'error_icon') into view.
 * 
 * Breadcrumb text and scroll positions are stored in cookies.
 */

(function($) {

	var getBreadcrumb = function() {
		var breadcrumb = $("#breadcrumb");
		
		if (breadcrumb.length === 0) {
			return null;
		}		
		
		var breadcrumbText = breadcrumb.text();
		
		//remove all newlines and collapse all remaining whitespace into single spaces
		breadcrumbText = breadcrumbText.replace(/(\r\n|\n|\r)/gm," ").replace(/(\t|\s)+/gm, " ");
	
		return breadcrumbText;
	},
	$window = $(window);
	
	window.restoreScrollPosition = function(){
		var breadcrumb = getBreadcrumb();		
						
		if (breadcrumb !== null) {					
	        if ($.cookie("scrollPositionBreadcrumb") === breadcrumb) {
	        	var scrollLeft = $.cookie("scrollPositionLeft");
	        	var scrollTop  = $.cookie("scrollPositionTop");
	        	if (scrollLeft !== null && scrollTop !== null) {
	        		$window.scrollLeft(scrollLeft);
	        		$window.scrollTop(scrollTop);
	        	}	            	
	        }	        	       	       
	    }	 
		
		// these values are only valid through a single page reload
		// so remove all cookies now
		$.cookie("scrollPositionBreadcrumb", null);				
		$.cookie("scrollPositionLeft", null);
		$.cookie("scrollPositionTop", null);
		
		// if there are any elements, that have the class 'error_icon' 
		// (like confirmation messages) scroll to the first one afterwards
		var scrollHere = $('.error_icon:visible:not(.no_confirmation)');		
		
		// Only overwrite "scrollHere" if no errors are occurred and explicit anchor with class "scroll Here" exists
		if (scrollHere.length === 0) {
			var scrollToExplicitPos = $('.scrollToHere');
			if (scrollToExplicitPos.length > 0) scrollHere = scrollToExplicitPos;
		}
		
		if (scrollHere.length > 0) {
			// only scroll to the first one if there are multiple
			var scrollHere = $(scrollHere.get(0));
			var offset = scrollHere.offset();
			
			// check whether it is actually not completely inside viewport
			
			var notCompletelyInView = (offset.top < $window.scrollTop())
					     || (offset.left < $window.scrollLeft())
					     || (offset.top + scrollHere.height() > $window.scrollTop() + $window.height())
					     || (offset.left + scrollHere.width() > $window.scrollLeft() + $window.width());			
			
			if (notCompletelyInView) {		
				$.scrollTo(scrollHere, 500);
			}
		}	
	};

	$(function() {
		restoreScrollPosition();	
	});

	$window.unload(function() {
		var breadcrumb = getBreadcrumb();
				
		if (breadcrumb !== null) {		
			$.cookie("scrollPositionBreadcrumb", breadcrumb);				
			$.cookie("scrollPositionLeft", $window.scrollLeft());
			$.cookie("scrollPositionTop",  $window.scrollTop());
		}
	});
	
})(jQuery);
