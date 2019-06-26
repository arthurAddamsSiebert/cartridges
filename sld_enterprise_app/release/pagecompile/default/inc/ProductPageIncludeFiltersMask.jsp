<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><tr class="table_detail">
<td class="table_title2 n" colspan="5"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShowPagesIncludes"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOptionsViaAjax",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("ShowPagesIncludes",null))).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("true",null))),null)%>" class="table_closed"><% {out.write(localizeISText("ProductPageIncludeFiltersMask.PagesIncludes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOptionsViaAjax",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayVariable",null),context.getFormattedValue("ShowPagesIncludes",null))).addURLParameter(context.getFormattedValue("DisplayValue",null),context.getFormattedValue("false",null))),null)%>" class="table_opened"><% {out.write(localizeISText("ProductPageIncludeFiltersMask.PagesIncludes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></td>
</tr>
<tr <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShowPagesIncludes"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>style="display:none;"<% } %>>
<td class="label_radio label_top" nowrap="nowrap"><label class="label label_radio label_top label_light label_indent" for=""><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Pages.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table width="100%" cellspacing="0" cellpadding="2" border="0"><% processOpenTag(response, pageContext, "contententrypointdefinitioninclusionfiltermask", new TagParameter[] {
new TagParameter("AssignedToTypeSelect","WFAdvancedSearch_AssignedToPageType"),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("ObjectType","Product"),
new TagParameter("PageFlag","true"),
new TagParameter("NotAssignedToTypeSelect","WFAdvancedSearch_NotAssignedToPageType"),
new TagParameter("AssignmentSelectionRadioGroup","WFAdvancedSearch_PageAssignments"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("NotAssignedToTypeParam",getObject("WFAdvancedSearch_NotAssignedToPageType")),
new TagParameter("AssignedToTypeParam",getObject("WFAdvancedSearch_AssignedToPageType")),
new TagParameter("AssignmentSelectionParam",getObject("WFAdvancedSearch_PageAssignments"))}, 21); %></table>
</td>
</tr>
<tr <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShowPagesIncludes"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>style="display:none;"<% } %>><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShowPagesIncludes"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>style="display:none;"<% } %>>
<td class="label_radio label_top" nowrap="nowrap"><label class="label label_radio label_top label_light label_indent" for=""><% {out.write(localizeISText("ContentEntryPointDefinitionInclusionFilterMask.Includes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="4">
<table width="100%" cellspacing="0" cellpadding="2" border="0"><% processOpenTag(response, pageContext, "contententrypointdefinitioninclusionfiltermask", new TagParameter[] {
new TagParameter("AssignedToTypeSelect","WFAdvancedSearch_AssignedToIncludeType"),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("ObjectType","Product"),
new TagParameter("PageFlag","false"),
new TagParameter("NotAssignedToTypeSelect","WFAdvancedSearch_NotAssignedToIncludeType"),
new TagParameter("AssignmentSelectionRadioGroup","WFAdvancedSearch_IncludeAssignments"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("NotAssignedToTypeParam",getObject("WFAdvancedSearch_NotAssignedToIncludeType")),
new TagParameter("AssignedToTypeParam",getObject("WFAdvancedSearch_AssignedToIncludeType")),
new TagParameter("AssignmentSelectionParam",getObject("WFAdvancedSearch_IncludeAssignments"))}, 45); %></table>
</td>
</tr><% printFooter(out); %>