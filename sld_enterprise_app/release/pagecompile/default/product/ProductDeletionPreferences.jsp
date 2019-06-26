<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PreferencesBreadcrumb", null, "2");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ProductDeletion.text",null)))}, 3); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><script language="JavaScript" type="text/javascript">
<!--
function checkSelectedRadio(isActivated) {
if(isActivated){
document.getElementById("SelectedProductDeletionStrategy_0").disabled=true
document.getElementById("SelectedProductDeletionStrategy_1").disabled=true
document.getElementById("SelectedProductDeletionStrategy_2").disabled=true
document.getElementById("RecycleBinOfferPropagation_true").disabled=false
document.getElementById("RecycleBinOfferPropagation_false").disabled=false
}
else{
document.getElementById("SelectedProductDeletionStrategy_0").disabled=false
document.getElementById("SelectedProductDeletionStrategy_1").disabled=false
document.getElementById("SelectedProductDeletionStrategy_2").disabled=false
document.getElementById("RecycleBinOfferPropagation_true").disabled=true
document.getElementById("RecycleBinOfferPropagation_false").disabled=true
}
}
-->
</script><% } %><% URLPipelineAction action84 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Update",null)))),null));String site84 = null;String serverGroup84 = null;String actionValue84 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Update",null)))),null);if (site84 == null){  site84 = action84.getDomain();  if (site84 == null)  {      site84 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup84 == null){  serverGroup84 = action84.getServerGroup();  if (serverGroup84 == null)  {      serverGroup84 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateDomainPreferenceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue84, site84, serverGroup84,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title w e s n"><% {out.write(localizeISText("sld_enterprise_app.ProductDeletion.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="confirm" width="100%"><% {out.write(localizeISText("sld_enterprise_app.PleaseSpecifyAValidProductDeletionStrategy.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("sld_enterprise_app.ActivateOrDeactivateTheProductRecycleBinAndSpecify.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class = "w e s">
<tr>
<td colspan="2">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tbody>
<tr>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_Deactivated" value="false" onclick="checkSelectedRadio(false)" checked="checked"/><% } else { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_Deactivated" value="false" onclick="checkSelectedRadio(false)"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_Deactivated" value="false" onclick="checkSelectedRadio(false)" disabled="disabled" checked="checked"/><% } else { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_Deactivated" value="false" onclick="checkSelectedRadio(false)" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="RecycleBinUsage_Deactivated"> <% {out.write(localizeISText("sld_enterprise_app.RecycleBinDeactivated.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="input_radio">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="30" height="1" border="0" alt=""/>
</td>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><input type="radio" id="SelectedProductDeletionStrategy_0" name="SelectedProductDeletionStrategy" value="0" checked="checked"/><% } else { %><input type="radio" id="SelectedProductDeletionStrategy_0" name="SelectedProductDeletionStrategy" value="0"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><input type="radio" id="SelectedProductDeletionStrategy_0" name="SelectedProductDeletionStrategy" value="0" disabled="disabled" checked="checked"/><% } else { %><input type="radio" id="SelectedProductDeletionStrategy_0" name="SelectedProductDeletionStrategy" value="0" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="SelectedProductDeletionStrategy_0"> <% {out.write(localizeISText("sld_enterprise_app.ForbidDeletionOfMasterProductsWithOffers.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="table_detail">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="30" height="1" border="0" alt=""/>
</td>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><input type="radio" id="SelectedProductDeletionStrategy_1" name="SelectedProductDeletionStrategy" value="1" checked="checked"/><% } else { %><input type="radio" id="SelectedProductDeletionStrategy_1" name="SelectedProductDeletionStrategy" value="1"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><input type="radio" id="SelectedProductDeletionStrategy_1" name="SelectedProductDeletionStrategy" value="1" disabled="disabled" checked="checked"/><% } else { %><input type="radio" id="SelectedProductDeletionStrategy_1" name="SelectedProductDeletionStrategy" value="1" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="SelectedProductDeletionStrategy_1"> <% {out.write(localizeISText("sld_enterprise_app.DeleteMasterProductsOnlyConvertRelatedOffersIntoPr.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_radio">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="30" height="1" border="0" alt=""/>
</td>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><input type="radio" id="SelectedProductDeletionStrategy_2" name="SelectedProductDeletionStrategy" value="2" checked="checked"/><% } else { %><input type="radio" id="SelectedProductDeletionStrategy_2" name="SelectedProductDeletionStrategy" value="2"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><input type="radio" id="SelectedProductDeletionStrategy_2" name="SelectedProductDeletionStrategy" value="2" disabled="disabled" checked="checked"/><% } else { %><input type="radio" id="SelectedProductDeletionStrategy_2" name="SelectedProductDeletionStrategy" value="2" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="SelectedProductDeletionStrategy_2"> <% {out.write(localizeISText("sld_enterprise_app.DeleteMasterProductsAndRelatedOffers.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tbody>
<tr>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_activated" value="true" onclick="checkSelectedRadio(true)" checked="checked"/><% } else { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_activated" value="true" onclick="checkSelectedRadio(true)"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_activated" value="true" onclick="checkSelectedRadio(true)" disabled="disabled" checked="checked"/><% } else { %><input type="radio" name="RecycleBinUsage" id="RecycleBinUsage_activated" value="true" onclick="checkSelectedRadio(true)" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="RecycleBinUsage_activated"> <% {out.write(localizeISText("sld_enterprise_app.RecycleBinActivated.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio" width="100%"></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td colspan="2">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="input_radio">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="30" height="1" border="0" alt=""/>
</td>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %><input type="radio" id="RecycleBinOfferPropagation_true" name="RecycleBinOfferPropagation" value="true" checked="checked"/><% } else { %><input type="radio" id="RecycleBinOfferPropagation_true" name="RecycleBinOfferPropagation" value="true"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><input type="radio" id="RecycleBinOfferPropagation_true" name="RecycleBinOfferPropagation" value="true" disabled="disabled" checked="checked"/><% } else { %><input type="radio" id="RecycleBinOfferPropagation_true" name="RecycleBinOfferPropagation" value="true" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="RecycleBinOfferPropagation_true"> <% {out.write(localizeISText("sld_enterprise_app.SelectedProductsAndTheirDerivedOffersAreMovedToThe.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="input_radio">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="30" height="1" border="0" alt=""/>
</td>
<td class="input_radio"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinOfferPropagation"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %><input type="radio" id="RecycleBinOfferPropagation_false" name="RecycleBinOfferPropagation" value="false" checked="checked"/><% } else { %><input type="radio" id="RecycleBinOfferPropagation_false" name="RecycleBinOfferPropagation" value="false"/><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinOfferPropagation"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><input type="radio" id="RecycleBinOfferPropagation_false" name="RecycleBinOfferPropagation" value="false" disabled="disabled" checked="checked"/><% } else { %><input type="radio" id="RecycleBinOfferPropagation_false" name="RecycleBinOfferPropagation" value="false" disabled="disabled"/><% } %><% } %></td>
<td class="label_radio_text" width="100%"><label class="label label_radio_text label_light" for="RecycleBinOfferPropagation_false"> <% {out.write(localizeISText("sld_enterprise_app.SelectedProductsAreMovedToTheRecycleBinTheirDerive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { %><script type="text/Javascript">
checkSelectedRadio(true)
</script><% } else { %><script type="text/Javascript">
checkSelectedRadio(false)
</script><% } %><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "281");} %><% printFooter(out); %>