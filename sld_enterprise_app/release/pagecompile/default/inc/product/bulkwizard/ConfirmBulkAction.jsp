<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page
	import="com.intershop.sellside.enterprise.capi.bulkoperation.BulkOperationConfiguration"%>
<%@page
	import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page
	import="com.intershop.beehive.core.capi.localization.LocalizationProvider"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page
	import="com.intershop.beehive.core.capi.localization.context.LocalizationContext"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-ConfirmProcess",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeTextEx(context.getFormattedValue("ConfirmBulkAction.Step0ConfirmAction.text",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("ConfirmStep"),null)))))}, 13); %><!-- Title and Description --> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("ConfirmBulkAction.Step01ConfirmAction.table_title",null,null,encodeString(context.getFormattedValue(getObject("ConfirmStep"),null)),encodeString(context.getFormattedValue(getObject("ProcessDescription"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ConfirmBulkAction.Step0Of1ConfirmAction.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("ConfirmStep"),null)),encodeString(context.getFormattedValue(getObject("ConfirmStep"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action186 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));String site186 = null;String serverGroup186 = null;String actionValue186 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null);if (site186 == null){  site186 = action186.getDomain();  if (site186 == null)  {      site186 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup186 == null){  serverGroup186 = action186.getServerGroup();  if (serverGroup186 == null)  {      serverGroup186 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("bulkActionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue186, site186, serverGroup186,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0"
class="n">
<tr>
<td class="table_title2 left w e s"><% {out.write(localizeISText("sld_enterprise_app.Action.center",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ProcessDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"
class="w">
<tr>
<td colspan="3" class="table_title2 left s e"><% {out.write(localizeISText("ConfirmBulkAction.ActionParameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null).equals(context.getFormattedValue("UpdateProductStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><td class="table_header e s" nowrap="nowrap" width="20%"></td><% } %><td class="table_header e s" nowrap="nowrap" width="40%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductAttributeGroupDetails.AttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_header e s" nowrap="nowrap" width="40%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("BulkOperationConfigurations.UpdateCustomProductAttribute.CustomAttributeValue",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null).equals(context.getFormattedValue("UnassignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><% while (loop("SelectedLabels","Label",null)) { %><tr>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% while (loop("Labels","Label",null)) { %><tr>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } else { %><!-- Preserve operation parameters --><%
									    LocalizationProvider localizationProvider = NamingMgr.getProvider(LocalizationProvider.class);
									    PipelineDictionary dict = getPipelineDictionary();
									    BulkOperationConfiguration configuration = dict.get("BulkOperationConfiguration");
									    LocalizationContext localizationContext = LocalizationContext.create();
									    String localizationSource = dict.get("LocalizationSource");
									    for (String param : configuration.getParameters())
									    {
									        dict.put("ParamName", param);
									    if (dict.getFormValues(param) != null)
									        {

									            for (String paramValue : dict.getFormValues(param))
									            {

									                dict.put("ParamValue", paramValue);
									                String key = localizationSource + "." + configuration.getActionID() + "." + param;
									    if (localizationProvider.getText(localizationContext, key) != null && !"".equals(paramValue))
									                {
									%><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null).equals(context.getFormattedValue("UpdateProductStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><td class="table_detail e s" nowrap="nowrap" width="20%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ParamName"),null).equals(context.getFormattedValue("ProductApprovalStatusNew",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><% {out.write(localizeISText("ConfirmBulkAction.New.text",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ParamName"),null).equals(context.getFormattedValue("ProductApprovalStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><% {out.write(localizeISText("ConfirmBulkAction.Initial.text",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ParamName"),null).equals(context.getFormattedValue("ProductCompletenessStatus",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.write(localizeISText("ConfirmBulkAction.Initial.text",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("LocalizationSource"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ParamName"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("LocalizationSource"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ParamValue"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_detail e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(getObject("LocalizationSource"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ParamName"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ParamValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr><%
									    }

									            }
									        }
									    }
									%><% }} %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"
class="w">
<tr>
<td colspan="3" class="table_title2 left s e"><% {out.write(localizeISText("ReplicationTargetListInc.AffectedItems.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Objects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %><tr>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Objects","Product",null)) { %><tr>
<td class="table_detail e s top"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),null)%>"
class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s top" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),null)%>"
class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s top" nowrap="nowrap"><% {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0"
cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit"
name="selectAction"
value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>"
class="button" /></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "212");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProcessName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><input type="hidden"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true" /><% } %><input type="hidden" name="ProcessDescription"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProcessDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {218}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ActionID"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ActionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {220}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="IsSearchFired"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("FinishAction"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %><% {Object temp_obj = ("finish"); getPipelineDictionary().put("FinishAction", temp_obj);} %><% } %><td class="button"><input type="submit"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("FinishAction"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Finish.button",null)),null)%>"
class="button" /></td>
<td class="button"><input type="submit" name="cancel"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>"
class="button" /></td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1"
height="6" alt="" border="0" /></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Objects")}, 250); %></td>
</tr>
</table>
<!-- End Page Cursor --><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>