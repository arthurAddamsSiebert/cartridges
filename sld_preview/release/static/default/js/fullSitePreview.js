(function($){
	// some common selectors
	var settingsPanel = $('#sfe-fullsite-preview-bar'),
		storefrontIFrame = $('#siteContent'),
		viewableArea = $('#viewable-area');
	
	function togglePreviewSettings(){
		$('#sfe-preview-fullsite-toggle-settings').toggleClass('active');
		$('#sfe-fullsite-preview-parameter-container-tippbox').toggle();
	}
	function togglePreviewUrl(){
		$('#sfe-preview-fullsite-toggle-url').toggleClass('active');
		$('#sfe-fullsite-preview-url-container-tippbox').toggle();
	}
	function togglePreviewPastDatesDisabledError(){
		$('#sfe-fullsite-preview-past-dates-disabled-error').toggle();
		sizeSiteFrame();
		displayViewableArea();
	}
	
	$(document).delegate('#sfe-preview-fullsite-toggle-settings', 'click', togglePreviewSettings);
	$(document).delegate('#sfe-fullsite-preview-parameter-container-close', 'click', togglePreviewSettings);
	$(document).delegate('#sfe-preview-fullsite-toggle-url', 'click', togglePreviewUrl);
	$(document).delegate('#sfe-fullsite-preview-url-close', 'click', togglePreviewUrl);
	$(document).delegate('#sfe-fullsite-preview-past-dates-disabled-error-close', 'click', togglePreviewPastDatesDisabledError);
	
	/**
	 * START window resizing
	 */
	function resizeHandler (ev){
		sizeSiteFrame();
		displayViewableArea();
	}
	
	function sizeSiteFrame (){
		var newHeight = $(window).height() - settingsPanel.outerHeight();
		storefrontIFrame.height(newHeight);
		viewableArea.height(newHeight);
	}
	function displayViewableArea(){
		$('.viewable-area-display').html(viewableArea.height() + " x " + viewableArea.width());
	}
	

	$(window).bind('resize', resizeHandler);
	/**
	 * END window resizing
	 */
	
	// helper function to resize window to a correct inner size in different browsers
	function innerResizeWindow(innerWidth, innerHeight) {
		if (self.innerWidth) {
			myInnerWidth = self.innerWidth;
			myInnerHeight = self.innerHeight;
		}
		else if (document.documentElement && document.documentElement.clientWidth) {
			myInnerWidth = document.documentElement.clientWidth;
			myInnerHeight = document.documentElement.clientHeight;
		}
		else if (document.body) {
			myInnerWidth = document.body.clientWidth;
			myInnerHeight = document.body.clientHeight;
		}
		else {
			return;
		}
		adjustWidth = innerWidth - myInnerWidth;
		adjustHeight = innerHeight - myInnerHeight;
		window.resizeBy(adjustWidth, adjustHeight);
	}

	
	$(document).ready(function(){
		// start preview mode first time with current display size -> maximize the preview mode browser window 
		if ($('#sfe-display-width').html()==''){
			window.moveTo(screen.availTop,screen.availLeft);
			window.resizeTo(screen.availWidth, screen.availHeight);
			//calculate iframe height
			if (self.innerHeight) {
				siteContentHeight = self.innerHeight - settingsPanel.height();
			}
			else if (document.documentElement && document.documentElement.clientHeight) {
				siteContentHeight = document.documentElement.clientHeight - settingsPanel.height();
			}
			else if (document.body) {
				siteContentHeight = document.body.clientHeight - settingsPanel.height();
			}
			else {
				siteContentHeight = screen.height - settingsPanel.height();
			}
			
			storefrontIFrame.height(siteContentHeight-1);
			storefrontIFrame.width('100%');
			$('#sfe-display-height').html('max');
			$('#sfe-display-width').html('max');

			sizeSiteFrame();
			displayViewableArea();
		// start preview mode with display size settings
		} else {
			// get iframe size from preview setting layer
			var displayWidth = parseInt($('#sfe-display-width').html());
			var displayHeight = parseInt($('#sfe-display-height').html());
			
			/***resize window***/
			//width received from setting panel too large
			if (displayWidth > screen.availWidth){
				displayWidth = screen.availWidth;
				var winPosY=window.screenTop!=undefined?window.screenTop:window.screenY;
				window.moveTo(screen.availTop, winPosY);
			}
			
			//resize window to display width, necessary to get the correct height for setting panel
			window.resizeTo(displayWidth, 600);
			
			//calculate necessary browser height 
			var windowHeight = displayHeight+settingsPanel.height();
			//calculated browser height too large
			if (windowHeight > screen.availHeight){
				var winPosX=window.screenLeft!=undefined?window.screenLeft:window.screenX;
				window.moveTo(winPosX,screen.availLeft);
				window.resizeTo(displayWidth, screen.availHeight);
				
			// use width and height received from setting panel
			} else {
				innerResizeWindow(displayWidth, windowHeight);
			}
			/***end resize window***/
			
			storefrontIFrame.height(displayHeight-1);
			storefrontIFrame.width('100%');
			
			sizeSiteFrame();
			displayViewableArea();
		}
	});
	
})(jQuery);