'use strict';
!function (global) {
	var utils = namespace('intershop.propertygroups.utils');
	
	/**
	 * Create a namespace without overwriting existing objects.
	 * @param  {String} path path of the namespace using '.' as separators
	 * @return {Object} the requested namespace
	 */
	function namespace(path) {
		var parts = path.split('.'),
			last = global,
			current;

		while(parts.length > 0) {
			current = parts.shift();
			last = last[current] = last[current] || {};
		}

		return last;
	}
	utils.namespace = utils.namespace || namespace;
	
	/**
	 * Create a name for a property by flattening its path
	 * @param  {String} node Name of the current path node
	 * @param  {String} [path] Existing path (if undefined, node is the root)
	 * @return {String} the flattened path
	 */
	function flatten(node, path) {
		if (!path) {
			return node + ':';
		}
		
		function endsWith(s, c) {
			return s.indexOf(c, s.length - c.length) !== -1;
		}
		
		if (endsWith(path, ':')) {
			return path + node;
		}
		return path + '.' + node;
	}
	utils.flatten = utils.flatten || flatten;
	
	/**
	 * Deep-clone an object and its properties
	 * @param  {Object} obj Object to clone
	 * @return {Object} cloned object
	 */
	function clone(obj) {
		return $.extend(true, {}, obj);
	}
	utils.clone = utils.clone || clone;
}(window);
