<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"editing/Modules", null, "3");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("ApplicationURL"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "getdefaultapplicationurl", new TagParameter[] {
new TagParameter("ApplicationURL","ApplicationURL"),
new TagParameter("sourceSite",getObject("CurrentDomain")),
new TagParameter("targetSite",getObject("TargetSite")),
new TagParameter("previewWebform",getObject("PreviewWebform")),
new TagParameter("contentRepositoryUUID",getObject("ContentRepository:UUID"))}, 5); %><% } %><% processOpenTag(response, pageContext, "geturi", new TagParameter[] {
new TagParameter("URLInformation","URI"),
new TagParameter("StandardPath","URLStandardPath"),
new TagParameter("URL",url(true,(new URLPipelineAction(context.getFormattedValue("EditView-Dispatch",null)))))}, 12); %><% {try{executePipeline("EditView-GetPermissionMap",java.util.Collections.emptyMap(),"EditViewPermission");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 13.",e);}} %><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><% {out.write(localizeISText("StorefrontPreview.StorefrontPreview.title","",null,null,null,null,null,null,null,null,null,null,null));} %></title><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/PlaceholderHead", null, "21");} %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-migrate-1.2.1.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-ui-1.10.3.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/jquery.cookie.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/jquery.dotimeout-1.0.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/jquery.scrollTo-1.4.2.js<% out.print("</waplacement>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "30");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "31");} %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/popupmenu/jquery.popupmenu.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>bridge/bridge.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>pageselection.js<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>flyoutdialog.js<% out.print("</waplacement>"); %><script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/KeepScrollPositionPreview.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/kor.base.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/kor.drag.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/kor.treemenu.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/kor.overlay.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/kor.validator.js"></script>
<script type="text/javascript">
(function($){
KOR.namespace('KOR.SFE.URLS').application = "<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
KOR.SFE.URLS.editing = "<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEditing-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
KOR.SFE.URLS.backofficeEditing = "<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEditing-BackOffice",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
KOR.SFE.URLS.moveAssignment = "<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewEditingActions-MoveAssignment",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
KOR.SFE.URLS.applicationReset = "<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("EditView-CleanStart",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetSiteUUID",null),context.getFormattedValue(getObject("TargetSite:DomainID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
KOR.SFE.storefrontCSS = "<%=context.getFormattedValue(context.webRoot(),null)%>/css/designer.storefront.css";
KOR.SFE.channelID = "todo";
KOR.SFE.contentRepoUUID = "<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
KOR.SFE.cookiePath = "<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("URLStandardPath"),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("URI:ServerGroup"),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("URI:DomainName"),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("URI:LangID"),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("URI:TemplateSet"),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("URI:Currency"),null) + context.getFormattedValue("/",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>";
//externalized strings object
$.extend(KOR.namespace('KOR.extStrings'), {
fieldFailureMessageRequired: "<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.ThisFieldIsRequired",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
fieldFailureInvalidPassword: "<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.InvalidPassword",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
});
//localized templates
$.extend(KOR.namespace('KOR.templates'), {
validationErrorTemplate: '<span class="{{this.errorClass}}">{{this.errorMessage}}</span>',
modalTemplate: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.modalClass}}"></div>',
overlayTemplate: '<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}} kor-{{this.NAME}}">{{this.html}}</div>',
overlayImageTemplate: '<img src="{{this.url}}" />',
menuOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="{{this.overlayHeaderClass}}">\
<div class="{{this.closeClass}}"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Close.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></div>\
</div>\
<div class="{{this.overlayContentClass}}">{{this.html}}</div>\
</div>',
arrowTipOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}} kor-{{this.NAME}}">\
<div class="kor-arrow-overlay-content">{{this.html}}</div>\
<div class="{{this.arrowClass}}"></div>\
</div>',
loginDialogOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="sfe-dialog-wrapper">\
<h1><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.SessionTimeout",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></h1>\
<a class="sfe-dialog-close kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Close.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>\
<div class="sfe-generic-wrapper">\
<div class="sfe-dialog-content">\
<p class="sfe-info"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.LoggedOutForSecurity",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></p>\
<% URLPipelineAction action2 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ProcessLogin",null),context.getFormattedValue("WFS",null),context.getFormattedValue("SLDSystem",null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue("-",null)))),null));String site2 = null;String serverGroup2 = null;String actionValue2 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ProcessLogin",null),context.getFormattedValue("WFS",null),context.getFormattedValue("SLDSystem",null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue("-",null)))),null);if (site2 == null){  site2 = action2.getDomain();  if (site2 == null)  {      site2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup2 == null){  serverGroup2 = action2.getServerGroup();  if (serverGroup2 == null)  {      serverGroup2 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-ProcessLogin",null),context.getFormattedValue("WFS",null),context.getFormattedValue("SLDSystem",null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue("-",null)))),null));out.print("\"");out.print(" id=\"");out.print("sfe-login-dialog-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue2, site2, serverGroup2,true)); %>\
<label for="reenter-password"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Password.label",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>&nbsp;<span class="sfe-required">*</span></label>\
<input autocomplete="off" name="LoginForm_Password" type="password" data-validate="required">\
<input type="hidden" name="LoginForm_Login" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>\
<input type="hidden" name="LoginForm_RegistrationDomain" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>\
<input type="hidden" name="submit" value="Logon"/>\
<% out.print("</form>"); %>\
</div>\
</div>\
<div class="sfe-generic-wrapper">\
<ul class="sfe-button-bar">\
<li><a class="kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Cancel.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a></li>\
<li><a class="sfe-primary" id="sfe-login-dialog-button" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.OK.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a></li>\
</ul>\
</div>\
</div>\
</div>',
errorDialogOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="sfe-dialog-wrapper">\
<h1><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.ApplicationError",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></h1>\
<a class="sfe-dialog-close kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Close.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>\
<div class="sfe-generic-wrapper">\
<div class="sfe-dialog-content">\
<p class="sfe-error"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.StorefrontEditingInformationMissing",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></p>\
</div>\
</div>\
<div class="sfe-generic-wrapper">\
<ul class="sfe-button-bar">\
<li><a class="kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Cancel.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a></li>\
<li><a class="sfe-primary sfe-reset-button" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Reset.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a></li>\
</ul>\
</div>\
</div>\
</div>',
errorCreationDialogOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="sfe-dialog-wrapper">\
<div class="sfe-generic-wrapper">\
<div class="sfe-dialog-content" data-default-message="<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.ContentManagementError.text",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>">\
<div class="sfe-error-box">\
<a class="sfe-dialog-close kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Close.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>\
<p></p>\
</div>\
</div>\
</div>\
</div>\
</div>',
errorPreviewDialogOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}}">\
<div class="sfe-dialog-wrapper">\
<h1><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.PreviewConfigurationError",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></h1>\
<a class="sfe-dialog-close kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Close.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>\
<div class="sfe-generic-wrapper">\
<div class="sfe-dialog-content">\
<p class="sfe-error"><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.ConfigurationNotTransferred",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></p>\
</div>\
</div>\
<div class="sfe-generic-wrapper">\
<ul class="sfe-button-bar">\
<li><a class="kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Cancel.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a></li>\
<li><a class="sfe-primary sfe-reset-button" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Reset.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a></li>\
</ul>\
</div>\
</div>\
</div>',
dialogIframeOverlayTemplate: '\
<div data-comp-type="{{this.NAME}}" data-comp-id="{{this.uId}}" class="{{this.overlayClass}} sfe-detail-dialog">\
<div class="sfe-dialog-wrapper">\
<h1 id="sfe-dialog-title"></h1>\
<a class="sfe-dialog-close kor-overlay-close" href="."><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Close.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></a>\
<div class="sfe-generic-wrapper">\
<div class="sfe-dialog-content-padding">\
<div class="sfe-dialog-content">\
<iframe name="sfe-dialog-iframe" id="sfe-dialog-iframe" src="" frameborder="0"/>\
<p class="sfe-detail-dialog-loader"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/loading.gif" alt="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Loading.message",null)),null) + context.getFormattedValue("...",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>" width="16" height="11" /><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Loading.message",null)),null) + context.getFormattedValue("...",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></p>\
</div>\
</div>\
</div>\
</div>\
</div>',
loaderTemplate: '<p class="sfe-loading"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/loading.gif" alt="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Loading.message",null)),null) + context.getFormattedValue("...",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>" width="16" height="11" /><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Loading.message",null)),null) + context.getFormattedValue("...",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></p>',
dataLinkTemplate: '\
{% if (this.categoryLink) {%}\
<div class="sfe-category sfe-right">\
<a href="{{this.categoryLink}}" class="sfe-button sfe-icon sfe-data-view-button"><span><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.EditCategoryInformation.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></span></a>\
</div>\
{%}%}\
{% if (this.productLink) {%}\
<div class="sfe-product sfe-right">\
<a href="{{this.productLink}}" class="sfe-button sfe-icon sfe-data-view-button"><span><% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.EditProductInformation.link",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %></span></a>\
</div>\
{%}%}',
componentOverlayTemplate: '<div class="sfe-highlight-overlay"\
style="position:absolute; display:none; z-index:10; top:0; left:0; height:0; width:0;\
background-color: <%=context.getFormattedValue("#",null)%>319F9E;\
border: 1px dashed <%=context.getFormattedValue("#",null)%>000000;\
box-sizing: border-box;\
box-shadow: 0 0 8px rgba(0, 0, 0, 0.3);"></div>',
componentInspectorTemplate: '<div class="sfe-inspector-overlay sfe-inspector-top" \
style="position:absolute; display:none; z-index:2; top:0; left:0; background: #1489bc; height:2px; width:2px;"></div>\
<div class="sfe-inspector-overlay sfe-inspector-right" style="position:absolute; display:none; z-index:2; top:0; left:0; background: #1489bc; height:2px; width:2px;"></div>\
<div class="sfe-inspector-overlay sfe-inspector-bottom" style="position:absolute; display:none; z-index:2; top:0; left:0; background: #1489bc; height:2px; width:2px;"></div>\
<div class="sfe-inspector-overlay sfe-inspector-left" style="position:absolute; display:none; z-index:2; top:0; left:0; background: #1489bc; height:2px; width:2px;"></div>',
componentTreeTemplate: '{%var obj=this; $.each(this.componentTree ,function(i,tree){ %}\
{% tree.renderObject.treeId = tree.renderObject.id %}\
{% obj.componentDetailObject[tree.id] = tree.renderObject; %}\
<div class="sfe-generic-wrapper">\
<ul class="sfe-component-tree">\
<li data-type="{{this.displayType}}" {%if(this.renderObject.pageletAssignmentUUID){%}data-assignment-id="{{this.renderObject.pageletAssignmentUUID}}"{%}%}>\
<a class="sfe-container-tree-level-link" data-component-id="{{this.id}}" data-component-tree-id="{{this.renderObject.treeId}}" href="javascript:void(false)" title="{{this.displayType}}"><span {%if(this.renderObject.pageletAssignmentUUID){%}class="drag-controller"{%}%}></span><span {% if(this.children && this.children.length){ %}class="sfe-toggle-view sfe-closed"{%}%}></span><span class="sfe-content-icon"></span><span class="sfe-content-displayName">{{this.displayName}}</span></a>\
{% if(this.children && this.children.length){ %}\
{{obj.componentTreeItemTemplate.uTemplate({\
ins: obj,\
componentTree: tree}) }}\
{% } %}\
</li>\
</ul>\
</div>\
{%})%}',
componentTreeItemTemplate: '\
<ul>\
{% var obj=this; $.each(this.componentTree.children, function(){ %}\
{% if (this && this.renderObject) {%}\
{% this.renderObject.treeId = (this.renderObject.pageletAssignmentUUID || \'\' ) + \'-\' + this.renderObject.id+\'-\'+obj.componentTree.renderObject.treeId %}\
{% obj.ins.componentDetailObject[this.id] = this.renderObject %}\
<li data-type="{{this.displayType}}" {%if(this.renderObject.isFallback === "true"){%}class="fallback"{%}%} {%if(this.renderObject.pageletAssignmentUUID){%}data-assignment-id="{{this.renderObject.pageletAssignmentUUID}}"{%}%}>\
<a class="sfe-container-tree-level-link" data-component-id="{{this.id}}" data-component-tree-id="{{this.renderObject.treeId}}" href="javascript:void(false)" title="{{this.displayType}}"><span {%if(this.renderObject.pageletAssignmentUUID){%}class="drag-controller"{%}%}></span><span {% if(this.children && this.children.length){ %}class="sfe-toggle-view sfe-closed"{%}%}></span><span class="sfe-content-icon"></span><span class="sfe-content-displayName">{{this.displayName}}</span></a>\
{% if(this.children && this.children.length){ %}\
{{obj.ins.componentTreeItemTemplate.uTemplate({\
ins: obj.ins,\
componentTree: this}) }}\
{% } %}\
</li>\
{% } %}\
{% }) %}\
</ul>'
});
})(jQuery);
</script><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>opensans.css<% out.print("</waplacement>"); %><link href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/enterprisesite.css" rel="stylesheet" >
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/reset.css" rel="stylesheet" >
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/designer.css" rel="stylesheet" ><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledStyleSheet.isml", null, "244");} %><!--[if IE]>
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/css/ie.css" rel="stylesheet" >
<![endif]-->
<link rel="icon" type="image/png" href="<%=context.getFormattedValue(context.webRoot(),null)%>/images/logo_is7.ico" /><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"HTMLHeadExtension", null, "252");} %></head>
<body class="backoffice"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/JavaScriptDisabledOverlay.isml", null, "255");} %><div id="masthead">
<div id="masthead-wrapper">
<a id="brand" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null)%>"><% {out.write(localizeISText("GlobalNavigation.link.home","",null,null,null,null,null,null,null,null,null,null,null));} %></a> 
<a id="brand_title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplication-DisplayWelcomePage",null)))),null)%>"><% {out.write(localizeISText("GlobalNavigation.link.brandtitle","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<ul id="app-toggle">
<li><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("EditView-ToDataView",null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("ApplicationBO:UrlIdentifier"),null)))),null)%>" id="data-view" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.StartsTheDataView.link",null)),null)%>"><% {out.write(localizeISText("GlobalNavigation.link.dataview","",null,null,null,null,null,null,null,null,null,null,null));} %></a></li>
<li><a id="design-view" class="active" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.StartsTheDesignView.link",null)),null)%>"><% {out.write(localizeISText("GlobalNavigation.link.designview","",null,null,null,null,null,null,null,null,null,null,null));} %></a></li><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PreviewWebform"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",264,e);}if (_boolean_result) { %><li><a href="<%=context.getFormattedValue("#",null)%>" class="" id="design-preview" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.SetupStorefrontPreviewParameters.link",null)),null)%>"><% {out.write(localizeISText("GlobalNavigation.link.designview","",null,null,null,null,null,null,null,null,null,null,null));} %></a></li><% } %></ul>
<ul id="globalMenu"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"application/StorefrontPreviewGlobalMenu", null, "269");} %></ul>
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"application/StorefrontPreviewSummary.isml", null, "272");} %></div><% URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ManageCMS-AssignComponent",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ManageCMS-AssignComponent",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ManageCMS-AssignComponent",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),null));out.print("\"");out.print(" id=\"");out.print("createComponentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); %><% out.print("</form>"); %><div id="component-palette">
<div id="component-palette-head">
<ul id="component-palette-tabs" class="tab-list"><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ComponentPalette", null, "282");} %></ul>
</div>
<div id="component-palette-content"></div>
</div>
<div id="palette-resizer">
<a class="palette-collapse"></a>
</div>
<div id="viewable-area">
<iframe id="siteContent" name="siteContent"></iframe>
<div id="siteContentOverlay"></div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EditViewPermission:PermissionMap:SLD_VIEW_CONTENT")))).booleanValue() && ((Boolean) ((( ((Number) getObject("ContentObjectsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",297,e);}if (_boolean_result) { %><div id="sfe-control-panel">
<div id="sfe-panel-tree">
<div class="sfe-control-bar">
<div class="sfe-generic-wrapper">
<div class="sfe-left">
<a href="<%=context.getFormattedValue("#",null)%>" class="sfe-button sfe-icon sfe-inspector-button" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Inspect.title",null)),null)%>"><span><% {out.write(localizeISText("StorefrontPreview.Inspect","",null,null,null,null,null,null,null,null,null,null,null));} %></span></a>
</div>
<div class="sfe-left">
<a href="<%=context.getFormattedValue("#",null)%>" class="sfe-button sfe-icon sfe-layout-button" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("StorefrontPreview.Layout.title",null)),null)%>"><span><% {out.write(localizeISText("StorefrontPreview.Layout","",null,null,null,null,null,null,null,null,null,null,null));} %></span></a>
</div>
<div class="sfe-control-bar-resizer"></div>
</div>
</div>
<div id="sfe-container-tree"></div>
</div>
<div id="sfe-panel-divider">
<div class="sfe-control-bar"><span></span></div>
</div>
<div id="sfe-panel-edit">
<div class="sfe-control-bar">
<div class="sfe-generic-wrapper">
<div class="sfe-right">
<a href="javascript:void(false)" class="sfe-button sfe-panel-collapse-button sfe-panel-collapse-opened">&nbsp;</a>
</div>
<div class="sfe-tabs"></div>
<div class="sfe-links"></div>
<div class="sfe-control-bar-resizer"></div>
</div>
</div>
<div id="sfe-container-edit">
<div class="sfe-generic-wrapper"></div>
</div>
<div id="sfe-panel-edit-controls">
<div class="sfe-generic-wrapper">
<div class="sfe-button-bar"></div>
</div>
</div>
</div>
</div><% } %><div id="waitingOverlay">
<div class="waitingNote">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif"/>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PreviewWebform"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",345,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"application/StorefrontPreviewLayer.isml", null, "346");} %><% } %><script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/designer.polyfill.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/designer.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/designer.defaults.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/designer.palette.js"></script>
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/designer.dragdrop.js"></script><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("ContentRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("CategoryLinkSite",getObject("ContentRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("ContentRepository:RepositoryDomain:UUID")),
new TagParameter("Name","false")}, 354); %></body>
</html><% printFooter(out); %>