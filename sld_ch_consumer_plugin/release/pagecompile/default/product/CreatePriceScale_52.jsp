<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--CreatePriceScale.isml-->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelScalePricesWizard-SelectCurrency",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PriceListUUID",null),context.getFormattedValue(getObject("PriceListUUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("CreatePriceScale_52.Step2SetPriceAndQuantity.text",null)))}, 6); %><!-- EO Page Navigator -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("CreatePriceScale_52.NewPriceScaleStep2SetPriceAndQuantity.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- delete confirmation for Price Scales-->
<div id="confirmCat" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="18" height="16" alt="" border="0"/></td>
<td id="messi" class="error" width="100%"></td>
<td class="pnlr" nowrap="nowrap"><input type="button" name="ok" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.OK.delete_button",null)),null)%>" class="delete_button" onclick="removeThisPriceScale();"/>&nbsp;<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Cancel.delete_button",null)),null)%>" class="delete_button" onclick="document.getElementById('confirmCat').style.display='none';"/></td>
</tr>
</table>
</div>
<!-- EO delete confirmation for Price Scales-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("CreatePriceScale_52.Step2Of2YouCanEnterAFixedPriceForAQuantity.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action69 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewScalePricesWizard_52-Dispatch",null)))),null));String site69 = null;String serverGroup69 = null;String actionValue69 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewScalePricesWizard_52-Dispatch",null)))),null);if (site69 == null){  site69 = action69.getDomain();  if (site69 == null)  {      site69 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup69 == null){  serverGroup69 = action69.getServerGroup();  if (serverGroup69 == null)  {      serverGroup69 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewScalePricesWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue69, site69, serverGroup69,true)); %><input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TimeFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<!-- error message invalid date --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {out.write(localizeISText("CreatePriceScale_52.PleaseSpecifyACorrectValidFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndTime_ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><% {out.write(localizeISText("CreatePriceScale_52.PleaseSpecifyACorrectValidToDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- eo error message invalid date -->
<!-- error message date range invalid --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("CreatePriceScale_52.InvalidDateRangeTheValidToDateIsBeforeTheValidFromDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><td class="error" width="100%"><% {out.write(localizeISText("CreatePriceScale_52.InvalidDateRangeTheSpecifiedValidityPeriodConflicts.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% }} %></tr>
</table>
</td>
</tr><% } %><!-- eo error message date range invalid -->
<tr>
<td class = "w e s">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_StartDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("CreatePriceScale_52.ValidFrom.InputFieldLabel",null))),
new TagParameter("DateString",getObject("PriceTableForm_StartDate")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("ValidFrom_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 80); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_StartTime"),
new TagParameter("TimeString",getObject("PriceTableForm_StartTime")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("CreatePriceScale_52.Time.InputFieldLabel",null))),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("StartTime_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 86); %> 
<td width = "100%">&nbsp;</td>
</tr>
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_EndDate"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("CreatePriceScale_52.ValidTo.InputFieldLabel",null))),
new TagParameter("DateString",getObject("PriceTableForm_EndDate")),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("ValidTo_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 95); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","PriceTableForm_EndTime"),
new TagParameter("TimeString",getObject("PriceTableForm_EndTime")),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("CreatePriceScale_52.Time.InputFieldLabel",null))),
new TagParameter("Invalid",((((Boolean) ((disableErrorMessages().isDefined(getObject("EndTime_ErrorCode"))))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ValidFrom_gt_ValidTo",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 101); %><td width = "100%">&nbsp;</td>
</tr>
<tr>
<td colspan = "5" class="table_title_description"><% {out.write(localizeISText("CreatePriceScale_52.EnterValidFromToDateUsingPatternForAValidDate.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePatternUserHint"),null)),encodeString(context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePatternUserHint"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("DeletionKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("parametervalue3",getObject("UUID")),
new TagParameter("parametername1","ProductID"),
new TagParameter("parametervalue2",getObject("ChannelID")),
new TagParameter("subject",localizeText(context.getFormattedValue("CreatePriceScale_52.PriceScaleEntries.subject",null))),
new TagParameter("cancelbtnname","cancelDelete"),
new TagParameter("parametervalue1",getObject("Product:UUID")),
new TagParameter("parametername2","ChannelID"),
new TagParameter("parametername3","UUID"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","sdc"),
new TagParameter("class","w e s")}, 117); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) (hasLoopElements("DeletionKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("CreatePriceScale_52.PriceScaleEntry.subject",null))),
new TagParameter("type","mde"),
new TagParameter("class","w e s")}, 121); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("finish")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("NoPriceScalesDefined")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("CreatePriceScale_52.YouHaveNotDefinedAnyPriceScaleEntry.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
</td>
</tr><% } %><% {Object temp_obj = ("New"); getPipelineDictionary().put("Key", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ErrorKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("add")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("PercentageLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("AmountLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><% {out.write(localizeISText("CreatePriceScale_52.PleaseProvideAPositivePriceOrADiscountBe.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("QuantityParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("ValueParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("QuantityMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorMap:get(Key)"),null).equals(context.getFormattedValue("ValueMissing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% {out.write(localizeISText("CreatePriceScale_52.PleaseProvideValidQuantityAndPriceDiscount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
<% }} %></td> 
</tr>
</table> 
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DuplicateQuentityError")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("add")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DuplicateQuentityError"),null).equals(context.getFormattedValue("DuplicatedQuantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { %><% {out.write(localizeISText("CreatePriceScale_52.DuplicatedQuantityEntryPleaseProvideValidQuantity.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
<% } %> 
</td> 
</tr>
</table> 
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("InvalidKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("InvalidValuesMap")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("finish")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("CreatePriceScale_52.PriceScaleCouldNotCreatedFollowingValuesInvalid.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/> 
<% while (loop("InvalidKeys","Key",null)) { %><% {out.write(localizeISText("CreatePriceScale_52.Quantity.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <b><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap:get(Key)")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("InvalidQuantitiesMap:get(Key)"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>"<% {String value = null;try{value=context.getFormattedValue(getObject("InvalidQuantitiesMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } else { %><% {out.write(localizeISText("CreatePriceScale_52.NotSpecified.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b> - <% {out.write(localizeISText("CreatePriceScale_52.PriceDiscount.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <b><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InvalidValuesMap:get(Key)")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue(getObject("InvalidValuesMap:get(Key)"),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>"<% {String value = null;try{value=context.getFormattedValue(getObject("InvalidValuesMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } else { %><% {out.write(localizeISText("CreatePriceScale_52.NotSpecified.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b><br/><% } %> 
</td>
</tr>
</table> 
</td>
</tr><% } %><tr>
<td>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {195}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {196}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CurrencyMnemonic" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="BuyingOrganizationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BuyingOrganizationUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("BuyingOrganizationUUID"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><input type="hidden" name="TypeCode" value="1"/><% } else { %><input type="hidden" name="TypeCode" value="2"/><% } %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e s">
<tr>
<td class="infobox_title"><% {out.write(localizeISText("CreatePriceScale_52.NewPriceScaleEntry.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr><% {Object temp_obj = ("New"); getPipelineDictionary().put("Key", temp_obj);} %><td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("CreatePriceScale_52.Quantity.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" name="New_Quantity" maxlength="256" size="25" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %>value="<% {String value = null;try{value=context.getFormattedValue(getObject("New_Quantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en"/>&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("CreatePriceScale_52.PriceDiscount.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" name="New_Value" maxlength="256" size="25" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorMap:get(Key)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %>value="<% {String value = null;try{value=context.getFormattedValue(getObject("New_Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %> class="inputfield_en"/>&nbsp;&nbsp;</td> 
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td ><input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Add.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Keys") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','DeletionKey','A','B');" class="tableheader"><% {out.write(localizeISText("CreatePriceScale_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('formMask','DeletionKey','A','B');" class="tableheader"><% {out.write(localizeISText("CreatePriceScale_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s left"><% {out.write(localizeISText("CreatePriceScale_52.Quantity.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s left"><% {out.write(localizeISText("CreatePriceScale_52.PriceDiscount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% while (loop("Keys","Key",null)) { %><tr>
<td class="table_detail2 w e s center">
<input type="checkbox" name="DeletionKey" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("DeletionKeys") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",254,e);}if (_boolean_result) { %><% while (loop("DeletionKeys",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DeletionKeys"),null).equals(context.getFormattedValue(getObject("Key"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",254,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",254);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %> />
</td>
<td class="table_detail2 e s left">
<input type="hidden" name="Prefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="text" maxlength="256" size="25" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_QuantityUpdate" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("InvalidKeys") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("UpdateQuantityMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("QuantityMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Quantity" value="<% {String value = null;try{value=context.getFormattedValue(getObject("QuantityMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {257}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td class="table_detail2 e s left" width="100%">
<input type="text" maxlength="256" size="25" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_ValueUpdate" value="<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("InvalidKeys") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",259,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("UpdateValueMap:get(Key)"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("ValueMap:get(Key)"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Value" value="<% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("ValueMap:get(Key)"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {259}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("InvalidQuantitiesMap:get(Key)")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("InvalidValuesMap:get(Key)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",260,e);}if (_boolean_result) { %><div class="table_detail_icon">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</div><% } %></td> 
</tr><% } %> 
<% } else { %><tr>
<td colspan="3" class="table_detail w e s"><% {out.write(localizeISText("CreatePriceScale_52.ThereAreNoPriceScaleEntriesDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="selectCurrency" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",291,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Finish.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Keys") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Delete.button",null)),null)%>" class="button"/><% } %></td> 
<% } else { %><td class="button">
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Finish.button",null)),null)%>" class="button" disabled="disabled"/><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Keys") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",302,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Delete.button",null)),null)%>" class="button" disabled="disabled"/>
</td> 
<% } %></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePriceScale_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>