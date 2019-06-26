<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules.isml", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"fullsitepreview/Modules.isml", null, "4");} %><div id="sfe-fullsite-preview-bar"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FullSitePreviewError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><table id="sfe-fullsite-preview-past-dates-disabled-error" border="0" cellspacing="0" cellpadding="4" class="error_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FullSitePreviewError"),null).equals(context.getFormattedValue("PREVIEW_FOR_PAST_DATES_DISABLED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><tr valign="top">
<td class="error_icon top">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top">
<span class="sfe-error-message"><% {out.write(localizeISText("FullSitePreviewSettings.TheFullSitePreviewWasScheduledToThePast.error","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<a href="#" id="sfe-fullsite-preview-past-dates-disabled-error-close">
<span class="sfe-close"></span>
</a>
</td>
</tr><% } %></table><% } %><div id="header-bar">
<a id="sfe-preview-fullsite-toggle-settings" class="sfe-button" href="<%=context.getFormattedValue("#",null)%>" name="PreviewInformation"><% {out.write(localizeISText("FullSitePreviewSettings.PreviewInformation.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<a id="sfe-preview-fullsite-toggle-url" class="sfe-button" href="<%=context.getFormattedValue("#",null)%>" name="PreviewLink"><% {out.write(localizeISText("FullSitePreviewSettings.PreviewLink.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
<div id="sfe-fullsite-preview-parameter-container-tippbox">
<div id="sfe-fullsite-preview-parameter-container" class="sfe-fullsite-preview-setting-panel">
<table class="sfe-fullsite-preview-container-first" border="0" cellspacing="0" cellpadding="0" border="0"><% while (loop("PreviewContextBO:PreviewConfigurationAttributeGroups","PreviewConfigurationAttributeGroup",null)) { %><% processOpenTag(response, pageContext, "fullsitepreviewparametergroup", new TagParameter[] {
new TagParameter("CurrentRequest",getObject("CurrentRequest")),
new TagParameter("EnablePastDateCheck",getObject("isPreviewDateCheckInPastEnabled")),
new TagParameter("previewContext",getObject("PreviewContextBO")),
new TagParameter("group",getObject("PreviewConfigurationAttributeGroup"))}, 32); %><% } %></table>
</div>
</div>
<div id="sfe-fullsite-preview-url-container-tippbox">
<div id="sfe-fullsite-preview-url-container" class="sfe-fullsite-preview-setting-panel">
<p class="sfe-fullsite-preview-container-first"><% {out.write(localizeISText("FullSitePreviewSettings.YouCanShareTheFollowingURL","",null,null,null,null,null,null,null,null,null,null,null));} %>:</p>
<a id="sfe-fullsite-preview-url" href="<%=context.getFormattedValue("#",null)%>"></a>
</div>
</div>
<script type="text/javascript">
$(function () {
var previewUrl = (window.location.href);
$("<%=context.getFormattedValue("#",null)%>sfe-fullsite-preview-url").attr("href", previewUrl);
$("<%=context.getFormattedValue("#",null)%>sfe-fullsite-preview-url").html(previewUrl.substr(0, previewUrl.indexOf('?')));
});
</script><% printFooter(out); %>