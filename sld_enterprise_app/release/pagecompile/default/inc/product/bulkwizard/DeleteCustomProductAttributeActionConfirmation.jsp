<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.sellside.enterprise.capi.bulkoperation.BulkOperationConfiguration"%>
<%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocalizationProvider"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.beehive.core.capi.localization.context.LocalizationContext"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--DeleteCustomAttributeActionConfirmation.isml--> 
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("Text",localizeText(context.getFormattedValue("DeleteCustomProductAttributeActionConfirmation.Step3Confirmation.Text",null)))}, 12); %><!-- EO Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e n s">
<tr>
<td class="table_title" colspan="2"><% {out.write(localizeISText("DeleteCustomProductAttributeActionConfirmation.Step3DeleteCustomProductAttribute.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("DeleteCustomProductAttributeActionConfirmation.ThisProductProcessingActionWillDelete.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action185 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));String site185 = null;String serverGroup185 = null;String actionValue185 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null);if (site185 == null){  site185 = action185.getDomain();  if (site185 == null)  {      site185 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup185 == null){  serverGroup185 = action185.getServerGroup();  if (serverGroup185 == null)  {      serverGroup185 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteCnfrmtnForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue185, site185, serverGroup185,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="2" class="table_title2 left s"><% {out.write(localizeISText("ConfirmBulkAction.ActionParameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Preserve operation parameters --><%
			LocalizationProvider localizationProvider = NamingMgr.getProvider(LocalizationProvider.class);
			PipelineDictionary dict = getPipelineDictionary();
			BulkOperationConfiguration configuration = dict.get("BulkOperationConfiguration");
			LocalizationContext localizationContext = LocalizationContext.create();
			for(String param : configuration.getParameters())
			{
			    dict.put("ParamName", param);
			    if(dict.getFormValues(param) != null)
			    {
				    for(String paramValue : dict.getFormValues(param))
				    {
				    	dict.put("ParamValue", paramValue);
						String key = "BulkOperationConfigurations." + configuration.getActionID() + "." + param;
						if(localizationProvider.getText(localizationContext, key) != null && !"".equals(paramValue))
						{
		%><tr>
<td class="table_detail e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("BulkOperationConfigurations.",null) + context.getFormattedValue(getObject("BulkOperationConfiguration:ActionID"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ParamName"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ParamValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><%
						}
			  		}
			    }
			}
		%></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e" >
<tr>
<td colspan="3" class="table_title2 left s"><% {out.write(localizeISText("ReplicationTargetListInc.AffectedItems.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Objects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><tr>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="40%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="20%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetProducts.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Objects","Product",null)) { %><tr>
<td class="table_detail e s top" ><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s top" nowrap="nowrap"><% {out.write(localizeISText("BrowseClassificationCatalog.Product.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %></table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "85");} %><input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AttributeLocale" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeLocale"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="deleteCustomAttribute" value="true"/>
<input type="hidden" name="ProcessDescription" value="<% {out.write(localizeISText("DeleteCustomProductAttributeActionConfirmation.DeletingCustomProductAttribute","",null,null,null,null,null,null,null,null,null,null,null));} %>"/>
<input type="hidden" name="ActionID" value="DeleteCustomProductAttribute"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="selectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Finish.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","Objects")}, 122); %></td>
</tr>
</table>
<!-- End Page Cursor --><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>