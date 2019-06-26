<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"preview/Modules", null, "2");} %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid",getObject("SourceProduct:UUID")),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMain_52.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("id","ChannelProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 5); %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs_52", null, "10");} %><table border="0" cellpadding="0" cellspacing="0" width="100%" data-testing-id="page-bo-product-edit-general-tab-channel">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"GeneralErrorLineExtensions", null, "18");} %><!-- delete confirmation--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("Product:getOffersCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Product:OfferedProduct:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%"
class="confirm_box w e s">
<tr>
<td class="error_icon e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
border="0" /></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.UnableToDeleteProductBecauseOfExistingOffers.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td><% URLPipelineAction action61 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));String site61 = null;String serverGroup61 = null;String actionValue61 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null);if (site61 == null){  site61 = action61.getDomain();  if (site61 == null)  {      site61 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup61 == null){  serverGroup61 = action61.getServerGroup();  if (serverGroup61 == null)  {      serverGroup61 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue61, site61, serverGroup61,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%"
class="confirm_box"><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue4",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1",context.getFormattedValue("ProductID_",null) + context.getFormattedValue(getObject("Product:UUID"),null)),
new TagParameter("parametervalue2",getObject("Product:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUpdateMain_52.Product.subject",null))),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","ProductID"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("okbtnname","deleteSingleProduct"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUpdateMain_52.AreYouSureYouWantToDeleteThisProduct.message",null))),
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("parametername4","ChannelID")}, 43); %></table><% out.print("</form>"); %></td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DeletionOfDefaultVariationProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"
class="confirm_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoNewDefaultVariationProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue5","true"),
new TagParameter("parametervalue4",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1",context.getFormattedValue("ProductID_",null) + context.getFormattedValue(getObject("Product:UUID"),null)),
new TagParameter("parametervalue2",getObject("Product:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUpdateMain_52.Product.subject",null))),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","ProductID"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("okbtnname","applySharedOfflineProduct"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUpdateMain_52.SetSharedDefaultVariationProductOffline.message",null))),
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelDefaultVariationDelete"),
new TagParameter("parametername4","ChannelID"),
new TagParameter("parametername5","applySharedDefaultVariation")}, 63); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue5","true"),
new TagParameter("parametervalue4",getObject("CurrentChannel:UUID")),
new TagParameter("parametervalue3",getObject("Locale:LocaleID")),
new TagParameter("parametername1",context.getFormattedValue("ProductID_",null) + context.getFormattedValue(getObject("Product:UUID"),null)),
new TagParameter("parametervalue2",getObject("Product:UUID")),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUpdateMain_52.Product.subject",null))),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","ProductID"),
new TagParameter("parametername3","LocaleId"),
new TagParameter("okbtnname","applyOfflineProduct"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUpdateMain_52.SetDefaultVariationProductOffline.message",null))),
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelDefaultVariationDelete"),
new TagParameter("parametername4","ChannelID"),
new TagParameter("parametername5","applyDefaultVariation")}, 72); %><% } %></table>
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("applySharedDefaultVariation")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("applyOfflineProduct")))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductBORepository:ProductBOByID(ProductID):ProductBOMaster:AttributeValue(\"MasterProductOfflineByVariation\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductBORepository:ProductBOByID(ProductID):ProductBOMaster:AttributeValue(\"MasterProductOfflineByVariation\"):StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%"
class="information w e s">
<tr>
<td class="e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" width="16" height="15" alt=""
border="0" />
</td>
<td class="information" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.TheProductVariationWithSKUIsNewDefaultVariant.message",null,null,getObject("ProductBO:ProductBOMaster:DefaultVariationProductBO:SKU"),getObject("ProductBO:ProductBOMaster:DefaultVariationProductBO:Name"),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MasterProductReturnedOnline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%"
class="information w e s">
<tr>
<td class="e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" width="16" height="15" alt=""
border="0" />
</td>
<td class="information" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.TheDefaultProductSetOnlineToo.message",null,null,getObject("ProductBO:DefaultVariationProductBO:SKU"),getObject("ProductBO:DefaultVariationProductBO:Name"),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("applySharedDefaultVariation")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("applyOfflineProduct")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Product:ProductMaster:AttributeValue(\"MasterProductOfflineByVariation\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Product:ProductMaster:AttributeValue(\"MasterProductOfflineByVariation\"):StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%"
class="information w e s">
<tr>
<td class="e"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/information.gif" width="16" height="15" alt=""
border="0" />
</td>
<td class="information" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.MasterVariationWasSetToOfflineToo.message",null,null,getObject("ProductBO:ProductBOMaster:DefaultVariationProductBO:SKU"),getObject("ProductBO:ProductBOMaster:DefaultVariationProductBO:Name"),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductDeletionFailed")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductDeletionFailed"),null).equals(context.getFormattedValue("OffersExist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.ProductCouldNotBeDeletedBecauseItIsOffered.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductDeletionFailed")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductDeletionFailed"),null).equals(context.getFormattedValue("ProductReferencesExist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.YouCannotDeleteTheProductBecauseItIsSharedFromMaster.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProductDeletionFailed")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductDeletionFailed"),null).equals(context.getFormattedValue("CacheClearFailed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductUpdateMain_52.TheProductCannotBeDeletedSeeErrorLog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewProductError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("previewError",getObject("PreviewProductError"))}, 193); %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("confirmPreview")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><% URLPipelineAction action62 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));String site62 = null;String serverGroup62 = null;String actionValue62 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null);if (site62 == null){  site62 = action62.getDomain();  if (site62 == null)  {      site62 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup62 == null){  serverGroup62 = action62.getServerGroup();  if (serverGroup62 == null)  {      serverGroup62 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("deleteForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue62, site62, serverGroup62,true)); %><input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {200}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("itemType","product"),
new TagParameter("previewMessage",getObject("confirmPreview"))}, 201); %><% out.print("</form>"); %><% }} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %><tr>
<td>
<!-- product locking information --><% URLPipelineAction action63 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null));String site63 = null;String serverGroup63 = null;String actionValue63 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null);if (site63 == null){  site63 = action63.getDomain();  if (site63 == null)  {      site63 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup63 == null){  serverGroup63 = action63.getServerGroup();  if (serverGroup63 == null)  {      serverGroup63 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null)))),null));out.print("\"");out.print(" name=\"");out.print("setStatus");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue63, site63, serverGroup63,true)); %><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation_52", null, "211");} %><% out.print("</form>"); %><!-- end product locking information -->
</td>
</tr><% } %> 
<!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "218");} %><!-- end product sharing information -->
<tr>
<td class="table_title_description w e"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductUpdateMain_52.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br />
<br /><% {out.write(localizeISText("ProductUpdateMain_52.YouHaveToLockTheProductBeforeYouCanEditIt.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductUpdateMain_52.YouCanViewInformationInOtherLanguagesIfRequired.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% URLPipelineAction action64 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null)))),null));String site64 = null;String serverGroup64 = null;String actionValue64 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null)))),null);if (site64 == null){  site64 = action64.getDomain();  if (site64 == null)  {      site64 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup64 == null){  serverGroup64 = action64.getServerGroup();  if (serverGroup64 == null)  {      serverGroup64 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue64, site64, serverGroup64,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%"
class="infobox_locale aldi">
<tr>
<input type="hidden" name="VariationCheckTarget" value="ViewProduct_52-Edit" />
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("ProductUpdateMain_52.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {243}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",244,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {244}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select></td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="ChannelID"
value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CurrentChannel:UUID"),null)),null)%>" /> <input type="hidden"
name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" /> <input
type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMain_52.Apply.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action65 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));String site65 = null;String serverGroup65 = null;String actionValue65 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null);if (site65 == null){  site65 = action65.getDomain();  if (site65 == null)  {      site65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup65 == null){  serverGroup65 = action65.getServerGroup();  if (serverGroup65 == null)  {      serverGroup65 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue65, site65, serverGroup65,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%"
class="w e s">
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1"
height="4" alt="" border="0" /></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label" for="UpdateProduct_ProductName"><% {out.write(localizeISText("ProductUpdateMain_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",277,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="UpdateProduct_ProductName"><% {out.write(localizeISText("ProductUpdateMain_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="UpdateProduct_ProductName"><% {out.write(localizeISText("ProductUpdateMain_52.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% }} %><td class="table_detail">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UpdateProduct:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",287,e);}if (_boolean_result) { %><input type="text" name="UpdateProduct_ProductName" id="UpdateProduct_ProductName" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {288}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />&nbsp;
<% } else { %><input type="text" name="UpdateProduct_ProductName" id="UpdateProduct_ProductName" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {290}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>&nbsp;
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",293,e);}if (_boolean_result) { %><input type="text" name="UpdateProduct_ProductName" id="UpdateProduct_ProductName" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {294}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />&nbsp;
<% } else { %><input type="text" name="UpdateProduct_ProductName" id="UpdateProduct_ProductName" maxlength="400" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {296}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled"/>&nbsp;
<% } %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.preview.ApplicationBOPreviewExtension\"):PreviewTargetApplicationBO(CurrentUser)"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",300,e);}if (_boolean_result) { %><td><% processOpenTag(response, pageContext, "previewicon", new TagParameter[] {
new TagParameter("previewURL",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-PreviewProduct",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("Product:SKU"),null))))),
new TagParameter("contextPipeline","ViewProduct_52-Edit"),
new TagParameter("contextValue0",getObject("ChannelID")),
new TagParameter("contextValue1",getObject("Product:UUID")),
new TagParameter("imageTitle",localizeText(context.getFormattedValue("ProductUpdateMain_52.OpenASitePreviewDirectlyOnTheProductDetailPage.imageTitle",null))),
new TagParameter("imageAlt",localizeText(context.getFormattedValue("ProductUpdateMain_52.OpenASitePreviewDirectlyOnTheProductDetailPage.imageAlt",null))),
new TagParameter("contextParameter0","ChannelID"),
new TagParameter("contextParameter1","ProductID")}, 303); %></td><% } %></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Product:OfferedProduct")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("Product:OfferedProductID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",317,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("ProductUpdateMain_52.BasedOnProduct.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {out.write(localizeISText("ProductUpdateMain_52.XOfY.table_detail",null,null,encodeString(context.getFormattedValue(getObject("Product:OfferedProduct:SKU"),null)),encodeString(context.getFormattedValue(getObject("Product:OfferedProduct:Domain:DomainName"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUpdateMainIdAndAvailabilityInclude", null, "323");} %><tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="UpdateProduct_ProductShortDescription"><% {out.write(localizeISText("ProductUpdateMain_52.ShortDescription.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",328,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",329,e);}if (_boolean_result) { %><textarea rows="3" cols="70" name="UpdateProduct_ProductShortDescription" id="UpdateProduct_ProductShortDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {331}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="3" cols="70" name="UpdateProduct_ProductShortDescription" id="UpdateProduct_ProductShortDescription" class="inputfield_en" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {335}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",339,e);}if (_boolean_result) { %><textarea rows="3" cols="70" name="UpdateProduct_ProductShortDescription" id="UpdateProduct_ProductShortDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ShortDescription(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {341}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="3" cols="70" name="UpdateProduct_ProductShortDescription" id="UpdateProduct_ProductShortDescription" class="inputfield_en" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:ShortDescription(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {345}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductShortDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",350,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("Configuration","Basic"),
new TagParameter("CategoryLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled",((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name","UpdateProduct_ProductShortDescription")}, 351); %><% } %></tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="UpdateProduct_ProductLongDescription"><% {out.write(localizeISText("ProductUpdateMain_52.LongDescription.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",365,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",366,e);}if (_boolean_result) { %><textarea rows="10" cols="70" name="UpdateProduct_ProductLongDescription" id="UpdateProduct_ProductLongDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductLongDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {368}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="10" cols="70" name="UpdateProduct_ProductLongDescription" id="UpdateProduct_ProductLongDescription" class="inputfield_en" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateProduct:ProductLongDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {372}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",376,e);}if (_boolean_result) { %><textarea rows="10" cols="70" name="UpdateProduct_ProductLongDescription" id="UpdateProduct_ProductLongDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:LongDescription(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {378}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="10" cols="70" name="UpdateProduct_ProductLongDescription" id="UpdateProduct_ProductLongDescription" class="inputfield_en" disabled="disabled"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:LongDescription(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {382}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLongDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",387,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("Configuration","Advanced"),
new TagParameter("CategoryLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled",((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name","UpdateProduct_ProductLongDescription")}, 388); %><% } %></tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="UpdateProduct_PrimaryViewID"><% {out.write(localizeISText("ProductUpdateMain_52.PrimaryImageView.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",402,e);}if (_boolean_result) { %><select name="UpdateProduct_PrimaryViewID" id="UpdateProduct_PrimaryViewID" class="select inputfield_en image_view_select">
<option value="">(<% {out.write(localizeISText("ProductUpdateMain_52.UseDefaultSetting.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option><% while (loop("ImageViewBOs","ImageView",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>" title="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:Name"),null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) ((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("Product:PrimaryViewID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("UpdateProduct:PrimaryViewID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",407,e);}if (_boolean_result) { %> 
selected="selected"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {413}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } else { %><select name="UpdateProduct_PrimaryViewID" id="UpdateProduct_PrimaryViewID" class="select image_view_select" disabled="disabled">
<option value="">(<% {out.write(localizeISText("ProductUpdateMain_52.UseDefaultSetting.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option><% while (loop("ImageViewBOs","ImageView",null)) { %><option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>" title="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {421}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("Product:PrimaryViewID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",422,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {422}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } %></td>
</tr>
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="4" alt="" border="0" /></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox" for=""><% {out.write(localizeISText("ProductUpdateMain_52.Warranty.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td width="100%">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct:WarrantyEligible:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Product:WarrantyEligible")))).booleanValue() && ((Boolean) getObject("Product:WarrantyEligible")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",439,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",441,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateProduct_WarrantyEligible" id="UpdateProduct_WarrantyEligible" checked="checked"/><% } else { %><input type="checkbox" name="UpdateProduct_WarrantyEligible" id="UpdateProduct_WarrantyEligible" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",447,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateProduct_WarrantyEligible" id="UpdateProduct_WarrantyEligible"/><% } else { %><input type="checkbox" name="UpdateProduct_WarrantyEligible" id="UpdateProduct_WarrantyEligible" disabled="disabled"/><% } %><% } %></td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="UpdateProduct_WarrantyEligible"><% {out.write(localizeISText("ProductUpdateMain_52.CanHaveAWarranty.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table> 
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox"><% {out.write(localizeISText("ProductUpdateMain_52.GiftWrap.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td width="100%">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_checkbox" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((((Boolean) getObject("UpdateProduct:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct_ProductName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("UpdateProduct:GiftWrappable:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:Extension(\"Gifting\"):isEligibleForGiftWrapping")))).booleanValue() && ((Boolean) getObject("ProductBO:Extension(\"Gifting\"):isEligibleForGiftWrapping")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",465,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",467,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateProduct_GiftWrappable" id="UpdateProduct_GiftWrappable" checked="checked"/><% } else { %><input type="checkbox" name="UpdateProduct_GiftWrappable" id="UpdateProduct_GiftWrappable" checked="checked" disabled="disabled"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",473,e);}if (_boolean_result) { %><input type="checkbox" name="UpdateProduct_GiftWrappable" id="UpdateProduct_GiftWrappable"/><% } else { %><input type="checkbox" name="UpdateProduct_GiftWrappable" id="UpdateProduct_GiftWrappable" disabled="disabled"/><% } %><% } %></td>
<td class="label_checkbox_text"><label class="label label_checkbox_text label_light" for="UpdateProduct_GiftWrappable"><% {out.write(localizeISText("ProductUpdateMain_52.CanBeWrappedAsAGift.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table> 
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox"><% {out.write(localizeISText("ProductUpdateMain_52.Labels.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td width="100%" class="table_detail">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",492,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isLabelEnabled", temp_obj);} %> 
<% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isLabelEnabled", temp_obj);} %> 
<% } %> 
<% processOpenTag(response, pageContext, "labelmultiselect", new TagParameter[] {
new TagParameter("jscustomization","/js/isselect2.js"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-GetLabelsByPrefix",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("isLabelEnabled",getObject("isLabelEnabled")),
new TagParameter("AssignedLabels",getObject("AssignedLabels"))}, 497); %> 
</td> 
</tr>
</table> 
</td>
</tr>
</table>
</td>
<td valign="top"><% {Object temp_obj = (getObject("ProductImageBO:EffectiveUrl")); getPipelineDictionary().put("ProductImageEffectiveUrl", temp_obj);} %><div class="product_details_image"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductImageEffectiveUrl")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProductImageEffectiveUrl"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",509,e);}if (_boolean_result) { %><img class="aldi" style="margin-left:20px; margin-right:3px; margin-top:3px" src="<%=context.getFormattedValue(getObject("ProductImageEffectiveUrl"),null)%>" border="0" alt=""/><% } else { %><img class="aldi" style="margin-left:20px; margin-right:3px; margin-top:3px" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/no_image_available.gif" border="0" alt=""/><% } %></div>
</td>
<td width="100%">&nbsp;</td>
</tr>
<tr>
<td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1"
height="4" alt="" border="0" /></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",522,e);}if (_boolean_result) { %><tr>
<td align="right" colspan="4" class="n">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"GeneralButtonsExtensions", null, "527");} %></tr>
</table>
</td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10"
alt="" border="0" /></div><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUpdateCategoriesSection_52", null, "538");} %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0" /></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductUpdateMainImagesInclude_52", null, "541");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/OnlineDefaultVariationHandlingBehaviors", null, "542");} %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProduct_52-Edit"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 544); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>