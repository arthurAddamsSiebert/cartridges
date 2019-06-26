<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action37 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Dispatch",null)))),null));String site37 = null;String serverGroup37 = null;String actionValue37 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Dispatch",null)))),null);if (site37 == null){  site37 = action37.getDomain();  if (site37 == null)  {      site37 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup37 == null){  serverGroup37 = action37.getServerGroup();  if (serverGroup37 == null)  {      serverGroup37 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("aform");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue37, site37, serverGroup37,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("product.validation.completeness.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("Process")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><td class="table_title_description w e s"><% {out.write(localizeISText("product.validation.completeness.jobstatus.notexecuted","",null,null,null,null,null,null,null,null,null,null,null));} %>. 
<% } else { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="">
<tr>
<td class="information e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation_info.gif" width="16" height="15" alt="" border="0"/></td>
<td class="information" width="100%"><% {out.write(localizeISText("product.validation.completeness.jobstatus.isrunning","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Process:CurrentProcess"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("product.validation.completeness.jobstatus.progress","",null,getObject("Process:CurrentProcess:ProgressValue"),getObject("Process:CurrentProcess:ProgressSize"),null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } else { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><td class="table_title_description w e s">
<input type="hidden" id="validationJobIsComplete" value="true" /><% {out.write(localizeISText("product.validation.completeness.jobstatus.hasexecuted","",null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Process:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>. 
<% } %> 
<% } %> 
<% } %> 
</td>
</tr>
</table>
<table class="infobox s e w" width="100%" cellspacing="0" cellpadding="0"> 
<tr>
<td colspan="2">
<label class="label label_light"> 
<% {out.write(localizeISText("product.validation.completeness.subheading",null,null,encodeString(context.getFormattedValue(getObject("ActiveValidationRulesNumber"),null)),null,null,null,null,null,null,null,null,null));} %>
&nbsp;<a class="selection_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {out.write(localizeISText("product.validation.completeness.configure.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a> 
</label> 
</td> 
</tr>
<tr>
<td>
<table class="infobox" cellspacing="0" cellpadding="0">
<tr>
<td>
<label class="label label_light" for="productset" ><% {out.write(localizeISText("product.validation.completeness.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
<td align="left"><% {Object temp_obj = (getObject("ProductValidationAssortmentConfigurationBORepository:AllProductValidationAssortmentConfigurationBOs")); getPipelineDictionary().put("ProductValidationAssortmentConfigurationBOs", temp_obj);} %><select id="ProductValidationOverviewForm_ProductAssortmentName" name="ProductValidationOverviewForm_ProductAssortmentName" class="rule_configuration_input select inputfield_en" style="width: 260px;"><% while (loop("ProductValidationAssortmentConfigurationBOs","ProductValidationAssortmentConfigurationBO",null)) { %><option <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ProductValidationOverviewForm:ProductAssortmentName:Value"),null).equals(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductValidationOverviewForm_ProductAssortmentName"),null).equals(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %> value='<%=context.getFormattedValue(context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:ID"),null),null)%>'><% {String value = null;try{value=context.getFormattedValue(getObject("ProductValidationAssortmentConfigurationBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
&nbsp;<a class="selection_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-List",null)))),null)%>"><% {out.write(localizeISText("product.validation.completeness.configure.productassortments.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
<tr>
</table>
</td> 
<td align="right">
<table>
<tr>
<td class="button">
<input class="button" name="runjob" value="<% {out.write(localizeISText("product.validation.completeness.run.button","",null,null,null,null,null,null,null,null,null,null,null));} %>" type="submit" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductValidationAssortmentConfigurationBOs")))).booleanValue() && ((Boolean) (hasLoopElements("ProductValidationAssortmentConfigurationBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((((Boolean) (((((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Process:Status")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Process:ExtendedStatus")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("ActiveValidationRulesNumber")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("AllProductsLocked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>disabled <% } %>>
</td>
</tr>
</table>
</td>
</tr>
</table>
<script language="javascript" type="text/javascript">
$(document).ready(function() {
// binds change callback function for product assortment selection box
$('#ProductValidationOverviewForm_ProductAssortmentName').bind('change', function(ev) {
var value = $(this).val();
var params = '?ProductValidationOverviewForm_ProductAssortmentName=' + value;
var progressIndicatorHTML = $('<table width="100%" cellspacing="0" cellpadding="0" border="0">' +
'<tr>' +
'<td align="center" width="100%">' +
'<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif" alt="Loading..." width="32" height="32" />' +
'</td>' +
'</tr>' +
'</table>');
var resultCtnr = $('#ProductValidationResultCtnr');
$(resultCtnr).html(progressIndicatorHTML);
$(resultCtnr).load("<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelProductStatistics-GetProductStatistics",null)))),null)%>" + params, 
function(responseText, responseStatus, req){
if (responseStatus == "error") {
var serverConnectionProblemHTML = $('<table cellspacing="0" cellpadding="4" border="0" class="error_box">' +
'<tr>' +
'<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>' +
'<td class="product_validation_error" width="100%">' +
'<% {out.write(localizeISText("product.validation.completeness.server.connection.problem","",null,null,null,null,null,null,null,null,null,null,null));} %>' +
'</td>' +
'</tr>' +
'</table>');
$(resultCtnr).html(serverConnectionProblemHTML);
}
}
);
});
}); 
</script>
<div id="ProductValidationResultCtnr"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"objectstatistics/inc/ChannelProductValidationStatisticsInc.isml", null, "116");} %></div><% out.print("</form>"); %><% printFooter(out); %>