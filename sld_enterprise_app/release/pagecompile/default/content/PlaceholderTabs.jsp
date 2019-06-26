<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 5); %><table border="0" cellspacing="0" cellpadding="0" class="sfe-dialog-hidden w100">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PlaceholderTabs.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("General",null))).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("Placeholder:UUID"),null)).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PlaceholderTabs.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Constraints",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PlaceholderTabs.Constraints.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Constraints",null))).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("Placeholder:UUID"),null)).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PlaceholderTabs.Constraints.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% processOpenTag(response, pageContext, "pageletplaceholderdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholder",getObject("Placeholder"))}, 39); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %> 
<!-- General Module --><% processOpenTag(response, pageContext, "placeholderdefinitiontabgeneral", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("PlaceholderDefinition",getObject("Placeholder")),
new TagParameter("PlaceholderDefinitionForm",getObject("PlaceholderDefinitionForm")),
new TagParameter("ErrorCode",getObject("ErrorCode")),
new TagParameter("Locales",getObject("Locales")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("CurrentSite",getObject("CurrentSite"))}, 45); %> 
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Constraints",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "placeholderdefinitiontabconstraints", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("PlaceholderDefinition",getObject("Placeholder")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletConstraintCtnr",getObject("PageletConstraintCtnr")),
new TagParameter("CurrentDomain",getObject("CurrentDomain")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 58); %> 
<% }} %> <% printFooter(out); %>