<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import = "com.intershop.beehive.core.capi.localization.LocaleMgr"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 s"><% {out.write(localizeISText("ApplicationLocales.Languages.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("ApplicationLocales.UseTheFollowingPreferencesToDefineRegionalSettingsBehavior.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","SystemLocales"),
new TagParameter("key2","ApplicationLocales"),
new TagParameter("key0","ApplicationForm"),
new TagParameter("value2",getObject("ApplicationLocales")),
new TagParameter("value1",getObject("SystemLocales")),
new TagParameter("key3","CurrentSession"),
new TagParameter("value4",getObject("ApplicationDefaultLocale")),
new TagParameter("value3",getObject("CurrentSession")),
new TagParameter("key4","ApplicationDefaultLocale"),
new TagParameter("value0",getObject("ApplicationForm")),
new TagParameter("mapname","ApplicationLocalesParams")}, 15); %><div id="LocalesMgmtDialog" class="js-dialog" data-title="<% {out.write(localizeISText("app.Dialog.Locales.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="654" height="415">
<div class="dialog-content"><% processOpenTag(response, pageContext, "assignmentlist", new TagParameter[] {
new TagParameter("scripttemplate","app/ApplicationLocalesAssignmentScript.isml"),
new TagParameter("uitemplate","app/ApplicationLocalesAssignment.isml"),
new TagParameter("selectedlabel",localizeText(context.getFormattedValue("app.Dialog.Locales.selected",null))),
new TagParameter("availablelabel",localizeText(context.getFormattedValue("app.Dialog.Locales.available",null))),
new TagParameter("id","LocalesMgmtAssignment"),
new TagParameter("defaultname",getObject("ApplicationForm:DefaultLocale:QualifiedName")),
new TagParameter("params",getObject("ApplicationLocalesParams")),
new TagParameter("itemlabel","language")}, 25); %></div>
<div class="dialog-buttons">
<input type="button" class="button" id="LocalesMgmtDialog-ok" value="<% {out.write(localizeISText("app.Dialog.Locales.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<input type="button" class="button" id="LocalesMgmtDialog-cancel" value="<% {out.write(localizeISText("app.Dialog.Locales.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-focus data-action="dialog-close">
</div><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>application-locales.js<% out.print("</waplacement>"); %><script type="text/javascript">
initLocalesDialog('<% {out.write(localizeISText("app.Dialog.Locales.name","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>', '<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultLocale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>');
</script>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="localeslist">
<tr>
<td width="80" class="table_header e s"><div class="center"><% {out.write(localizeISText("ApplicationLocales.Default.center",null,null,null,null,null,null,null,null,null,null,null,null));} %></div></td>
<td class="table_header s"><% {out.write(localizeISText("ApplicationLocales.Languages.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationLocales")))).booleanValue() && !((Boolean) (getObject("ApplicationLocales:Empty"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% while (loop("ApplicationLocales","locale",null)) { %><tr>
<td class="e s center">
<div class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("locale"),null).equals(context.getFormattedValue(getObject("ApplicationDefaultLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>active<% } else { %>inactive<% } %>"></div><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("locale"),null).equals(context.getFormattedValue(getObject("ApplicationDefaultLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultLocale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Locales:Locale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationForm:DefaultLocale:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ApplicationForm:DefaultLocale:Value")); getPipelineDictionary().put("LeadLocaleID", temp_obj);} %><% while (loop("SystemLocales","locale",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:Locales:Locale:Values:Contains(locale:LocaleID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><tr>
<td class="e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("locale:LocaleID"),null).equals(context.getFormattedValue(getObject("LeadLocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><div class="active"></div>
<input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultLocale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } else { %><div class="inactive"></div><% } %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Locales:Locale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %><% } else { %><%
						LocaleMgr mgr = (LocaleMgr)NamingMgr.getManager(LocaleMgr.class);
						getPipelineDictionary().put("LeadLocale", mgr.getLeadLocale());
						%><% while (loop("SystemLocales","locale",null)) { %><tr>
<td class="e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("locale"),null).equals(context.getFormattedValue(getObject("LeadLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><div class="active"></div>
<input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultLocale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } else { %><div class="inactive"></div><% } %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Locales:Locale:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><tr>
<td align="right" class="s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="button" onclick="javascript: $('<%=context.getFormattedValue("#",null)%>LocalesMgmtDialog').dialog('open');" class="button" name="ManageLocales" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationLocales.Manage.button",null)),null)%>" /></td> 
</tr>
</table>
</td>
</tr><% } %></table><% printFooter(out); %>