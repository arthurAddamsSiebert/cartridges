(function($) {

	KOR.treeview = function(selector, parameters) {
		return KOR.Treemenu.getInstanceOf(selector, parameters);
	};

	KOR.Treemenu = KOR.createClass(KOR.UI, KOR.DragDropMixIn, {

		NAME: 'treemenu',

		/*
		 * @protected
		 */
		init: function(selector, mixin) {
			var obj = this;
			obj._super(selector, mixin);
			//obj.dropActionAfter();
		},

		/*
		 * @public
		 */
		removeSelector: '.remove',

		/*
		 * @public
		 */
		addSelector: '.new',

		/*
		 * @public
		 */
		content: '<span class="new">[*]</span><span class="remove">[x]</span> list item',

		/*
		 * @public
		 */
		viewSelector: '.view',

		/*
		 * @public
		 */
		toggle: function(node, ev) {
			var obj = this;
			if (node.css('display') == 'none') {
				$(ev.target).html('[-]');
			} else {
				$(ev.target).html('[+]');
			}
			node.toggle(300);
		},

		/*
		 * @public
		 */
		remove: function(node, ev) {
			var obj = this;
			node.hide(300, function() {
				if (node.hasClass('last')) {
					node.prev('li').addClass('last');
				}
				if (node.siblings().length == 0) {
					var ul = node.parent('ul');
					ul.prevAll('span.view').remove();
					ul.remove();
				} else {
					node.remove();
				}
				node.trigger(obj.NAME+':removed', node);
			});
		},

		/*
		 * @public
		 */
		add: function(node, ev) {
			var obj = this;
			var trigger = $(ev.target);
			var content = obj.getContent();
			if (node.length > 0) {
				var str = '<li>' + content + '</li>';
				node.prepend(str);
			} else {
				var str = '<li class="last">' + content + '</li>';
				trigger.before('<span class="view">[-]</span>');
				trigger.parent('li').append('<ul>' + str + '</ul>');
			}
			node.trigger(obj.NAME+':added', node);
		},

		/*
		 * @public
		 */
		dragEventPrefix: "treemenu",

		/*
		 * @public
		 */
		dragDirection: "vertical",

		/*
		 * @public
		 */
		dragLevel: 'parent',

		/*
		 * @protected
		 */
		registerEvents: function() {
			var obj = this;
			obj._super()
			$(document).delegate(obj.selector + ' ' + obj.viewSelector, 'click', $.proxy(obj, 'viewClickHandler'));
			$(document).delegate(obj.selector + ' ' + obj.viewSelector, obj.NAME+':toggleview', $.proxy(obj, 'viewHandler'));
			$(document).delegate(obj.selector + ' ' + obj.removeSelector, 'click', $.proxy(obj, 'removeClickHandler'));
			$(document).delegate(obj.selector + ' ' + obj.removeSelector, obj.NAME+':remove', $.proxy(obj, 'removeHandler'));
			$(document).delegate(obj.selector + ' ' + obj.addSelector, 'click', $.proxy(obj, 'addClickHandler'));
			$(document).delegate(obj.selector + ' ' + obj.addSelector, obj.NAME+':add', $.proxy(obj, 'addHandler'));
		},

		/*
		 * @protected
		 */
		viewClickHandler: function(ev) {
			ev.preventDefault();
			ev.stopPropagation();
			var obj = this;
			var node = $(ev.currentTarget);
			node.trigger(obj.NAME+':toggleview', obj);
		},

		/*
		 * @protected
		 */
		viewHandler: function(ev, data) {
			var obj = this;
			obj.toggle($(ev.target).closest('li').children('ul'), ev);
		},

		/*
		 * @protected
		 */
		removeClickHandler: function(ev) {
			var obj = this;
			var node = $(ev.currentTarget);
			node.trigger(obj.NAME+':remove', obj);
		},

		/*
		 * @protected
		 */
		removeHandler: function(ev, data) {
			var obj = this;
			obj.remove($(ev.target).parent('li'), ev);
		},

		/*
		 * @protected
		 */
		addClickHandler: function(ev) {
			var obj = this;
			var node = $(ev.currentTarget);
			node.trigger(obj.NAME+':add', obj);
		},

		/*
		 * @protected
		 */
		addHandler: function(ev, data) {
			var obj = this;
			obj.add($(ev.target).nextAll('ul'), ev);
		},

		/*
		 * @protected
		 */
		/*dropActionAfter: function(ev) {
			var obj = this;
			$.each($(obj.selector + "," + obj.selector + " ul"), function(index, ul) {
				var lis = $(ul).children('li');
				var count = lis.length;
				$.each(lis, function(index, li) {
					$(li).removeClass('last');

					if (index + 1 == count) {
						$(li).addClass('last');
					}
				});
			});
		},*/

		/*
		 * @protected
		 */
		getContent: function() {
			var obj = this;
			var t = $.type(obj.content);
			if (t == 'funtion') {
				return obj.content.call(obj);
			}
			return obj.content;
		}

	});

})(jQuery);
