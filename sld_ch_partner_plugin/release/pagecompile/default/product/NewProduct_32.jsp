<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewProduct_32.NewProduct.text",null)))}, 4); %><table border="0" cellspacing="0" cellpadding="0" data-testing-id="page-bo-product-new-partner">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.OnlineOffline.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Variations.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Pricing.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Classifications.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Attachments.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Links.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Bundles.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:CM_PERMISSION_ASSIGN"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.CMCContent.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.RetailSet.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Sharing.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Labels.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewProduct_32.NewProduct.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ExistingProduct")))).booleanValue() || ((Boolean) getObject("CreateProduct:ProductID:isMissing")).booleanValue() || ((Boolean) getObject("CreateProduct:ProductName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("BackFromImageSelection")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewProduct_32.ProductCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProduct_32.ProductIDIsMandatoryPleaseProvideAProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProduct_32.ProductNameIsMandatoryPleaseProvideAProductName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProduct_32.PleaseProvideAUniqueProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExistingProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProduct_32.PleaseProvideAUniqueProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO errors-->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("NewProduct_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action33 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-New",null)))),null));String site33 = null;String serverGroup33 = null;String actionValue33 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-New",null)))),null);if (site33 == null){  site33 = action33.getDomain();  if (site33 == null)  {      site33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup33 == null){  serverGroup33 = action33.getServerGroup();  if (serverGroup33 == null)  {      serverGroup33 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue33, site33, serverGroup33,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProduct_32.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action34 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-Dispatch",null)))),null));String site34 = null;String serverGroup34 = null;String actionValue34 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-Dispatch",null)))),null);if (site34 == null){  site34 = action34.getDomain();  if (site34 == null)  {      site34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup34 == null){  serverGroup34 = action34.getServerGroup();  if (serverGroup34 == null)  {      serverGroup34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue34, site34, serverGroup34,true)); %><div style="display:none;visibility:hidden"><input type="submit" name="defaultCreate"></div>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="CreateProduct_ProductName" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/NewProductIdAndAvailabilityInclude", null, "103");} %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.ShortDescription.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<textarea rows="3" cols="69" id="CreateProduct_ProductShortDescription" name="CreateProduct_ProductShortDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductShortDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("Configuration","Basic"),
new TagParameter("Enabled","true"),
new TagParameter("NoRepositoryLinks","true"),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name","CreateProduct_ProductShortDescription")}, 111); %><% } %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.LongDescription.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<textarea rows="10" cols="69" id="CreateProduct_ProductLongDescription" name="CreateProduct_ProductLongDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductLongDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLongDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("Configuration","Advanced"),
new TagParameter("Enabled","true"),
new TagParameter("NoRepositoryLinks","true"),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name","CreateProduct_ProductLongDescription")}, 125); %><% } %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.Warranty.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%">
<table border="0" cellpadding="0" cellspacing="0"
<tr>
<td>
<input type="checkbox" name="CreateProduct_WarrantyEligible"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProduct:WarrantyEligible:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td type="fielditem2">&nbsp;can have a warranty</td>
</tr>
</table> 
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewProduct_32.GiftWrap.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%">
<table border="0" cellpadding="0" cellspacing="0"
<tr>
<td>
<input type="checkbox" name="CreateProduct_GiftWrappable"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProduct:GiftWrappable:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td type="fielditem2">&nbsp;can be wrapped as a gift</td>
</tr>
</table> 
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_checkbox"><% {out.write(localizeISText("NewProduct_32.ImageView.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%">
<select name="CreateProduct_PrimaryViewID">
<option value="">(<% {out.write(localizeISText("NewProduct_32.UseDefaultSetting.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option><% while (loop("ImageViews","ImageView",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>" title="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:Name"),null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("CreateProduct:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("CreateProduct:PrimaryViewID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %> 
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
</table>
</td>
<td valign="top">
<img class="aldi" style="margin-left:20px;margin-right:3px;margin-top:3px" src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-GenerateThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Width",null),context.getFormattedValue("100",null))).addURLParameter(context.getFormattedValue("Height",null),context.getFormattedValue("100",null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue("",null)).addURLParameter(context.getFormattedValue("RepositoryDomainId",null),context.getFormattedValue(getObject("CurrentChannel:Domain:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))),null)%>" alt=""/>
</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="3" class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><input type="hidden" name="ProductCategoryID" value="<%=context.getFormattedValue(getObject("Category:UUID"),null)%>"/><% } %><input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProduct_32.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProduct_32.Cancel.button",null)),null)%>" class="button"/></td>
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