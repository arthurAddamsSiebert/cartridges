<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="content"> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "4");} %><% {Object temp_obj = (getObject("ProductValidationAssortmentConfigurationBORepository:AllProductValidationAssortmentConfigurationBOs")); getPipelineDictionary().put("ProductValidationAssortmentConfigurationBOs", temp_obj);} %><table width="100%" cellspacing="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="table_title_description"><% {out.write(localizeISText("widgettype.productcompletenessoverview.performedIn0",null,null,encodeString(context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action675 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Dispatch",null)))),null));String site675 = null;String serverGroup675 = null;String actionValue675 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Dispatch",null)))),null);if (site675 == null){  site675 = action675.getDomain();  if (site675 == null)  {      site675 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup675 == null){  serverGroup675 = action675.getServerGroup();  if (serverGroup675 == null)  {      serverGroup675 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("aform");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue675, site675, serverGroup675,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ProductValidationAssortmentConfigurationBORepository:AllProductValidationAssortmentConfigurationBOs")); getPipelineDictionary().put("ProductValidationAssortmentConfigurationBOs", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductValidationAssortmentConfigurationBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellspacing="0" cellpadding="4" class="infobox">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td class="label_select" nowrap="nowrap">
<label class="label label_select" for="ProductValidationOverviewForm_ProductAssortmentName"><% {out.write(localizeISText("widgettype.productcompletenessoverview.selectassortment.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td class="table_detail">
<select id="ProductValidationOverviewForm_ProductAssortmentName" name="ProductValidationOverviewForm_ProductAssortmentName" class="select inputfield_en" style="width: 260px;"><% while (loop("ProductValidationAssortmentConfigurationBOs","ProductValidationAssortmentConfigurationBO",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ProductValidationOverviewForm:ProductAssortmentName:Value"),null).equals(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null).equals(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>selected="selected"<% } %> value='<%=context.getFormattedValue(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:ID"),null),null)%>'><% {String value = null;try{value=context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
<tr>
</table>
</td>
</tr>
</table>
<div id="ProductCompletenessResult"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"widget/productcompleteness/ProductCompletenessData.isml", null, "40");} %></div><% } else { %><table width="100%" cellspacing="0" cellspacing="0" cellpadding="4"> 
<tr>
<td align="left" class="table_detail"><% {out.write(localizeISText("widgettype.productcompletenessoverview.noassortmentconfiguration.description1","",null,encodeString(context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %><br/>
<br/><% {out.write(localizeISText("widgettype.productcompletenessoverview.noassortmentconfiguration.description2","",null,null,null,null,null,null,null,null,null,null,null));} %> <a class="selection_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Start",null)))),null)%>" target="_parent"><% {out.write(localizeISText("widgettype.productcompletenessoverview.noassortmentconfiguration.description3","",null,null,null,null,null,null,null,null,null,null,null));} %></a>.
</td>
</tr>
</table> 
<% } %> 
<% } else { %><table width="100%" cellspacing="0" cellspacing="0" cellpadding="4"> 
<tr>
<td align="left" class="table_detail"><% {out.write(localizeISText("widgettype.productcompletenessoverview.noassortmentconfiguration.description1","",null,encodeString(context.getFormattedValue(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.application.ApplicationBOApplicationSelectorExtension\"):DisplayName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr
</table><% } %> 
<% out.print("</form>"); %><script language="javascript" type="text/javascript">
(function() {
var productCompletenessResult = $('#ProductCompletenessResult');
// binds change callback function for product assortment selection box
$('#ProductValidationOverviewForm_ProductAssortmentName').on('change', function(ev) {
var value = $(this).val();
var params = '?ProductValidationOverviewForm_ProductAssortmentName=' + value;
productCompletenessResult.load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("RenderProductCompletenessOverviewWidget-GetProductStatistics",null)))),null)%>" + params);
});
})(); 
</script>
</div><% printFooter(out); %>