<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SEOSettingsPreferences.ChannelPreferences.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSEOSettingsPreferences-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("SEOSettingsPreferences.SEOSettings.text",null)))}, 5); %><script>
function toggleURLRewriteWarning(){
if (document.getElementById('SEOSettingsPreferences_URLRewriteEnabled').checked) {
document.getElementById('SEO_warning').style.display='none';
} else {
document.getElementById('SEO_warning').style.display='';
} 
}
$(document).ready(function() {
$("input:reset").click(function() { // apply to reset button's click event
this.form.reset(); // reset the form
// call your functions to be executed after the reset 
toggleURLRewriteWarning();
return false; // prevent reset button from resetting again
});
});
</script><% URLPipelineAction action94 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSEOSettingsPreferences-Dispatch",null)))),null));String site94 = null;String serverGroup94 = null;String actionValue94 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSEOSettingsPreferences-Dispatch",null)))),null);if (site94 == null){  site94 = action94.getDomain();  if (site94 == null)  {      site94 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup94 == null){  serverGroup94 = action94.getServerGroup();  if (serverGroup94 == null)  {      serverGroup94 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSEOSettingsPreferences-Dispatch",null)))),null));out.print("\"");out.print(" xonreset=\"");out.print("toggleURLRewriteWarning()");out.print("\"");out.print(" data-testing-id=\"");out.print("bo-page-preferences-seo-channel");out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("Form:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue94, site94, serverGroup94,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("SEOSettingsPreferences.title.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SEOSettingsPreferences.title.description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Form:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("Form:Invalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("SMC_ERROR_NOTUNIQUE_URLREWRITENAME")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("SMCApplicationEdit.SiteCouldNotBeUpdated.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:URLRewriteSiteName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCApplicationEdit.PleaseProvideAValidURLRewriteSiteName.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SMC_ERROR_NOTUNIQUE_URLREWRITENAME"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {out.write(localizeISText("SMCApplicationEdit.PleaseProvideAUniqueURLRewriteSiteName.error","",null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr id="SEO_warning" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:URLRewriteEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %> style="display:none"<% } %>>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="information w e s">
<tr>
<td class="information e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" width="16" height="15" alt="" border="0"/></td>
<td class="information" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","SEOSettingsPreferences.URLRewrite.Enable.warning")}, 71); %></td>
</tr>
</table>
</td>
</tr> 
<tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="0" width="100%" 
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td class="fielditem2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %> 
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RichSnippetsEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RichSnippetsEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:RichSnippetsEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RichSnippetsEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RichSnippetsEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:RichSnippetsEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td>
<td class="fielditem2 label_fix5" width="100%">
<label class="label label_checkbox label_checkbox_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:RichSnippetsEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("SEOSettingsPreferences.RichSnippets.Enable.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="fielditem_comment"><% {out.write(localizeISText("SEOSettingsPreferences.RichSnippets.Enable.description","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</td>
</tr>
<tr>
<td class="fielditem2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %> 
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:HRefLangEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:HRefLangEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:HRefLangEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:HRefLangEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:HRefLangEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:HRefLangEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td>
<td class="fielditem2 label_fix5" width="100%">
<label class="label label_checkbox label_checkbox_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:HRefLangEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("SEOSettingsPreferences.HRefLang.Enable.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="fielditem_comment"><% {out.write(localizeISText("SEOSettingsPreferences.HRefLang.Enable.description","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</td>
</tr>
<tr>
<td class="fielditem2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %> 
<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:URLRewriteEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>checked="checked"<% } %> onchange="toggleURLRewriteWarning()"/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Form:URLRewriteEnabled:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/><% } %></td>
<td class="fielditem2 label_fix5" width="100%">
<label class="label label_checkbox label_checkbox_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteEnabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("SEOSettingsPreferences.URLRewrite.Enable.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="fielditem_comment"><% {out.write(localizeISText("SEOSettingsPreferences.URLRewrite.Enable.description","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</td>
</tr>
<tr>
<td></td>
<td>
<table>
<tr>
<td class=fielditem2 label_fix5">
<label xclass="label label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteSiteName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("SEOSettingsPreferences.URLRewrite.SiteName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %> 
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteSiteName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteSiteName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" maxlength="35" size="25" value="<%=context.getFormattedValue(getObject("Form:URLRewriteSiteName:Value"),null)%>"/><% } else { %><input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteSiteName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("Form:URLRewriteSiteName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" maxlength="35" size="25" value="<%=context.getFormattedValue(getObject("Form:URLRewriteSiteName:Value"),null)%>" disabled="disabled/><% } %></td>
<td >
<div class="fielditem_comment"><% {out.write(localizeISText("SEOSettingsPreferences.URLRewrite.SiteName.description","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</td> 
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="updateSettings" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SEOSettingsPreferences.Apply.button",null)),null)%>" class="button" /></td>
<td class="button"><input type="reset" name="resetSettings" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SEOSettingsPreferences.Reset.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "166");} %><% printFooter(out); %>