<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",getObject("Product:Name"))}, 3); %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="table_title n" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% {out.write(localizeISText("ProductHistoryDetail_32.Differences.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("ProductHistoryDetail_32.HereYouCanViewTheDifferencesBetweenTheMasterProduct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action209 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_32-Dispatch",null)))),null));String site209 = null;String serverGroup209 = null;String actionValue209 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_32-Dispatch",null)))),null);if (site209 == null){  site209 = action209.getDomain();  if (site209 == null)  {      site209 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup209 == null){  serverGroup209 = action209.getServerGroup();  if (serverGroup209 == null)  {      serverGroup209 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue209, site209, serverGroup209,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/AttributeDetails", null, "22");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductStatusDetail", null, "23");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductBundleDetail", null, "24");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductRetailSetDetail", null, "25");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductVariationAttributeDetail", null, "26");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductVariationDetail", null, "27");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/CategoryDetails", null, "28");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductLinkDetails", null, "29");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/CategoryLinkDetails", null, "30");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/AttachmentDetails", null, "31");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ContentDetails", null, "32");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductTaxDetail", null, "33");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ListPriceDetails", null, "34");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/CostPriceDetails", null, "35");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ScalePriceDetail", null, "36");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductImageDetails", null, "37");} %> 
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductChange")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProductHistoryDetail_32.NoDifferencesFoundBetweenTheMasterProductAndThe.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="SourceRepository" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepository"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="SearchType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CancelAssignAll" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDetail_32.BackToList.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>