<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--UpdatePriceScale.isml--><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("UpdatePriceScale_52.EditPriceScaleSetPriceAndQuantity.text",null)))}, 7); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("UpdatePriceScale_52.EditPriceScaleSetPriceAndQuantity.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- delete confirmation for Price Scales-->
<div id="confirmCat" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="18" height="16" alt="" border="0"/></td>
<td id="messi" class="error" width="100%"></td>
<td class="pnlr" nowrap="nowrap">
<input type="button" name="ok" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.OK.delete_button",null)),null)%>" class="delete_button" onclick="removeThisPriceScale();"/>&nbsp;
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Cancel.delete_button",null)),null)%>" class="delete_button" onclick="document.getElementById('confirmCat').style.display='none';"/>
</td>
</tr>
</table>
</div>
<!-- delete confirmation for Price Scales-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("UpdatePriceScale_52.SetOneScalePerCurrencyYouCanEnterAFixedPriceOrADiscount.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action71 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductScalePrices_52-Dispatch",null)))),null));String site71 = null;String serverGroup71 = null;String actionValue71 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductScalePrices_52-Dispatch",null)))),null);if (site71 == null){  site71 = action71.getDomain();  if (site71 == null)  {      site71 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup71 == null){  serverGroup71 = action71.getServerGroup();  if (serverGroup71 == null)  {      serverGroup71 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductScalePrices_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue71, site71, serverGroup71,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TimeFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<!-- check date pattern --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {out.write(localizeISText("UpdatePriceScale_52.PleaseSpecifyACorrectValidFromDateUsingThePattern.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {out.write(localizeISText("UpdatePriceScale_52.PleaseSpecifyACorrectValidToDateUsingThePattern.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% {out.write(localizeISText("UpdatePriceScale_52.InvalidDateRangeTheValidToDateIsBeforeTheValidFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("UpdatePriceScale_52.InvalidDateRangeTheSpecifiedValidityPeriodConflicts.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
</table> 
<% } %><table border="0" cellspacing="0" cellpadding="0" class = "w e s">
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_StartDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("UpdatePriceScale_52.ValidFrom.InputFieldLabel",null))),
new TagParameter("DateString",getObject("PriceTableForm_StartDate")),
new TagParameter("DateObject",getObject("Table:ValidFrom")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 77); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_StartTime"),
new TagParameter("TimeString",getObject("PriceTableForm_StartTime")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("UpdatePriceScale_52.Time.InputFieldLabel",null))),
new TagParameter("DateObject",getObject("Table:ValidFrom")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("StartTime_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 83); %><td width = "100%">&nbsp;</td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_EndDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("UpdatePriceScale_52.ValidTo.InputFieldLabel",null))),
new TagParameter("DateString",getObject("PriceTableForm_EndDate")),
new TagParameter("DateObject",getObject("Table:ValidTo")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 92); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_EndTime"),
new TagParameter("TimeString",getObject("PriceTableForm_EndTime")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("UpdatePriceScale_52.Time.InputFieldLabel",null))),
new TagParameter("DateObject",getObject("Table:ValidTo")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("EndTime_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 98); %><td width = "100%">&nbsp;</td>
</tr>
<tr>
<td colspan="5" class="table_title_description"><% {out.write(localizeISText("UpdatePriceScale_52.EnterValidFromToDateUsingPatternForAValidDate.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null)),encodeString(context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePatternUserHint"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("DeletionKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr>
<td class="error_icon"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="18" height="16" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("UpdatePriceScale_52.AreYouSureYouWantToDeleteThesePriceScaleEntries.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.OK.button",null)),null)%>" class="button"/></td><td>&nbsp;</td>
<td class="button"><input type="submit" name="cancelDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr>
</table> 
<% } %><!-- error message nothing selected --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("DeletionKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UpdatePriceScale_52.YouHaveNotSelectedAnyPriceScaleEntryToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% } %> 
<!-- eo message nothing selected --> 
<!-- error message no entry defined --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("apply")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("NoPriceScalesDefined")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UpdatePriceScale_52.YouHaveNotDefinedAnyPriceScaleEntry.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr>
</table><% } %> 
<!-- eo error message no entry defined -->
<!-- error messages add entry --><% {Object temp_obj = ("New"); getPipelineDictionary().put("Key", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ErrorKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("add")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("PercentageLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("AmountLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",181,e);}if (_boolean_result) { %><% {out.write(localizeISText("UpdatePriceScale_52.PleaseProvideAPositivePriceOrADiscountBetween.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("QuantityParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("ValueParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("QuantityMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("ValueMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><% {out.write(localizeISText("UpdatePriceScale_52.PleaseProvideValidQuantityAndPriceDiscount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
<% }} %> 
</td>
</tr>
</table>
</td>
</tr> 
</table><% } %><!-- eo error messages add entry -->
<!-- error message finish creation --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("InvalidKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("InvalidValuesMap")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("apply")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("UpdatePriceScale_52.PriceScaleCouldNotUpdatedCompletely.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/> 
<% while (loop("InvalidKeys","Key",null)) { %><% {out.write(localizeISText("UpdatePriceScale_52.Quantity.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <b><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap:get(Key)")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("InvalidQuantitiesMap:get(Key)"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>"<% {String value = null;try{value=context.getFormattedValue(getObject("InvalidQuantitiesMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } else { %><% {out.write(localizeISText("UpdatePriceScale_52.NotSpecified.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b> - <% {out.write(localizeISText("UpdatePriceScale_52.PriceDiscount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <b><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InvalidValuesMap:get(Key)")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("InvalidValuesMap:get(Key)"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>"<% {String value = null;try{value=context.getFormattedValue(getObject("InvalidValuesMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } else { %><% {out.write(localizeISText("UpdatePriceScale_52.NotSpecified.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b><br/><% } %> 
</td>
</tr>
</table>
</td>
</tr> 
</table><% } %><!-- eo error message finish creation -->
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("UpdatePriceScale_52.NewPriceScaleEntry.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr><% {Object temp_obj = ("New"); getPipelineDictionary().put("Key", temp_obj);} %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("UpdatePriceScale_52.Quantity.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" name="New_Quantity" maxlength="256" size="25" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",225,e);}if (_boolean_result) { %>value="<% {String value = null;try{value=context.getFormattedValue(getObject("New_Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {225}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en"/>&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("UpdatePriceScale_52.PriceDiscount.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" name="New_Value" maxlength="256" size="25" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %>value="<% {String value = null;try{value=context.getFormattedValue(getObject("New_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {227}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en"/>&nbsp;&nbsp;</td> 
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %> 
<input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Add.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Add.button",null)),null)%>" class="button" disabled="disabled"/><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Table:PriceScales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','DeletionKey','A','B');" class="tableheader"><% {out.write(localizeISText("UpdatePriceScale_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','DeletionKey','A','B');" class="tableheader"><% {out.write(localizeISText("UpdatePriceScale_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s left"><% {out.write(localizeISText("UpdatePriceScale_52.Quantity.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left"><% {out.write(localizeISText("UpdatePriceScale_52.PriceDiscount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr> 
<% while (loop("Table:PriceScales","Entry",null)) { %><tr>
<td class="table_detail2 w e s center"><input type="checkbox" name="DeletionKey" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {275}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("DeletionKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %><% while (loop("DeletionKeys",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DeletionKeys"),null).equals(context.getFormattedValue(getObject("Entry:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",275);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %> /></td>
<td class="table_detail2 e s left"><input type="hidden" name="Prefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="text" maxlength="256" size="25" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Quantity" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap:get(Entry:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",276,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("InvalidQuantitiesMap:get(Entry:UUID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:QuantityLevel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {276}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
<td class="table_detail2 e s left" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Entry:TypeCode")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",278,e);}if (_boolean_result) { %><input type="text" maxlength="256" size="25" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Value" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InvalidValuesMap:get(Entry:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",279,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("InvalidValuesMap:get(Entry:UUID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Entry:SingleBasePrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {279}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Entry:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",281,e);}if (_boolean_result) { %><input type="text" maxlength="256" size="25" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {282}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Value" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Entry:Percentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {282}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>%" class="inputfield_en"/><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap:get(Entry:UUID)")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("InvalidValuesMap:get(Entry:UUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",284,e);}if (_boolean_result) { %><div class="table_detail_icon">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</div><% } %></td> 
</tr><% } %> 
<% } else { %><tr>
<td colspan="3" class="table_detail w e s"><% {out.write(localizeISText("UpdatePriceScale_52.ThereAreNoPriceScaleEntriesDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table> 
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"> 
<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(getObject("Product:UUID"),null)%>"/> 
<input type="hidden" name="TableUUID" value="<%=context.getFormattedValue(getObject("Table:UUID"),null)%>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {309}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",310,e);}if (_boolean_result) { %><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Apply.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Apply.button",null)),null)%>" class="button" disabled="disabled"/><% } %> 
</td> 
<td class="button"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",317,e);}if (_boolean_result) { %> 
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Reset.button",null)),null)%>" class="button"/><% } else { %><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Reset.button",null)),null)%>" class="button" disabled="disabled"/><% } %> 
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Table:PriceScales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",323,e);}if (_boolean_result) { %><td class="button"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",325,e);}if (_boolean_result) { %> 
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Delete.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.Delete.button",null)),null)%>" class="button" disabled="disabled"/><% } %> 
</td><% } %></tr> 
</table>
</td>
</tr>
</table> 
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="cancel" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("UpdatePriceScale_52.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr> 
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>