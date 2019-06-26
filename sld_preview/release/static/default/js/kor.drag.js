KOR.DragDropMixIn = {

 /*
  * @public
  */
    dragControllerSelector: ".drag-controller",

 /*
  * @public
  */
    dragActiveClass: "dragging",

 /*
  * @public
  */
    dragAfterClass: "drag-indicate-after",

 /*
  * @public
  */
    dragAfterSelector: ".drag-indicate-after",

 /*
  * @public
  */
    dragBeforeClass: "drag-indicate-before",

 /*
  * @public
  */
    dragBeforeSelector: ".drag-indicate-before",

 /*
  * @public
  */
    dragSelector: "li",

 /*
  * @public
  */
    dragEventPrefix: "drag",

 /*
  * @public
  */
    dragLevel: false,

 /*
  * @public
  */
    dragDirection: "horizontal",

    registerEvents: function() {
        var obj = this;
        obj._super()

		$(document.body).delegate(obj.selector + " " + obj.dragSelector, obj.dragEventPrefix + ":item-dropped", $.proxy(obj, "dropAction"));
        $(document.body).delegate(obj.selector + " " + obj.dragSelector + " " + obj.dragControllerSelector, "mousedown", $.proxy(obj, "downAction"));
    },

	clearEvents: function() {
        $(document.body).undelegate(this.selector + " " + this.dragSelector, "mouseup", $.proxy(this, "upAction"));
        $(document.body).undelegate(this.dragSelector, "mousemove", $.proxy(this, "dragHandler"));
		$('body').die('mouseup', $.proxy(this, "invalidHandler"))
	},

    dragIt: function(e, di, dir, target) {
        var obj = this;
        /*
		var allowed = obj.allowedTargets.map(function(i, v) {
            if (v == e.currentTarget) {
                return v
            }
        }).length;
		*/
        if ($(e.currentTarget).hasClass('allowed-drag-target') && target.parents(obj.selector) && !target.hasClass("drag-indicate") && di.has(target).length < 1) {
			obj.dragElement.addClass(obj.dragActiveClass)
            $(obj.dragBeforeSelector + ", " + obj.dragAfterSelector).removeClass(obj.dragBeforeClass + " " + obj.dragAfterClass);
			obj.replacedElement = target;
            if (dir == "before") {
                target.addClass(obj.dragBeforeClass);
				if(obj.relativeDir() == 'after'){
					obj.replacedElement = target.prev()
				}
            } else {
                target.addClass(obj.dragAfterClass);
				if(obj.relativeDir() == 'before'){
					obj.replacedElement = target.next()
				}
            }
            e.stopPropagation();
        }else{
			this.clearClasses()
		}
    },

    drop: function(e, target) {
        var obj = this;

        target.removeClass(obj.dragActiveClass)
        if ($(obj.dragBeforeSelector).length > 0 && $(obj.dragBeforeSelector)[0] != target[0]) {
            $(obj.dragBeforeSelector).before(target);
        } else if ($(obj.dragAfterSelector).length > 0 && $(obj.dragAfterSelector)[0] != target[0]) {
            $(obj.dragAfterSelector).after(target);
        }
        $(obj.dragBeforeSelector + ", " + obj.dragAfterSelector).removeClass(obj.dragBeforeClass + " " + obj.dragAfterClass);

        target.trigger(obj.dragEventPrefix + ":drag-dropped", target);
    },

    downAction: function(e) {
        if (e.target != e.currentTarget) {
            return;
        }

        var obj = this;
        obj.dragElement = $(e.currentTarget).closest(obj.dragSelector);

        obj.ignore = ':not(.' + obj.dragActiveClass + ' ' + obj.dragSelector + ')'

        $(document.body).delegate(obj.selector + " " + obj.dragSelector, "mouseup", $.proxy(obj, "upAction"));
        $(document.body).delegate(obj.dragSelector, "mousemove", $.proxy(obj, "dragHandler"));
		$('body').live('mouseup', $.proxy(obj, "invalidHandler"))

        obj.dragElement.addClass(obj.dragActiveClass);
        obj.allowedTargets = $(obj.dragSelector + obj.ignore, obj.selector);

        if (obj.dragLevel == 'parent') {
            obj.allowedTargets = obj.dragElement.siblings()
        }
		obj.allowedTargets.addClass('allowed-drag-target')
		obj.dragElement.removeClass('allowed-drag-target')

        document.body.focus();

        obj.selectfunction = document.onselectstart || document.onmousedown;
        document.onselectstart = function() {
            return false;
        };
        document.onmousedown = function() {
            return false;
        };

    },

    upAction: function(e) {
        e.stopPropagation();
        var obj = this;
		var target = $(e.currentTarget)
		if(target.hasClass('allowed-drag-target')){
			$(e.currentTarget).trigger(obj.dragEventPrefix + ":item-dropped", obj);
			obj.clearEvents();
		}else{
			this.invalidHandler()
		}
    },

    dragHandler: function(e) {
        var obj = this;
		var target = $(e.currentTarget);
        if (obj.dragDirection == "horizontal") {
            moveDir = function() {
                var mid = target.offset().left + (target.width() / 2);
                if (e.pageX - $(document).scrollLeft() < mid) {
                    return "before";
                } else {
                    return "after";
                }
            };
			obj.relativeDir = function() {
                var mid = obj.dragElement.offset().left + (obj.dragElement.width() / 2);
                if (e.pageX - $(document).scrollLeft() < mid) {
                    return "before";
                } else {
                    return "after";
                }
            };
        } else {
            moveDir = function() {
                var mid = $(e.currentTarget).offset().top + ($(e.currentTarget).height() / 2);
                if (e.pageY - $(document).scrollTop() < mid) {
                    return "before";
                } else {
                    return "after";
                }
            };
			obj.relativeDir = function() {
                if (e.pageY - $(document).scrollTop() < obj.dragElement.offset().top) {
                    return "before";
                } else {
                    return "after";
                }
            };
        }
        obj.dragIt.apply(obj, [e, obj.dragElement, moveDir(), $(e.currentTarget)]);
    },

	invalidHandler: function(e){
		this.clearClasses()
		this.clearEvents();
	},

	clearClasses: function(){
		$("." + this.dragBeforeClass +", ."+ this.dragAfterClass +", ."+ this.dragActiveClass).removeClass(this.dragBeforeClass +" "+ this.dragAfterClass +" "+ this.dragActiveClass)
	},

    dropAction: function(e) {
        e.stopPropagation();
        var obj = this;

        if ($(obj.dragBeforeSelector + ", " + obj.dragAfterSelector).length > 0) {
            obj.drop.apply(obj, [e, obj.dragElement]);
            obj.dropActionAfter(e);
        }else{
			obj.clearClasses()
		}
        document.onselectstart = obj.selectfunction;
        document.onmousedown = obj.selectfunction;
    },

    dropActionAfter: function(e) {

    }
};
