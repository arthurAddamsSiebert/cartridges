<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PriceListList_52.ChannelCatalogs.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-BackToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("PriceListList_52.PriceLists.text",null)))}, 5); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" colspan ="3" class="table_title aldi"><% {out.write(localizeISText("PriceListList_52.StandardPriceList.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InvalidPriceList"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><tr>
<td width="100%" colspan ="3" class="error table_title_description w e s"><% {out.write(localizeISText("PriceListList_52.Invalid.PriceList",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td colspan ="3" class="table_title_description w e s"><% {out.write(localizeISText("PriceListList_52.TheListShowsAllStandardPriceListsChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("PriceListList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("PriceListList_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><td class="table_header e s">&nbsp;</td><% } %></tr>
<tr>
<td class="table_detail top w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListStandard-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="table_detail_link"><% {out.write(localizeISText("PriceListList_52.ListPrices.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_detail top e s"><% {out.write(localizeISText("PriceListList_52.ContainsAllStandardListPrices.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><td class="table_detail top e s center"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListStandard-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="action_link"><% {out.write(localizeISText("PriceListList_52.Edit.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %></tr>
<tr>
<td class="table_detail top w e s"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="table_detail_link"><% {out.write(localizeISText("PriceListList_52.CostPrices.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="table_detail top e s"><% {out.write(localizeISText("PriceListList_52.ContainsAllCostPrices.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><td class="table_detail top e s center"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCostPriceList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null)%>" class="action_link"><% {out.write(localizeISText("PriceListList_52.Edit.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %> 
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("PriceListList_52.SpecialPriceLists.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- price look up --><% URLPipelineAction action380 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-Dispatch",null)))),null));String site380 = null;String serverGroup380 = null;String actionValue380 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-Dispatch",null)))),null);if (site380 == null){  site380 = action380.getDomain();  if (site380 == null)  {      site380 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup380 == null){  serverGroup380 = action380.getServerGroup();  if (serverGroup380 == null)  {      serverGroup380 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("priceLookUpForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue380, site380, serverGroup380,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox e w">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("PriceListList_52.PriceLookup.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="infobox_item">
<select name="PriceLookUp" class="select inputfield_en">
<option value="BestPrice" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceLookUp"),null).equals(context.getFormattedValue("BestPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {out.write(localizeISText("PriceListList_52.BestPrice.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Priority" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceLookUp"),null).equals(context.getFormattedValue("Priority",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>selected="selected" <% } %>><% {out.write(localizeISText("PriceListList_52.CustomLookup.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>&nbsp;
</td>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PriceListList_52.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table><% } else { %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("PriceListList_52.PriceLookup.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceLookUp"),null).equals(context.getFormattedValue("BestPrice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %> <% {out.write(localizeISText("PriceListList_52.BestPrice.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PriceLookUp"),null).equals(context.getFormattedValue("Priority",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %> <% {out.write(localizeISText("PriceListList_52.CustomLookup.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %> 
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- END price look up --><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 99); %> 
<% while (loop("PriceTypes","PriceType",null)) { %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("deleteForPriceType"),null).equals(context.getFormattedValue(getObject("PriceType:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceType",null),context.getFormattedValue(getObject("PriceType:Name"),null)).addURLParameter(context.getFormattedValue("confirmDelete",null),context.getFormattedValue(getObject("confirmDelete"),null)).addURLParameter(context.getFormattedValue("ProcessDescription",null),context.getFormattedValue(context.getFormattedValue("Deleting Price Lists of type ",null) + context.getFormattedValue(getObject("PriceType:Name"),null),null))),null), null, null, "106");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectStagingTarget"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceType",null),context.getFormattedValue(getObject("PriceType:Name"),null)).addURLParameter(context.getFormattedValue("selectStagingTarget",null),context.getFormattedValue(getObject("selectStagingTarget"),null)).addURLParameter(context.getFormattedValue("ProcessDescription",null),context.getFormattedValue(context.getFormattedValue("Deleting Price Lists of type ",null) + context.getFormattedValue(getObject("PriceType:Name"),null),null))),null), null, null, "113");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% } else { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPriceListList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("PriceType",null),context.getFormattedValue(getObject("PriceType:Name"),null)).addURLParameter(context.getFormattedValue("ProcessDescription",null),context.getFormattedValue(context.getFormattedValue("Deleting Price Lists of type ",null) + context.getFormattedValue(getObject("PriceType:Name"),null),null))),null), null, null, "120");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% }} %></td>
</tr>
</table><% } %><!-- EO Working Area --><% printFooter(out); %>