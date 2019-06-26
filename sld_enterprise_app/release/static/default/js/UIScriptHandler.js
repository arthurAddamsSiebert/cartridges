var cpoIsIgnoredKey = (function($) {
	/**
	 * Keys that will not trigger change events
	 */
	var ignoredKeyMap =
			{ALT: 18,
			CAPS_LOCK: 20,
			COMMAND: 91,
			COMMAND_LEFT: 91, // COMMAND
			COMMAND_RIGHT: 93,
			CONTROL: 17,
			DOWN: 40,
			END: 35,
			ESCAPE: 27,
			HOME: 36,
			INSERT: 45,
			LEFT: 37,
			MENU: 93, // COMMAND_RIGHT
			PAGE_DOWN: 34,
			PAGE_UP: 33,
			RIGHT: 39,
			SHIFT: 16,
			TAB: 9,
			UP: 38,
			WINDOWS: 91 // COMMAND 
			};
	
	var ignoredKeys = [];
	for (var keyName in ignoredKeyMap) {
		ignoredKeys.push(ignoredKeyMap[keyName]);
	}
	
	return function(keyCode) {
		return jQuery.inArray(keyCode, ignoredKeys) !== -1;
	}
})();

/**
 * UI Script handler for all simple form elements usable for multiple and single mode
 */
cpoScriptHandlers.defaultHandler = function($parameterUI, parameterInfo, $) {
	if (!parameterInfo.multiple) {
		$parameterUI.find(':input').bind('change cut paste', function(){
			$parameterUI.trigger('cpo-change');
		});
		
		$parameterUI.find('input[type="text"], textarea').bind('keydown', function(event) {
			if (!cpoIsIgnoredKey(event.which)) {
				$parameterUI.trigger('cpo-change');
			}
		});
	} else {
		$parameterUI.find('select').bind('cpo-multi-value-change', function() {	  
			$parameterUI.trigger('cpo-change');
		});
		
		// Radio button and checkbox groups
		$parameterUI.find('input[type="checkbox"], input[type="radio"]').bind('change', function() {
			$parameterUI.trigger('cpo-change'); 
		});
	}
};

/**
 * UI Handler for tinyMCE based configuration parameter editor
 */
cpoScriptHandlers.html = function($parameterUI, parameterInfo, $) {	
	
	/**
	 * event handler for textarea (disabled editor mode)
	 */
		$parameterUI.find('textarea').bind('keydown', function(event) {
		if (!cpoIsIgnoredKey(event.which)) {
			$parameterUI.trigger('cpo-change');
		}
	});
	
	/**
	 * Helper function used to initialize event handlers after a tinyMCE editor has been added
	 */
	var executeOnTinyMCEEditorReady = function(callback, editorMatcher) {
		// we have to handle two cases
		// 1. The editor already exists
		for (editorId in tinyMCE.editors) {
			if (editorMatcher(tinyMCE.editors[editorId])) {
				callback(tinyMCE.editors[editorId]);
				return;
			}
		}
		
		// 2. The editor will be added later
		var addEditorHandler = function(eventParams){
			if (editorMatcher(eventParams.editor)) {
				callback(eventParams.editor);
			}
		}
		tinyMCE.on('AddEditor', addEditorHandler);
	};
	
	var editorMatcher = function(editor) {
		return editor.getElement() != null
			&& jQuery.contains($parameterUI.get(0), editor.getElement());
	}
	
	var editorInit = function(editor) {
		editor.on('change', function(){
			$parameterUI.trigger('cpo-change');
		});
	};
	
	executeOnTinyMCEEditorReady(editorInit, editorMatcher);
}