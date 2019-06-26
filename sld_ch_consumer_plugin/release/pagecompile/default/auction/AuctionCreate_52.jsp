<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.CreateNewAuctionGeneral.text",null)))}, 3); %><% URLPipelineAction action167 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Dispatch",null)))),null));String site167 = null;String serverGroup167 = null;String actionValue167 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Dispatch",null)))),null);if (site167 == null){  site167 = action167.getDomain();  if (site167 == null)  {      site167 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup167 == null){  serverGroup167 = action167.getServerGroup();  if (serverGroup167 == null)  {      serverGroup167 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue167, site167, serverGroup167,true)); %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Product.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extension.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr>
<td width="100%" class="table_title s"><% {out.write(localizeISText("sld_ch_consumer_plugin.CreateNewAuctionGeneral.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:AuctionName:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:AuctionName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%">
<b><% {out.write(localizeISText("AuctionCreate_52.AuctionCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:AuctionName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionCreate_52.AuctionNameIsMandatoryPleaseProvideAnAuctionName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:StartDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidStartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionCreate_52.StartDateIsMandatoryPleaseProvideACorrectStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:EndDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidEndDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionCreate_52.EndDateIsMandatoryPleaseProvideACorrectEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("EndDateSmallerCurrentDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("EndDateSmallerStartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionCreate_52.PleaseProvideACorrectEndDateEndDateMustBeGreaterTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidRecurring",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionCreate_52.PleaseProvideAValidRecurringDefinition.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale e w s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("AuctionCreate_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</td>
<td width="100%"> 
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<!-- Addition of hidden button to make "Apply" button clicked on press of "Enter" key-->
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.input",null)),null)%>" style="position: absolute; height: 0px; width: 0px; border: none; padding: 0px;" hidefocus="true" tabindex="-1"/>
<!-- End of hidden button-->
<td class="button"><input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<input type="hidden" name="webform-id" value="WFAuction"/>
<input type="hidden" name="ListType" value="New"/>
<input type="hidden" name="LimitedAuctionCancelPeriodString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LimitedBidCancelPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LimitedAuctionCancelPeriodUnitString" value="3600"/>
<input type="hidden" name="BidCancelPeriodString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BidCancelPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="BidCancelPeriodUnitString" value="3600"/>
<input type="hidden" name="CurrencyMnemonic" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:AuctionName:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:AuctionName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>&nbsp;</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>&nbsp;</td><% } %><td class="table_detail">
<input type="text" name="WFAuction_AuctionName" maxlength="400" size=70 value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction:AuctionName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
<input type="hidden" name="WFAuction_StartDate" value=""/>
<input type="hidden" name="WFAuction_EndDate" value=""/>
<input type = "hidden" name = "DatePattern" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("WFAuction_StartDate_Day")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><%
						java.util.Date defaultStart = new java.util.Date();
						java.util.Date defaultEnd = new java.util.Date(defaultStart.getTime() + 7*24*60*60*1000); // plus 7 days
						getPipelineDictionary().put("DefaultStart",defaultStart);
						getPipelineDictionary().put("DefaultEnd",defaultEnd);
					%><% } %></td>
</tr>
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFAuction_StartDate_Time")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName","WFAuction_StartDate_Day"),
new TagParameter("DateString",getObject("WFAuction_StartDate_Day")),
new TagParameter("TimeInputFieldName","WFAuction_StartDate_Time"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("AuctionCreate_52.Time.TimeInputFieldLabel",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AuctionCreate_52.StartDate.DateInputFieldLabel",null))),
new TagParameter("DateObject",getObject("DefaultStart")),
new TagParameter("Invalid",((((Boolean) getObject("WFAuction:StartDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidStartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 114); %></tr>
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFAuction_EndDate_Time")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName","WFAuction_EndDate_Day"),
new TagParameter("DateString",getObject("WFAuction_EndDate_Day")),
new TagParameter("TimeInputFieldName","WFAuction_EndDate_Time"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("AuctionCreate_52.Time.TimeInputFieldLabel",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AuctionCreate_52.EndDate.DateInputFieldLabel",null))),
new TagParameter("DateObject",getObject("DefaultEnd")),
new TagParameter("Invalid",((((Boolean) getObject("WFAuction:EndDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidEndDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 127); %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionCreate_52.Type.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail" width="100%">
<input type="radio" name="WFAuction_IsHidden" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("WFAuction:IsHidden:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% {out.write(localizeISText("sld_ch_consumer_plugin.Live.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail">
<input type="radio" name="WFAuction_IsHidden" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:IsHidden:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% {out.write(localizeISText("sld_ch_consumer_plugin.Hidden.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidReccuring",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Recurrence.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td> 
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="radio" name="WFAuction_Recurring" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:Recurring:Value"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% {out.write(localizeISText("AuctionCreate_52.DoNotRecurThisAuction.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="radio" name="WFAuction_Recurring" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:Recurring:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% {out.write(localizeISText("AuctionCreate_52.RecurThisAuction.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="text" name="WFAuction_Recurring_Times" maxlength=5 size=3 class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction:Recurring_Times:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% {out.write(localizeISText("AuctionCreate_52.TimesInAnIntervalOf.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="text" name="WFAuction_Recurring_Interval" maxlength=2 size=3 value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction:Recurring_Interval:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
<select name="WFAuction_Recurring_Interval_Unit" size="1" class="inputfield_en" style="width: 80px;">
<option value="Hour" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:Recurring_Interval_Unit:Value"),null).equals(context.getFormattedValue("Hour",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %>selected<% } %>/><% {out.write(localizeISText("AuctionCreate_52.HourS.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Day" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:Recurring_Interval_Unit:Value"),null).equals(context.getFormattedValue("Day",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>selected<% } %>/><% {out.write(localizeISText("AuctionCreate_52.DayS.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Week" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:Recurring_Interval_Unit:Value"),null).equals(context.getFormattedValue("Week",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %>selected<% } %>/><% {out.write(localizeISText("AuctionCreate_52.WeekS.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="Month" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("WFAuction:Recurring_Interval_Unit:Value"),null).equals(context.getFormattedValue("Month",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { %>selected<% } %>/><% {out.write(localizeISText("AuctionCreate_52.MonthS.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("AuctionCreate_52.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<textarea rows="5" cols="69" name="WFAuction_AuctionShortDescription" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction:AuctionShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr> 
<tr>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td colspan="2" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area -->
<script language="javascript" type="text/javascript">
<!--
document.formMask.WFAuction_AuctionName.focus();
-->
</script><% printFooter(out); %>