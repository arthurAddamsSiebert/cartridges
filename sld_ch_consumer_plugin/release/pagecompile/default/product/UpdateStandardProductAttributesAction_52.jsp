<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-SelectNextPageByAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("UpdateStandardProductAttributes",null))).addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("PageableID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("UpdateStandardProductAttributesAction_52.Step2DefineAttributeValues.text",null)))}, 4); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.Step2UpdateStandardProductAttributes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s table_title_description"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.Step2Of3EnterOrSelectValuesForTheStandardProductAttributes.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action119 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));String site119 = null;String serverGroup119 = null;String actionValue119 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null);if (site119 == null){  site119 = action119.getDomain();  if (site119 == null)  {      site119 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup119 == null){  serverGroup119 = action119.getServerGroup();  if (serverGroup119 == null)  {      serverGroup119 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue119, site119, serverGroup119,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="s">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.OnlineStatus.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail" width="100%"><select
name="ProductOnlineStatus" class="inputfield_en"
style="width: 255px;" width="100%">
<option value="">(<% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
<option value="online" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductOnlineStatus"),null).equals(context.getFormattedValue("online",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.Online.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="offline" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductOnlineStatus"),null).equals(context.getFormattedValue("offline",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.Offline.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.ProductAvailability.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><select name="ProductAvailableStatus"
class="inputfield_en" style="width: 255px;">
<option value="">(<% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</option>
<option value="available" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductAvailableStatus"),null).equals(context.getFormattedValue("available",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.InStock.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="unavailable" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductAvailableStatus"),null).equals(context.getFormattedValue("unavailable",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.OutOfStock.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="8" alt="" border="0" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.EANCode.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text" name="NewEANCode"
maxlength="400" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewEANCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.DeliveryTimeWorkingDays.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text"
name="NewDeliveryDays" maxlength="3" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewDeliveryDays"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="inputfield_en" /></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
width="1" height="8" alt="" border="0" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.BaseUnitBU.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text" name="NewBaseUnit"
maxlength="400" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewBaseUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.PackingUnitPU.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text"
name="NewPackingUnit" maxlength="400" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewPackingUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="inputfield_en" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.RatioBUPU.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text"
name="NewRatioBasePackingUnit" maxlength="400" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewRatioBasePackingUnit"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="inputfield_en" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.MinimumOrderQuantity.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text"
name="NewMinOrderQuantity" maxlength="12" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewMinOrderQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="inputfield_en" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.OrderStepQuantity.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><input type="text"
name="NewStepQuantity" maxlength="12" size="40" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewStepQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="inputfield_en" /></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.ProductDetailsTemplate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td class="table_detail"><% processOpenTag(response, pageContext, "producttemplates", new TagParameter[] {
new TagParameter("FormParameterName","NewTemplate"),
new TagParameter("SelectBoxStyle","select"),
new TagParameter("ShowSelectBox","true")}, 95); %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FreightClassesIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.FreightClass.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" colspan="3">
<select NAME="NewFreightClassID" class="dropdown inputfield_en" >
<option value=""></option>
<option value="NONE"><% {out.write(localizeISText("UpdateStandardProductAttributesAction_52.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("FreightClassesIterator","FreightClass",null)) { %><option value="FC_<% {String value = null;try{value=context.getFormattedValue(getObject("FreightClass:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("FreightClass:displayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr><% } %><tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0" /></td>
</tr>
</table>
<table class="w e" width="100%" border="0" cellspacing="0"
cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "125");} %><input type="hidden" name="updateStandardAttributes" value="true"/>
<input type="hidden" name="ProcessName" value="updateStandardAttributes"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateStandardProductAttributesAction_52.UpdatingStandardProductAttributes.input",null)),null)%>"/>
<input type="hidden" name="ActionID" value="UpdateStandardProductAttributes" class="button" />
<input type="hidden" name="ConfirmStep" value="3"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="actionList" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateStandardProductAttributesAction_52.Previous.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="confirm"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateStandardProductAttributesAction_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button" /></td>
<td class="button"><input type="submit" name="cancel"
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdateStandardProductAttributesAction_52.Cancel.button",null)),null)%>" class="button" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>