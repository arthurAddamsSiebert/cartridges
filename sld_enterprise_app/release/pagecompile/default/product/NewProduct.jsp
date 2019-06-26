<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.CreateNewProductGeneral.text",null)))}, 5); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.NewProduct.text",null)))}, 7); %><% } %><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "11");} %><table border="0" cellpadding="0" cellspacing="0" width="100%" data-testing-id="page-bo-product-new-organization">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("sld_enterprise_app.NewProduct.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ExistingProduct")))).booleanValue() || ((Boolean) getObject("CreateProduct:ProductID:isMissing")).booleanValue() || ((Boolean) getObject("CreateProduct:ProductName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("BackFromImageSelection")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("sld_enterprise_app.ProductCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.ProductIDIsMandatoryPleaseProvideAProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.ProductNameIsMandatoryPleaseProvideAProductName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.PleaseProvideAUniqueProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExistingProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.PleaseProvideAUniqueProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO errors-->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("sld_enterprise_app.ClickApplyToSaveTheDetailsClickCancelToStopEveryth.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action107 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-New",null)))),null));String site107 = null;String serverGroup107 = null;String actionValue107 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-New",null)))),null);if (site107 == null){  site107 = action107.getDomain();  if (site107 == null)  {      site107 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup107 == null){  serverGroup107 = action107.getServerGroup();  if (serverGroup107 == null)  {      serverGroup107 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue107, site107, serverGroup107,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("sld_enterprise_app.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action108 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Dispatch",null)))),null));String site108 = null;String serverGroup108 = null;String actionValue108 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Dispatch",null)))),null);if (site108 == null){  site108 = action108.getDomain();  if (site108 == null)  {      site108 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup108 == null){  serverGroup108 = action108.getServerGroup();  if (serverGroup108 == null)  {      serverGroup108 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue108, site108, serverGroup108,true)); %><div style="display:none;visibility:hidden"><input type="submit" name="defaultCreate"></div>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/>
</td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="CreateProduct_ProductName"><% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="CreateProduct_ProductName"><% {out.write(localizeISText("sld_enterprise_app.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail">
<input type="text" name="CreateProduct_ProductName" id="CreateProduct_ProductName" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/NewProductIdAndAvailabilityInclude", null, "99");} %><tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreateProduct_ProductShortDescription"><% {out.write(localizeISText("sld_enterprise_app.ShortDescription.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductShortDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><textarea rows="3" cols="69" name="CreateProduct_ProductShortDescription" id="CreateProduct_ProductShortDescription" class="inputfield_en mce_editor"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentMasterRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("Configuration","Basic"),
new TagParameter("CategoryLinkSite",getObject("CurrentMasterRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-ExecutePreview"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("OrganizationDomain:UUID")),
new TagParameter("Name","UpdateProduct_ProductLongDescription")}, 105); %><% } else { %><textarea rows="3" cols="69" name="CreateProduct_ProductShortDescription" id="CreateProduct_ProductShortDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="CreateProduct_ProductLongDescription"><% {out.write(localizeISText("sld_enterprise_app.LongDescription.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLongDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %><textarea rows="10" cols="69" name="CreateProduct_ProductLongDescription" id="CreateProduct_ProductLongDescription" class="inputfield_en mce_editor"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductLongDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentMasterRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("Configuration","Advanced"),
new TagParameter("CategoryLinkSite",getObject("CurrentMasterRepository:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-ExecutePreview"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("OrganizationDomain:UUID")),
new TagParameter("Name","UpdateProduct_ProductLongDescription")}, 124); %><% } else { %><textarea rows="10" cols="69" name="CreateProduct_ProductLongDescription" id="CreateProduct_ProductLongDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductLongDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox"><% {out.write(localizeISText("sld_enterprise_app.Warranty.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%">
<table border="0" cellpadding="0" cellspacing="0"
<tr>
<td class="input_checkbox">
<input type="checkbox" name="CreateProduct_WarrantyEligible" id="CreateProduct_WarrantyEligible"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProduct:WarrantyEligible:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="CreateProduct_WarrantyEligible">can have a warranty</label></td>
</tr>
</table> 
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox"><% {out.write(localizeISText("sld_enterprise_app.GiftWrap.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%">
<table border="0" cellpadding="0" cellspacing="0"
<tr>
<td class="input_checkbox">
<input type="checkbox" name="CreateProduct_GiftWrappable" id="CreateProduct_GiftWrappable"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProduct:GiftWrappable:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="CreateProduct_GiftWrappable">can be wrapped as a gift</label></td>
</tr>
</table> 
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_checkbox"><% {out.write(localizeISText("sld_enterprise_app.ImageView.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%">
<select class="inputfield_en select" name="CreateProduct_PrimaryViewID">
<option value="">(<% {out.write(localizeISText("sld_enterprise_app.UseDefaultSetting.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option><% while (loop("ImageViews","ImageView",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>" title="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:Name"),null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("CreateProduct:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("CreateProduct:PrimaryViewID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %> 
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %> 
</select>
</td>
</tr>
</table>
</td>
<td valign="top">
<img class="aldi" style="margin-left:20px;margin-right:3px;margin-top:3px" alt="" src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-GenerateThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue("",null))).addURLParameter(context.getFormattedValue("RepositoryDomainId",null),context.getFormattedValue(getObject("Organization:Domain:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))),null)%>" />
</td>
<td width="100%">
&nbsp;
</td>
</tr>
<tr>
<td colspan="2">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/>
</td>
</tr>
<tr>
<td colspan="3" class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %><input type="hidden" name="ProductCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/><% } %><input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area -->
<script language="JavaScript" type="text/javascript">
<!--
document.formMask.CreateProduct_ProductName.focus();
//IE default submit solution. Not required for normal browsers
document.formMask.onkeydown=submitCreate;
function submitCreate(evt) {
evt = (evt) ? evt : event;
var charCode = (evt.charCode) ? evt.charCode :
((evt.which) ? evt.which : evt.keyCode);
if (charCode == 13) {
formMask.create.focus();
formMask.create.onkeypress();
return false;
}
return true;
}
//End of IE solution
-->
</script><% printFooter(out); %>