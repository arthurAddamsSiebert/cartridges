<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("AffiliateProgram:DisplayName"),null).trim()),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AffiliateProgramStatistic_52.Statistics.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliateProgram:UUID"),null))))),
new TagParameter("id",getObject("AffiliateProgram:UUID")),
new TagParameter("text",getObject("AffiliateProgram:DisplayName"))}, 5); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AffiliateProgramStatistic_52.Statistics.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliateProgram:UUID"),null))))),
new TagParameter("id",getObject("AffiliateProgram:UUID")),
new TagParameter("text",getObject("AffiliateProgram:Id"))}, 7); %><% } %><% URLPipelineAction action595 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Dispatch",null)))),null));String site595 = null;String serverGroup595 = null;String actionValue595 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Dispatch",null)))),null);if (site595 == null){  site595 = action595.getDomain();  if (site595 == null)  {      site595 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup595 == null){  serverGroup595 = action595.getServerGroup();  if (serverGroup595 == null)  {      serverGroup595 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("StatisticForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue595, site595, serverGroup595,true)); %><input type="hidden" name="AffiliatePartnerUUID" value="<%=context.getFormattedValue(getObject("AffiliateProgram:AffiliatePartner:UUID"),null)%>"/>
<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliateProgram:UUID"),null))).addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliateProgram:AffiliatePartner:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("AffiliateProgramStatistic_52.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("AffiliateProgramStatistic_52.Statistics.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
<!-- /Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("AffiliateProgram:DisplayName"),null).trim()),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
<tr>
<td class="table_title_description w e" nowrap="nowrap"><% {out.write(localizeISText("AffiliateProgramStatistic_52.StatisticsForTheAffiliateProgram.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="aldi">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="fielditem"><% {out.write(localizeISText("AffiliateProgramStatistic_52.ProgramStart.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgram:ProgramStart"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:ProgramStart"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("AffiliateProgramStatistic_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="fielditem"><% {out.write(localizeISText("AffiliateProgramStatistic_52.ProgramEnd.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgram:ProgramEnd"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:ProgramEnd"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("AffiliateProgramStatistic_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AffiliateProgramAccountBalances") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><% {Object temp_obj = ("1"); getPipelineDictionary().put("first", temp_obj);} %><% while (loop("AffiliateProgramAccountBalances",null,null)) { %><tr>
<td class="fielditem"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("first"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("AffiliateProgramStatistic_52.TotalRevenue.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<% {Object temp_obj = ("0"); getPipelineDictionary().put("first", temp_obj);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail" id="revenue"><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramAccountBalances"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } else { %><tr>
<td class="fielditem"><% {out.write(localizeISText("AffiliateProgramStatistic_52.TotalRevenue.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" id="revenue"><% {out.write(localizeISText("AffiliateProgramStatistic_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td class="fielditem"><% {out.write(localizeISText("AffiliateProgramStatistic_52.TotalOfOrders.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" id="ordersCount"><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramAccount:TransactionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="fielditem"><% {out.write(localizeISText("AffiliateProgramStatistic_52.RegisteredUser.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" id="usersCount"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgramStatistic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramStatistic:ProfileCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
0
<% } %></td>
</tr>
<tr>
<td class="fielditem"><% {out.write(localizeISText("AffiliateProgramStatistic_52.NumberOfSessions.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" id="sessionsCount"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgramStatistic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramStatistic:SessionCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
0
<% } %></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "111");} %><!-- EO Main Content --><% printFooter(out); %>