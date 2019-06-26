<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); %><% {try{executePipeline("ViewContentProblemStatistic-TemplateCallback",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentRepositoryUUID",getObject("ContentRepository:UUID")))).addParameter(new ParameterEntry("initial",getObject("Initial")))))),"ProblemStatistic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 13.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("ProblemStatistic"))}, 14); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 15); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="table_title aldi"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.completeness.title")}, 18); %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NeedRevalidate"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% URLPipelineAction action422 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("RevalidationPipeline"),null)))),null));String site422 = null;String serverGroup422 = null;String actionValue422 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("RevalidationPipeline"),null)))),null);if (site422 == null){  site422 = action422.getDomain();  if (site422 == null)  {      site422 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup422 == null){  serverGroup422 = action422.getServerGroup();  if (serverGroup422 == null)  {      serverGroup422 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("RevalidationPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("Revalidate");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue422, site422, serverGroup422,true)); %><input type="hidden" name="ContentRepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input name="ProcessDescription" value="Revalidate shared CMS Objects" type="hidden"> 
<table class="information w e s" border="0" cellspacing="0" cellpadding="4" width="100%">
<tbody>
<tr>
<td class="inform_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" alt="" height="15" width="16" border="0">
</td>
<td width="100%" class="table_title_description"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastRevalidateDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProblemStatistic.Revalidate.defined","",null,context.getFormattedValue(getObject("LastRevalidateDate"),null),null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProblemStatistic.Revalidate.undefined","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="button" align="right">
<input class="button" type="submit" name="revalidate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProblemStatistic.Update.button",null)),null)%>" />
</td>
</tr>
</tbody>
</table><% out.print("</form>"); %><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/completeness/ProblemsSearchMask", null, "46");} %><% {Object temp_obj = (((((Boolean) ((((context.getFormattedValue(getObject("ContentCompletenessSearch:checkEmptySlots:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ContentCompletenessSearch:missingMandatory:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("RuleSelected", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisableInput"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 51); %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(getObject("URLUtils:URLFromMap(ContextPipeline,ContextPipelineMap)"),null)%>'", 5000)
</script>
<table class="w e s" width="100%" cellspacing="0" cellpadding="0" align="right">
<tr>
<td class="table_detail aldi"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.completeness.update.message1")}, 58); %> <% {String value = null;try{value=context.getFormattedValue(getObject("LockedSince"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("LockedSince"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.completeness.update.message2")}, 58); %></td>
</tr>
<tr>
<td>
<table cellspacing="5" cellpadding="0" border="0" align="right">
<tr>
<td class="button"><% URLPipelineAction action423 = new URLPipelineAction(context.getFormattedValue(getObject("URLUtils:URLFromMap(ContextPipeline,ContextPipelineMap)"),null));String site423 = null;String serverGroup423 = null;String actionValue423 = context.getFormattedValue(getObject("URLUtils:URLFromMap(ContextPipeline,ContextPipelineMap)"),null);if (site423 == null){  site423 = action423.getDomain();  if (site423 == null)  {      site423 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup423 == null){  serverGroup423 = action423.getServerGroup();  if (serverGroup423 == null)  {      serverGroup423 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("URLUtils:URLFromMap(ContextPipeline,ContextPipelineMap)"),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue423, site423, serverGroup423,true)); %><input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProblemStatistic.Refresh.button",null)),null)%>" class="button"/><% out.print("</form>"); %></td>
</tr>
</table>
<td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="w e s">
<table border="0" cellspacing="5" cellpadding="0" width="100%">
<tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.completeness.problemelements")}, 83); %></td>
</tr>
</table>
</td>
</tr>
<tr> 
<td valign="top" width="45%" class="w s">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForPages")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("Page",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.Pages.text",null))),
new TagParameter("attribute",getObject("ProblemsForPages"))}, 92); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.Pages.text1",null))),
new TagParameter("attribute","0")}, 95); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForPageVariants")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("PageVariant",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.PageVariants.text",null))),
new TagParameter("attribute",getObject("ProblemsForPageVariants"))}, 98); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.PageVariants.text1",null))),
new TagParameter("attribute","0")}, 101); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForPageTemplates")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("PageTemplate",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.PageTemplates.text",null))),
new TagParameter("attribute",getObject("ProblemsForPageTemplates"))}, 105); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.PageTemplates.text1",null))),
new TagParameter("attribute","0")}, 108); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForViewContexts")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("ViewContext",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.ViewContexts.text",null))),
new TagParameter("attribute",getObject("ProblemsForViewContexts"))}, 112); %><% } else { %> 
<% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.ViewContexts.text1",null))),
new TagParameter("attribute","0")}, 115); %><% } %></table>
</td>
<td width="2%" class="s">
</td>
<td width="1" class="overview_vertical_line">
<img width="1" height="100%" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/>
</td>
<td width="2%" class="s">
</td>
<td valign="top" class="e s">
<table border="0" cellspacing="5" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForComponents")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("Component",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.Components.text",null))),
new TagParameter("attribute",getObject("ProblemsForComponents"))}, 129); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.Components.text1",null))),
new TagParameter("attribute","0")}, 132); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_TEMPLATES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForComponentTemplates")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("ComponentTemplate",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.ComponentTemplates.text",null))),
new TagParameter("attribute",getObject("ProblemsForComponentTemplates"))}, 136); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.ComponentTemplates.text1",null))),
new TagParameter("attribute","0")}, 139); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProblemsForIncludes")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("RuleSelected")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentProblemDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue("Include",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.Includes.text",null))),
new TagParameter("attribute",getObject("ProblemsForIncludes"))}, 143); %><% } else { %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProblemStatistic.Includes.text1",null))),
new TagParameter("attribute","0")}, 146); %><% } %></table>
</td>
</tr>
</table><% } %><% printFooter(out); %>