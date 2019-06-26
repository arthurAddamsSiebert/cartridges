<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div id="ProductValidationAssortmentDialog" class="js-dialog" data-title="<% {out.write(localizeISText("app.Dialog.ProductValidationAssortment.Title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="650" height="650"><% URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null)))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null)))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationAssortmentList-Refresh",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductValidationAssortmentForm");out.print("\"");out.print(" id=\"");out.print("ProductValidationAssortmentForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); %><div class="dialog-content">
<table border="0" cellspacing="0" cellpadding="4" class="error_box">
<tr id="ProductValidationAssortmentConfigurationForm_AssortmentName_ErrorContainer" class="ErrorContainer" style="display:none;">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("product.validation.assortment.page.assortmentNameRequired","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
<tr id="ProductValidationAssortmentConfigurationForm_AssortmentType_ErrorContainer" class="ErrorContainer" style="display:none;">
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td width="100%" class="product_validation_error"><% {out.write(localizeISText("product.validation.assortment.page.assortmentTypeRequired","",null,null,null,null,null,null,null,null,null,null,null));} %>!</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td align="left" nowrap="nowrap" class="label" width="130"><label class="label" for="ProductValidationAssortmentConfigurationForm_AssortmentName"><% {out.write(localizeISText("product.validation.assortment.page.name","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td align="left" class="table_detail_without_bground"><input type="text" id="ProductValidationAssortmentConfigurationForm_AssortmentName" name="ProductValidationAssortmentConfigurationForm_AssortmentName" class="assortment_configuration_input inputfield_en" style="width: 260px;"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label" width="130"><label class="label" for="ProductValidationAssortmentConfigurationForm_AssortmentType"><% {out.write(localizeISText("product.validation.assortment.page.assortmentType","",null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="table_detail_without_bground">
<select id="ProductValidationAssortmentConfigurationForm_AssortmentType" name="ProductValidationAssortmentConfigurationForm_AssortmentType" class="assortment_configuration_input select inputfield_en" style="width: 270px;">
<option value=""><% {out.write(localizeISText("product.validation.assortment.page.selectProductAssortmentType","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("ProductValidationAssortmentConfigurationBORepository:AllProductValidationAssortmentDescriptors","AssortmentDescriptor",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("AssortmentDescriptor:ID"),null),(String)("\\."),(String)("_")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("productvalidationassortment.",null) + context.getFormattedValue(getObject("AssortmentDescriptor:ID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
</td>
</tr>
</table>
</td>
<td>
<input type="hidden" id="ProductValidationAssortmentID" name="ProductValidationAssortmentID" />
<input type="hidden" id="ProductValidationAssortmentDescriptorID" name="ProductValidationAssortmentDescriptorID" />
</td>
</tr>
<tr>
<td><img height="20" border="0" width="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
<tr>
<td valign="center">
<div align="center" id="LoadingAssortmentConfigurationIndicator" style="display: none;">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ajax-loader-small.gif" alt="<%=context.getFormattedValue(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelProductValidationAssortment.Loading.alt",null)),null) + context.getFormattedValue("...",null),null)%>" width="32" height="32" />
</div><% while (loop("ProductValidationAssortmentConfigurationBORepository:AllProductValidationAssortmentDescriptors","Assortment",null)) { %> 
<div id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("AssortmentDiv_",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("Assortment:ID"),null),(String)("\\."),(String)("_")),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="AssortmentDiv" style="display: none;">
</div><% } %></td>
</tr>
</table>
</div>
<div class="dialog-buttons">
<input type="button" class="button" id="applyAssortmentConfiguration" value="<% {out.write(localizeISText("app.Dialog.ProductValidationAssortment.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>" name="apply" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>disabled="true"<% } %> />
<input type="button" class="button" id="cancelAssortmentConfiguration" value="<% {out.write(localizeISText("app.Dialog.ProductValidationAssortment.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-action="dialog-close" name="cancel" />
</div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ChannelProductValidationAssortmentDialogScript.isml", null, "62");} %><% out.print("</form>"); %></div><% printFooter(out); %>