<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
$.extend(KOR.templates, {
productAltImagesTemplate: '\
{% if(this.images && this.images.length>1) { %}\
<ul class="ish-productAltImages-list">\
{% this.images.uEach(function(image){ %}\
<li class="ish-productAltImages-list-item">\
<a href="javascript:void(false)"><img {% if (image.height){%}height="{{image.height}}"{%}%} {% if (image.width){%}width="{{image.width}}"{%}%} data-view-value="{{image.view}}" data-type="{{image.size}}" src="{{image.src}}" /></a>\
</li>\
{% }) %}\
</ul>\
{% } %}',
productMainImageMovieTemplate: '\
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" {% if (this.image.imageTypeHeight){%}height="{{this.image.imageTypeHeight}}"{%}%} {% if (this.image.imageTypeWidth){%}width="{{this.image.imageTypeWidth}}"{%}%} data-type="{{this.image.size}}">\
<param name="movie" value="{{this.image.src}}" />\
<!--[if !IE]>-->\
<object type="application/x-shockwave-flash" data="{{this.image.src}}" {% if (this.image.imageTypeHeight){%}height="{{this.image.imageTypeHeight}}"{%}%} {% if (this.image.imageTypeWidth){%}width="{{this.image.imageTypeWidth}}"{%}%}>\
<!--<![endif]-->\
<param name="flashVars" value="{{this.image.src}}" />\
<!-- alt content -->\
<img \
src="{{this.image.src}}" data-test="true" {% if (this.image.view){%}data-view-value="{{this.image.view}}"{%}%} {% if (this.image.view){%}data-type="{{this.image.size}}" {%}%} {% if (this.image.imageTypeHeight){%}height="{{this.image.imageTypeHeight}}"{%}%} {% if (this.image.imageTypeWidth){%}width="{{this.image.imageTypeWidth}}"{%}%}\
/>\
<!--[if !IE]>-->\
</object>\
<!--<![endif]-->\
</object>',
productMainImageTemplate: '\
<img \
src="{{this.image.src}}" class="ish-product-image" data-test="true" {% if (this.image.view){%}data-type="{{this.image.size}}" {%}%} {% if (this.image.imageTypeHeight){%}height="{{this.image.imageTypeHeight}}"{%}%} {% if (this.image.imageTypeWidth){%}width="{{this.image.imageTypeWidth}}"{%}%}\
/>',
productListPriceTemplate: '\
<span>\
{% if(this.list) { %}\
{% if(this.sale) { %}<span class="kor-product-list-price-text">Regularly</span> {% } %}\
<span class="kor-product-list-price-value price\
{% if (!this.sale) { %} kor-product-final-price{% } %}">\
{% if(this.list.min && this.list.max) { %}\
{{this.list.min}} - {{this.list.max}}\
{% } else if (this.list.regular) { %}\
{{this.list.regular}}\
{% } %}\
</span>\
{% } %}\
</span>',
productSalePriceTemplate: '\
<span>{% if(this.sale) { %}\
Sale {% if(this.sale.min && this.sale.max) { %}\
{{this.sale.min}} - {{this.sale.max}}\
{% } else if (this.sale.regular) { %}\
{{this.sale.regular}}\
{% } %}\
{% } %}</span>',
productEnhancedImageLinkTemplate: '\
{% if(this.image) { %}\
<a class="kor-enhanced-image-link" href="{{this.image.src}}">Enhanced Image</a>\
{% } %}',
validationErrorTemplate: '<div class="{{this.errorClass}}" role="alertdialog">\
<div class="kor-field-error-message-contents">\
<ul class="kor-field-error-list">\
<li class="kor-field-error-list-item">{{this.errorMessage}}</li>\
</ul>\
</div>\
</div>',
flashErrorTemplate: '<div class="kor-form-error-message">\
<div class="kor-form-error-message-contents" role="alert">\
<ul class="kor-form-error-list">\
<li class="kor-form-error-list-item">{{ this.errorList[0] }}</li>\
</ul>\
</div>\
</div>',
modalTemplate: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.modalClass}}"></div>',
overlayTemplate: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}} kor-{{this.NAME}}">{{this.html}}</div>',
overlayImageTemplate: '<img src="{{this.url}}" />',
menuOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="{{this.overlayHeaderClass}}">\
<div class="{{this.closeClass}}"><% {out.write(localizeISText("application.overlay.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %></div>\
</div>\
<div class="{{this.overlayContentClass}}">{{this.html}}</div>\
</div>',
arrowTipOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}} kor-{{this.NAME}}">\
<div class="kor-arrow-overlay-content">{{this.html}}</div>\
<div class="{{this.arrowClass}}"></div>\
</div>',
dialogOverlayTemplate: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="{{this.overlayHeaderClass}}">\
<div class="kor-header-contents">\
<div class="{{this.closeClass}} kor-control"><% {out.write(localizeISText("application.overlay.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %></div>\
</div>\
</div>\
<div class="{{this.overlayContentClass}}">\
<div class="kor-content-contents">\
{{this.html}}\
</div>\
</div>\
</div>',
dialogOverlayTemplateWithIframe: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="{{this.overlayHeaderClass}}">\
<div class="kor-header-contents">\
<div class="{{this.closeClass}} kor-control"><% {out.write(localizeISText("application.overlay.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %></div>\
</div>\
</div>\
<div class="{{this.overlayContentClass}}">\
<div class="kor-content-contents">\
<iframe width="{{this.iframeWidth}}" height="{{this.iframeHeight}}" src={{this.iframeURL}}></iframe>\
</div>\
</div>\
</div>',
minicartOverlayTemplate: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="kor-minicart {{this.overlayClass}} kor-{{this.NAME}}">{{this.html}}</div>'
});<% printFooter(out); %>