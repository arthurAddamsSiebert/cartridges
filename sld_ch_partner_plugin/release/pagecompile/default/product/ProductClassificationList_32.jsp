<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationList_32.Classifications.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),
new TagParameter("id","ChannelProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 5); %><%
getPipelineDictionary().put("SelectedTab", "Classifications");
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs_32", null, "10");} %><table border="0" cellpadding="0" cellspacing="0" width="100%" data-testing-id="page-bo-product-classification-list-partner">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirm")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-Dispatch",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-Dispatch",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); %> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ProductClassificationList_32.UnbindProductFrom0BCatalog.error",null,null,encodeString(context.getFormattedValue(getObject("confirm"),null)),null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ClassificationCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="unbind" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationList_32.OK.button",null)),null)%>" class="button"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductClassificationList_32.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<% } %><!-- product locking information --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %> 
<input type="hidden" name="locked" value="true"/> 
<% } %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation_32", null, "50");} %><!-- end product locking information --><% } %> 
<!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "54");} %><!-- end product sharing information -->
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ProductClassificationList_32.HereYouCanClassifyThisProductUsingTheAvailable.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><br/>
<br/><% {out.write(localizeISText("ProductClassificationList_32.ClickAssignToAssignThisProductToTheCorresponding.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><tr> 
<td class="table_header w n e s"><% {out.write(localizeISText("ProductClassificationList_32.ClassificationCatalog.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ProductClassificationList_32.ClassificationCategory.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="table_header n e s">&nbsp;</td> 
<% } %></tr><% while (loop("ClassificationCatalogs","list",null)) { %><tr>
<td class="table_detail bold w e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("list:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ClassificationMappings:get(list:OriginalCatalog:Id)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(pad(context.getFormattedValue(getObject("list:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("eCl@ss",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProducteClass_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("list:Root:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("list:Root:Domain:DomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(pad(context.getFormattedValue(getObject("list:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("UNSPSC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductUNSPSC_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("list:Root:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("list:Root:Domain:DomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("list:Id"),null).equals(context.getFormattedValue("ServiceTypes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("Product:DerivedProduct")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("list:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):Name"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %><% }} %><% } else { %><% {out.write(localizeISText("ProductClassificationList_32.Unassigned.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><td class="table_detail e s" nowrap="nowrap" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ClassificationMappings:get(list:OriginalCatalog:Id)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):ProductCategoryAssignment(Product):DomainID")))).booleanValue() && ((Boolean) ((((context.getFormattedValue((getObject("ClassificationMappings:get(list:OriginalCatalog:Id):ProductCategoryAssignment(Product):DomainID")),null).equals(context.getFormattedValue((getObject("CurrentSelectedChannel:DomainID")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("confirm",null),context.getFormattedValue(getObject("list:DisplayName"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("list:Id"),null))),null)%>" class="action_link"><% {out.write(localizeISText("ProductClassificationList_32.Unassign.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(pad(context.getFormattedValue(getObject("list:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("eCl@ss",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProducteClass_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("list:Root:Name"),null)).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("list:Root:Domain:DomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="action_link"><% {out.write(localizeISText("ProductClassificationList_32.Assign.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(pad(context.getFormattedValue(getObject("list:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("UNSPSC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductUNSPSC_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("list:Root:Name"),null)).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("list:Root:Domain:DomainName"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="action_link"><% {out.write(localizeISText("ProductClassificationList_32.Assign.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((!(context.getFormattedValue(getObject("list:Id"),null).equals(context.getFormattedValue("ServiceTypes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) getObject("Product:DerivedProduct")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassification_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("ClassificationCategoryID",null),context.getFormattedValue(getObject("ClassificationMappings:get(list:OriginalCatalog:Id):UUID"),null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("list:UUID"),null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("list:Root:Name"),null))),null)%>" class="action_link"><% {out.write(localizeISText("ProductClassificationList_32.Assign.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% }}} %><% } %> 
</td><% } %></tr><% } %><% } else { %><tr>
<td class="table_detail n w e s" colspan="3"><% {out.write(localizeISText("ProductClassificationList_32.ThereAreNoClassificationCatalogsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %></table>
</td>
</tr>
</table><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductClassification_32-List"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 125); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>