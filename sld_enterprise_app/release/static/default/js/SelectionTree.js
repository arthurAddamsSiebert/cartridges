if (SelectionTree == undefined)
{
var SelectionTree = {
	"addNode" : function (nodeID, parent) {
		var node = SelectionTree.Nodes[nodeID] = {
			"id" : nodeID,
			"parent" : parent,
			"children" : []
		}
		if (parent != null) {
			parent.children.push(node);
		}
	},
	"updateSelection" : function (node, checked, disabled, mode) {
		var e = document.getElementById(node.id);
		if (e != null) {
			e.checked = checked;
			e.disabled = disabled;
		}
		if (checked) {
			for (i in node.children) {
				this.updateSelection(node.children[i], checked, true);
			}		
		} else {
			if (mode == "toggleAll") {
				for (i in node.children) {
					this.updateSelection(node.children[i], checked, false, mode);
				}
			} else {
				for (i in node.children) {
					var c = document.getElementById(node.children[i].id);
					if (c != null) {
						c.disabled = false;
					}
				}
			}
		}
	},
	"toggleSelection" : function (element, change) {
		if (!element.disabled) {
			var checked = change ? !element.checked : element.checked;
			this.updateSelection(SelectionTree.Nodes[element.id], checked, false, "toggleAll");
		};
	},
	"updateConstraints" : function (element, change) {
		if (!element.disabled) {
			var checked = change ? !element.checked : element.checked;
			this.updateSelection(SelectionTree.Nodes[element.id], checked, false);
		};
	},
	"toggleSelectAll" : function () {
		if (this.allSelected) {
			for (node in this.Nodes) {
				var e = document.getElementById(this.Nodes[node].id);
				if (e != null) {
					e.checked = false;
					e.disabled = false;
				}
			}
			this.allSelected = false;
		} else {
			var rootNode = this.Nodes["root"]
			for (node in rootNode.children) {
				this.updateSelection(rootNode.children[node], true, false);
			}
			this.allSelected = true;
		}
	},
	//sets the the given paramValue to a hidden input field with the given paramName in the form with formname.
	//if there is no such input field for the given paramName, adds a new hidden input field.
	"setSubmitParamValue" : function (formname, paramName, paramValue){
		if(paramName && paramValue){
			var dynamicForm = document.forms[formname];
			var paramHiddenInput = dynamicForm.elements[paramName];
			if( ! paramHiddenInput){
				paramHiddenInput = document.createElement('input');
				paramHiddenInput.setAttribute('name', paramName);
				paramHiddenInput.setAttribute('type', 'hidden');
				dynamicForm.appendChild(paramHiddenInput);
			}
			paramHiddenInput.value= paramValue;
		}
	},
	"setDynamicFormSubmittionParams" : function (formname, parametersMap){
		if(parametersMap && formname){
			for (var paramName in parametersMap) {
				this.setSubmitParamValue(formname, paramName, parametersMap[paramName]);
			}
		}
	},
	"allSelected" : false,
	"Nodes" : {
		"root" : {
			"id" : "root",
			"parent" : null,
			"children" : []
		}
	}
};
};