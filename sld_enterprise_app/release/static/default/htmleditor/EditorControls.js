    function createEditorControls(config){
    	var controls = document.getElementById("controls"+config.id);
    	if (controls != null)
    		return;
    	var editor = document.getElementById(config.id+"_parent");
    	if (editor == null) {
    		editor = document.getElementById(config.id);
    		if (editor==null)
    			editor=document.getElementsByName(config.id)[0];
    	} 	
    	
    	var parent = editor.parentNode;
    	var p = document.createElement("p");
    	p.id = "controls"+config.id;
    	var link = document.createElement("a");
    	link.innerHTML = config.labels.basic;
    	config.enabled=true; // ensure that the serialized config is enabled 
    	link.href="javascript:setBasicEditor("+serializeConfig(config)+");";
    	link.id="setbasic"+config.id;
    	link.className="editor_mode_trigger";
    	p.appendChild(link);
    	link = document.createElement("a");
    	link.innerHTML = config.labels.advanced;
    	link.href="javascript:setAdvancedEditor("+serializeConfig(config)+");";
    	link.id="setadvanced"+config.id;
    	link.className="editor_mode_trigger";
    	p.appendChild(link);
    	link = document.createElement("a");
    	link.href="javascript:setNoEditor("+serializeConfig(config)+");";
    	link.innerHTML = config.labels.noEditor;
    	link.onclick = "javascript:setNoEditor("+serializeConfig(config)+");";
    	link.id="remove"+config.id;
    	link.className="editor_mode_trigger";
    	p.appendChild(link);
    	if (editor.nextSibling != null){
    		parent.insertBefore(p,editor.nextSibling);
    	}else{
    		parent.appendChild(p);
    	}
    }

	function serializeConfig (config) {
		return "{preferredMode:'"+config.preferredMode +"',"+
   				  "id:'"+config.id +"',"+ 
   				  "enabled:"+config.enabled +","+ 
   				  "uri:'"+config.uri +"',"+
	              "media:'"+config.media +"',"+
	              "links:'"+config.links +"',"+
	              "styleSheet:'"+config.styleSheet +"',"+
	              "templateURL:'"+config.templateURL +"',"+
	              "language:'"+config.language +"',"+   
	              "labels:{"+
    				"advanced:'"+config.labels.advanced +"',"+
    				"basic:'"+config.labels.basic +"',"+
    				"noEditor:'"+config.noEditor +"'"+ 
    			"}}";
	}

	function setActiveControl(control, id) {
		if (document.getElementById("setbasic"+id) != null) {
			document.getElementById("setbasic"+id).className="editor_mode_trigger";
			document.getElementById("setadvanced"+id).className="editor_mode_trigger";
			document.getElementById("remove"+id).className="editor_mode_trigger";
			var active = document.getElementById(control+id); 
			active.className+=" active";
		}
	}

	function removeEditorControls(id){
		var editorControls = document.getElementById("controls"+id);
		if (editorControls != null){
			var area = document.getElementById(id);
    		if (area==null)
    			area=document.getElementsByName(id)[0];
    		var parent = area.parentNode;
			parent.removeChild(editorControls);	
		}
	}

	function removeEditor(id) {
		var instance = tinyMCE.get(id);
		if (instance) {
			// check if the DOM element still exists
			if (!document.getElementById(instance.editorContainer)) {
				tinyMCE.remove(instance);
			}
			tinyMCE.execCommand('mceRemoveControl', false, id);
	} 
	} 

	function removeSizeCookie(id) {
		document.cookie= "TinyMCE_"+id+"_size" + "=; expires=Fri, 21 Dec 1976 04:31:24 GMT;";
		
	}
	
	function getCookie(name) {
		var cookies = document.cookie.split("; ");
  		for (var i=0; i < cookies.length; i++)  {
    	    var crumb = cookies[i].split("=");
    		if (name == crumb[0]) 
      			return unescape(crumb[1]);
  		}
  		return null;
	}
	
	function setCookie(name, value) {
		document.cookie = name+"="+value+";";
	}
	
	function setEditorGlassPane(id) {
		var editor = $("#"+id).prev();
		if (!editor) return;
		var glassPaneId = "TinyMCE_"+id+"_GlassPane";
		var editorGlassPane = $("#"+glassPaneId);
		if (editorGlassPane.length == 0) {
			editorGlassPane = $('<div id="' + glassPaneId + '" class="disabledEditor"></div>');
		}
		editorGlassPane.css({
			top: editor.offset().top,
			left: editor.offset().left,
			width: editor.width(),
			height: editor.height()
		});
		editor.parent().append(editorGlassPane);
	}
	
	function disableEditor(id){
		setEditorGlassPane(id);
	}

	function enableEditor(id) {
		var glassPaneId = "TinyMCE_"+id+"_GlassPane";
		var editorGlassPane = document.getElementById(glassPaneId);
		if (editorGlassPane != null)
			editorGlassPane.style.left = "-1000px";
	}
	
	function obtainCookie(name, value){
		var result = getCookie(name);
		return result!=null?result:value;
	}
	
	function getCookieName(id) {
		return "TinyMCE_"+id+"_Mode";
	}
	
	function setNoEditor(config) {
		removeEditor(config.id);
		removeSizeCookie(config.id);
		setCookie(getCookieName(config.id),"None");
		if (!config.enabled)
   			removeEditorControls(config.id);
		else
			createEditorControls(config);
		var handler = createDialogModeHandler();
		if (handler != null)	
			handler();
		setActiveControl("remove",config.id);
		
	}
	
	function setAdvancedEditor(config) {
		removeEditor(config.id);
		createAdvancedEditor(config);
		setCookie(getCookieName(config.id),"Advanced");
	}
	
	function setBasicEditor(config){
		removeEditor(config.id);
		createBasicEditor(config);
		setCookie(getCookieName(config.id),"Basic");
	}

	function setEditorEnabled(config) {
		if (config.enabled == true) {
			enableEditor(config.id);
			createEditorControls(config);
		} else {
			disableEditor(config.id);	
			removeEditorControls(config.id);
		}
	}
	
	var oldDialogHandler = null; 
	function createDialogModeHandler() {
		if (window.parent!=null) {          			
      		var dialogFrame = window.parent.document.getElementById('form-dialog-content'); 
      		if (dialogFrame !=null) {
   	  			if (oldDialogHandler == null) {
   	  				var handler = getOnLoadWrapper(dialogFrame);
   	  				oldDialogHandler = handler;
   	  			} else 
   	  				handler = oldDialogHandler;
   	  			var result = function() {
   	  				handler();
   					// cannot use setOnLoadWrapper here 'cause the handler may 
   					// allready be wrapped 
   					if (isIe())
   						dialogFrame.onreadystatechange = handler;
   					else 
   						dialogFrame.onload = handler;
   	  			}
     			removeOnLoadWrapper(dialogFrame);
				return 	result;
			}
		}
		return null;
	}

	function setupDialogModeHandler(id, ed) {
		var onVisualAidHandler = createDialogModeHandler();
		if (onVisualAidHandler != null) {
  			ed.onVisualAid.add(onVisualAidHandler);
			ed.onPostRender.add(function(ed) {
				var resize = document.getElementById(id+"_resize");
				var onResize = tinymce.dom.Event.add(ed.id + '_resize', 'mousedown', function(e) {
					var onDocument = tinymce.dom.Event.add(document,"mouseup", function() {
						tinymce.dom.Event.remove(document,"mouseup", onDocument);
						window.setTimeout(onVisualAidHandler,1);
					});
				});
				
				var old =  ed.windowManager.open;
				var newOpen = function (f, p) {
					new ContextFixer(old, ed.windowManager, f, p).execute();
					window.setTimeout(onVisualAidHandler,1);
				};
				ed.windowManager.open=newOpen;
				
				var oldClose =  ed.windowManager.close;
				var newClose = function (win, id) {
					new ContextFixer(oldClose, ed.windowManager, win, id).execute();
					window.setTimeout(onVisualAidHandler,1);
				};
				ed.windowManager.close=newClose;
			});
		}
	}
	
	function setupSubmitIfDirty(t)
	{
		t.on('submit', function(t)						
			{
				if (t.initialized) 
				{			
					if (t.isDirty())
					{
						t.save();
						t.isNotDirty = 1;
					}
				} 
			}
		);
	}
	
	

   	function createEditor(config) {
   		var elem = document.getElementById(config.id);
   		if (elem == null || elem.id == "") {// ie's getElementById finds elements by name as well
   			elem = document.getElementsByName(config.id)[0];
   			elem.id = config.id;
   		}
   		if (config.preferredMode == null || config.preferredMode == "")
   			config.preferredMode = "advanced";
   		var cookieName = getCookieName(config.id); 
   		//get cookie
   		var mode = obtainCookie (cookieName,config.preferredMode).toLowerCase();
   		if (mode=="advanced")
   			setAdvancedEditor(config);
   		else if (mode =="basic")
   			setBasicEditor(config);
   		else {
   			setNoEditor(config);
   		}
   	}
