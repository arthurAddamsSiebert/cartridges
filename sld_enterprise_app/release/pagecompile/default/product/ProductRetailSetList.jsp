<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "3");} %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.RetailSet.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRetailSet-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("id","ProductDetails"),
new TagParameter("text",getObject("Product:Name"))}, 6); %><!-- Main Content --><% {Object temp_obj = ("RetailSet"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTabs", null, "10");} %><!-- EO Page Navigator --><% {Object temp_obj = ("true"); getPipelineDictionary().put("BtnEnabled", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Product:isProductMaster")).booleanValue() || ((Boolean) getObject("Product:ProductBundle")).booleanValue() || ((Boolean) getObject("Product:Bundled")).booleanValue() || ((Boolean) getObject("Product:PartOfRetailSet")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("BtnEnabled", temp_obj);} %><% } %><% URLPipelineAction action92 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRetailSet-Dispatch",null)))),null));String site92 = null;String serverGroup92 = null;String actionValue92 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRetailSet-Dispatch",null)))),null);if (site92 == null){  site92 = action92.getDomain();  if (site92 == null)  {      site92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup92 == null){  serverGroup92 = action92.getServerGroup();  if (serverGroup92 == null)  {      serverGroup92 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRetailSet-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue92, site92, serverGroup92,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e s table_title"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","retail set assignment"),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 28); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","retail set assignment"),
new TagParameter("type","mde")}, 30); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_RetailSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_RetailSet"),null).equals(context.getFormattedValue("QUANTITY_NOT_AVAILABLE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("sld_enterprise_app.NoQuantityCouldNotBeDeterminedForAtLeastOneOfThePr.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_RetailSet"),null).equals(context.getFormattedValue("LOOP_EXCEPTION",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><b><% {out.write(localizeISText("sld_enterprise_app.OneOfTheSelectedProductsWasARetailSetAndAddingThis.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% } else { %><b><% {out.write(localizeISText("sld_enterprise_app.ErrorWhileAssigningAProductToTheRetailSet.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% }} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_UP")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SELECTION_MOVE_DOWN")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="7">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedAnythingSelectPartOfTheRetailSet.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %> 
<!-- product locking information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductLockInformation", null, "70");} %><!-- end product locking information --><% } %><!-- product sharing information --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductSharingInformation", null, "74");} %><!-- end product sharing information -->
<tr>
<td valign="top" class="table_title_description w e"><% {out.write(localizeISText("sld_enterprise_app.TheListShowsTheProductsThatArePartOfTheRetailSet.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("sld_enterprise_app.ClickNewToAddProductsToTheList.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Product:BundledProductAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BtnEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.UseTheCheckboxesAndTheDeleteButtonToRemoveProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>.
<% } %></td>
</tr>
<tr>
<td class="table_title2 aldi" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Products.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Product:BundledProductAssignments") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BtnEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><td class="table_header e s center select_all" nowrap="nowrap">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_header e s left" width="10%"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><td class="table_header e s left" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr><% {Object temp_obj = ("True"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("BundledProductsCount", temp_obj);} %><% while (loop("BundledProducts","list",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("BundledProductsCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("BundledProductsCount", temp_obj);} %><% } %><% while (loop("BundledProducts","list",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><td class="table_detail e s center">
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("list:Product:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(list:Product:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(getObject("list:Product:UUID"),null)%>"/>
</td><% } %><td class="table_detail e s" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("list:Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("list:Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("list:Product:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("list:Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("list:Product:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("list:Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("list:Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("list:Product:isOnline"))).booleanValue() && !((Boolean) (getObject("list:Product:isAvailable"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>
&nbsp;
<% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DisplayRowSpan"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><td class="table_detail top e s center sort" nowrap="nowrap" rowspan="<% {String value = null;try{value=context.getFormattedValue(getObject("BundledProductsCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><td>
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="image" name="moveUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt=""/></td><% } else { %><td>
<input type="image" name="moveUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up_disabled.gif" alt="" disabled="disabled"/>
</td><% } %></tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><td><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="image" name="moveDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt=""/></td><% } else { %><td><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/><input type="image" name="moveDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down_disabled.gif" alt="" disabled="disabled"/></td><% } %></tr>
</table>
</td><% {Object temp_obj = ("False"); getPipelineDictionary().put("DisplayRowSpan", temp_obj);} %><% } %></tr><% } %><% } else { %><tr>
<td colspan="6" class="table_detail e s"><% {out.write(localizeISText("sld_enterprise_app.ThereAreCurrentlyNoProductsPartOfTheRetailSet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><tr>
<td colspan="6" class="e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<!-- product should not variation master and retail set at the same time-->
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BtnEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %><input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/>
<input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" class="button" disabled="disabled"/><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("BundledProducts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("BtnEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %><td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button" disabled="disabled"/><% } %></td><% } %></tr>
</table>
</td>
</tr><% } %></table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 aldi" nowrap="nowrap" colspan="5"><% {out.write(localizeISText("sld_enterprise_app.RetailSets.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("Product:ProductBundle") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) getObject("Product:PartOfRetailSet")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.ProductID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s right" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Price.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="table_header e s left" width="10%"><% {out.write(localizeISText("sld_enterprise_app.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Product:ProductBundle","list",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("list:isRetailSet"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("list:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("list:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {242}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDetails-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("list:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Products",null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("list:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {243}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s right" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("list:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {244}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("list:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",246,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Online.title",null)),null)%>" border="0"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("list:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_instock.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.InStock.title",null)),null)%>" border="0"/><% } %></td>
</tr><% } %><% } %><% } else { %><tr>
<td colspan="5" class="table_detail w e s"><% {out.write(localizeISText("sld_enterprise_app.ThisProductIsCurrentlyNotPartOfAnyRetailSet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% out.print("</form>"); %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ProductID"),
new TagParameter("pipeline","ViewProductRetailSet-Start"),
new TagParameter("currentobject",getObject("Product")),
new TagParameter("pagelocatorname","ProductList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 259); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>