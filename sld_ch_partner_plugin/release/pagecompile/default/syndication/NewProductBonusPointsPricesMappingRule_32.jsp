<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("NewProductBonusPointsPricesMappingRule_32.MappingRules.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-MappingRules",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("currency",null),context.getFormattedValue(getObject("currency"),null))).addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("SourceDeclaration:currency")),
new TagParameter("text",localizeText(context.getFormattedValue("NewProductBonusPointsPricesMappingRule_32.BonusPointsPrice.text",null)))}, 6); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td><% URLPipelineAction action236 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-Dispatch",null)))),null));String site236 = null;String serverGroup236 = null;String actionValue236 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-Dispatch",null)))),null);if (site236 == null){  site236 = action236.getDomain();  if (site236 == null)  {      site236 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup236 == null){  serverGroup236 = action236.getServerGroup();  if (serverGroup236 == null)  {      serverGroup236 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue236, site236, serverGroup236,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/NewProductBonusPointsPricesMappingRuleHeaderInc", null, "12");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/NewProductBonusPointsMappingRuleFooterInc", null, "13");} %><input type="hidden" name="TargetRuleCurrency" value="BonusPointsPrice"/><% out.print("</form>"); %></td>
</tr>
<tr>
<td><% URLPipelineAction action237 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-Start",null)))),null));String site237 = null;String serverGroup237 = null;String actionValue237 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-Start",null)))),null);if (site237 == null){  site237 = action237.getDomain();  if (site237 == null)  {      site237 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup237 == null){  serverGroup237 = action237.getServerGroup();  if (serverGroup237 == null)  {      serverGroup237 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductPriceMapping_32-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("detail_Form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue237, site237, serverGroup237,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductDataDeclarationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceDeclaration:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 
</td>
</tr>
</table><% out.print("</form>"); %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "34");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>