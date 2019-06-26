/*global jQuery:true, intershop:true */
'use strict';
!function (global, utils, $) {
	var ui = utils.namespace('intershop.propertygroups.ui');

	/**
	 * Controller for PropertyGroups and their graphical representation.
	 */
	var Controller = {};

	/**
	 * All registered editors.
	 * @private
	 * @type {Object}
	 */
	Controller.editors = {};
	/**
	 * Register a new editor by its name. If the name is already used by another
	 * editor, it will be overwritten.
	 * @param {String} name unique name of the editor
	 * @param {Function} Editor constructor of the editor
	 */
	Controller.registerEditor = function registerEditor(name, Editor) {
		this.editors[name] = Editor;
	};
	/**
	 * Get an editor by its name. Throws an exception if the editor wasn't found.
	 * @param  {String} name name of the editor
	 * @return {Function} constructor of the editor
	 */
	Controller.getEditor = function getEditor(name) {
		var Editor = this.editors[name];
		if (!Editor) throw 'no editor found for "' + name + '"';

		return Editor;
	};
	
	/**
	 * All registered containers.
	 * @private
	 * @type {Object}
	 */
	Controller.containers = {};
	/**
	 * Register a new container by its name. If the name is already used by another
	 * container, it will be overwritten.
	 * @param  {String} name unique name of the container
	 * @param  {Function} Container constructor of the container
	 */
	Controller.registerContainer = function registerContainer(name, Container) {
		this.containers[name] = Container;
	};
	/**
	 * Get a container by its name. Throws an exception if the container wasn't found.
	 * @param  {String} name name of the container
	 * @return {Function} constructor of the container
	 */
	Controller.getContainer = function getContainer(name) {
		var Container = this.containers[name];
		if (!Container) throw 'no container found for "' + name + '"';

		return Container;
	};

	function hasSubPropertyGroup(json) {
		return !json.editor && json.subPropertyGroup;
	}
	/**
	 * Parse JSON of a PropertyGroup and create an editor or combination
	 * of editors to view/edit its properties.
	 * @param  {JSON} originJSON JSON of a PropertyGroup
	 * @param  {String} [path] Flattened path to this PropertyGroup
	 * @return {Object} PropertyGroup
	 */
	Controller.fromJSON = function fromJSON(originJSON, path) {
		var json = utils.clone(originJSON),
			PropertyGroup = this.getContainer('PropertyGroup'),
			Property = this.getContainer('Property'),
			propertyGroup = new PropertyGroup(json);
		
		if (!path) {
			path = utils.flatten(propertyGroup.id);
		}
		
		json.properties.forEach(function eachProperty(prop) {
			var editor = null,
				subPropertyGroup = null,
				propertyPath = utils.flatten(prop.id, path);
			
			if (hasSubPropertyGroup(prop)) {
				subPropertyGroup = Controller.fromJSON(prop.subPropertyGroup, propertyPath);
			}
			else {
				var Editor = Controller.getEditor(prop.editor.typeID);
				editor = new Editor(prop.editor, propertyPath);
			}
			
			var property = new Property(prop, editor, subPropertyGroup);
			propertyGroup.add(property);
		});

		return propertyGroup;
	};
	/**
	 * Create a JSON representation of an editor or combination of editors.
	 * @param {Object} originJSON original JSON that was used in fromJSON
	 * @param {Object} propertyGroup PropertyGroup
	 * @return {JSON} JSON
	 */
	Controller.toJSON = function toJSON(originJSON, propertyGroup) {
		var json = utils.clone(originJSON);
		
		json.properties.forEach(function eachProperty(prop) {
			var property = propertyGroup.get(prop.id);
			if (hasSubPropertyGroup(prop)) {
				prop.subGroupCheckboxEnabled = property.subGroupCheckboxEnabled;
				prop.subPropertyGroup = Controller.toJSON(prop.subPropertyGroup, property.subPropertyGroup);
			}
			else {
				prop.editor = property.editor.toJSON(prop.editor);
			}
		});
	
		return json;
	};

	ui.Controller = ui.Controller || Controller;
}(window, intershop.propertygroups.utils, jQuery);
