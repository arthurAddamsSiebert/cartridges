<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); %><% context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); %><% {Object temp_obj = ("ViewPromotionList-ParametricSearch"); getPipelineDictionary().put("SearchPipeline", temp_obj);} %><!-- start page navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.title",null)))}, 19); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.promotionstatistics.title",null)))}, 20); %><!-- end page navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.title")}, 25); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Refresh"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
window.setTimeout("self.location='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>'", 5000)
</script>
<tr>
<td class="table_title_description w e s" ><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.status.updating")}, 35); %></td>
</tr><% } else { %><tr>
<td class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.lastupdated.message")}, 39); %> <% {String value = null;try{value=context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),"dd.MM.yy hh:mm aaa",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.</td>
</tr>
<tr>
<td valign="top" width="45%">
<table border="0" cellspacing="5" cellpadding="0" width="100%" class="w e s"><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.NumberOfPromotions.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfPromotions"))}, 44); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("PromotionSearchForm:Active:QualifiedName"),null),context.getFormattedValue("1",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.EnabledPromotions.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfEnabledPromotions"))}, 46); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("PromotionSearchForm:Active:QualifiedName"),null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.DisabledPromotions.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfDisabledPromotions"))}, 48); %><% processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.TotalNumberOfCodes.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:TotalNumberOfPromotionCodes"))}, 50); %><tr>
<td><img width="1" height="0" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
</table>
</td>
</tr><% } %><% } else { %><tr>
<td class="table_title_description w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.description")}, 87); %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("Refresh")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% URLPipelineAction action32 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-StartUpdate",null)))),null));String site32 = null;String serverGroup32 = null;String actionValue32 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-StartUpdate",null)))),null);if (site32 == null){  site32 = action32.getDomain();  if (site32 == null)  {      site32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup32 == null){  serverGroup32 = action32.getServerGroup();  if (serverGroup32 == null)  {      serverGroup32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-StartUpdate",null)))),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue32, site32, serverGroup32,true)); %><table class="w e s" cellspacing="0" cellpadding="0" align="right" width="100%">
<tr>
<td>
<table cellspacing="4" cellpadding="0" align="right">
<tr>
<td class="button" >
<input type="hidden" name="GroupName" value="Promotion"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPromotionStatistics.Update.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% } %> <% printFooter(out); %>