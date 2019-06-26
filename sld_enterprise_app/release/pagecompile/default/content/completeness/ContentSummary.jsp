<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentRepository:TypeCode"),null).equals(context.getFormattedValue("21",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("MasterChannel", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("MasterChannel", temp_obj);} %><% } %><% {try{executePipeline("ViewContentSummary-GetStatistics",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentRepositoryUUID",getObject("ContentRepository:UUID")))).addParameter(new ParameterEntry("ContextPipeline",getObject("ContextPipeline")))))),"ObjectStatistics");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 17.",e);}} %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="table_title aldi"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.title")}, 21); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ObjectStatistics:UpdateInProgress"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ObjectStatistics:refresh"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 26); %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(getObject("URLUtils:URLFromMap(ContextPipeline,ContextPipelineMap)"),null)%>'", 5000)
</script>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.statistics.inprogress")}, 32); %></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatistics:ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td colspan="5" class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.statistics.lastupdate")}, 39); %> <% {String value = null;try{value=context.getFormattedValue(getObject("ObjectStatistics:ObjectStatisticsGroup:LastModified"),"dd.MM.yy hh:mm aaa",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.
</td>
</tr>
<tr>
<td colspan="5" class="w e s">
<table border="0" cellspacing="5" cellpadding="0" width="100%">
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.statistics.elementcount")}, 46); %></td>
</tr>
</table>
</td>
</tr>
<tr> 
<td valign="top" width="45%" class="w">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Pages.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPages"))}, 54); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MasterChannel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPages-ViewSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.PageVariants.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPageVariants"))}, 57); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPages-ViewSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.PageVariants.text1",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPageVariants"))}, 60); %><% } %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.PageTemplates.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPageTemplates"))}, 64); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.ViewContexts.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfViewContexts"))}, 66); %></table>
</td>
<td width="2%">
</td>
<td width="1" class="overview_vertical_line">
<img width="1" height="100%" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/>
</td>
<td width="2%">
</td>
<td valign="top" class="e">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MasterChannel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageComponents-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Components.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfComponents"))}, 81); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageComponents-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Components.text1",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfComponents"))}, 84); %><% } %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue("false",null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.ComponentTemplates.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfComponentTemplates"))}, 87); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludes-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Includes.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfIncludes"))}, 89); %></table>
</td>
</tr>
<tr>
<td class="s" colspan="5"><img width="1" height="0" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ObjectStatistics:StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td colspan="5" class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.description.staging.editing")}, 100); %></td>
</tr><% } else { %><tr>
<td colspan="5" class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.description")}, 104); %></td>
</tr><% } %><% } %></table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContextPipelineMap:SLD_MANAGE_CONTENT")))).booleanValue() && ((Boolean) (((!((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ObjectStatistics:UpdateInProgress")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ObjectStatistics:refresh")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ObjectStatistics:StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 112); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContextPipeline"),
new TagParameter("key2","ContextPipeline_"),
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value2",getObject("ContextPipelineMap")),
new TagParameter("value1",getObject("ContextPipeline")),
new TagParameter("value0",getObject("ContentRepository:UUID")),
new TagParameter("mapname","URLParameters")}, 113); %> 
<% URLPipelineAction action424 = new URLPipelineAction(context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentSummary-Refresh\",URLParameters)"),null));String site424 = null;String serverGroup424 = null;String actionValue424 = context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentSummary-Refresh\",URLParameters)"),null);if (site424 == null){  site424 = action424.getDomain();  if (site424 == null)  {      site424 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup424 == null){  serverGroup424 = action424.getServerGroup();  if (serverGroup424 == null)  {      serverGroup424 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentSummary-Refresh\",URLParameters)"),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue424, site424, serverGroup424,true)); %><table class="w e s" cellspacing="0" cellpadding="0" align="right" width="100%">
<tr>
<td>
<table border="0" cellspacing="5" cellpadding="0" align= "right" >
<tr>
<td class="button" >
<input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentSummary.Update.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %><% printFooter(out); %>