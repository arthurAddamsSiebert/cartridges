(function (parent, frame) {
	'use strict';
	
	/**
	 * @namespace bridge
	 */
	var bridge = window.bridge = {},
		bucket = {};

	/**
	 * Creates or returns an already existing bucket for the named bridge.
	 * Initialization functions of the clients will be queued and the bridge function of the parent stored.
	 * 
	 * @private
	 *
	 * @param   {string} name Name of the bridge
	 * @returns {object}      New or already existing bucket for the named bridge
	 */
	function getBucket(name) {
		return bucket[name] || (bucket[name] = {
			queue: []
		});
	}

	/**
	 * Register a named bridge (this will overwrite bridges with the same name).
	 * Already connected callbacks are executed immediately.
	 * 
	 * @param {string}   name     Name of the bridge
	 * @param {function} bridgeFn Function of the bridge, first parameter is the frame element
	 *
	 * @example
	 * bridge.register('foo', function (iframe) {
	 *     return {
	 *         bar: function bar(foobar) {
	 *             return foobar;
	 *         }
	 *     };
	 * });
	 *
	 */
	bridge.register = function register(name, bridgeFn) {
		var bucket = getBucket(name);
		bucket.bridge = bridgeFn;

		// initialize all requested bridges
		var client;
		while (bucket.queue.length > 0) {
			client = bucket.queue.shift();
			client.init(bucket.bridge(client.ref));
		}
	};

	/**
	 * Connect to a named bridge using the frame reference and a callback.
	 * If the bridge wasn't registered yet, callbacks are queued.
	 *
	 * @private
	 * 
	 * @param {string}      name  Name of the bridge
	 * @param {HTMLElement} frame Frame element of the child
	 * @param {function}    init  Initialization function, first parameter is the registered bridge function
	 */
	bridge.connect = function connect(name, frame, init) {
		var bucket = getBucket(name);

		if (bucket.bridge) {
			// bridge is set, initialize
			init(bucket.bridge(frame));
		}
		else {
			// bridge not set, queue bridge initialization
			bucket.queue.push({
				ref: frame,
				init: init
			});
		}
	};

	/**
	 * Initialize a named bridge.
	 * If the bridge wasn't registered yet, the callback will be queued.
	 *
	 * @param {string}   name Name of the bridge
	 * @param {function} init Initialization function, first parameter is the registered bridge function
	 * 
	 * @example
	 * bridge.init('foo', function init(bridge) {
	 *     var bar = bridge.bar('barfoo');
	 * });
	 */
	bridge.init = function init(name, callback) {
		if (!frame || !parent) throw 'no parent frame found';
		if (!parent.bridge) throw 'no parent bridge found';

		parent.bridge.connect(name, frame, function _init(bridgeRef) {
			callback(bridgeRef);
		});
	};
})(window.parent, window.frameElement);
