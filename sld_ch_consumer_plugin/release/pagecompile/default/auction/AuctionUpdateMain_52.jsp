<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "3");} %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null))))),
new TagParameter("id",getObject("Auction:UUID")),
new TagParameter("text",getObject("Auction:DisplayName"))}, 7); %><% URLPipelineAction action171 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Update",null)))),null));String site171 = null;String serverGroup171 = null;String actionValue171 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Update",null)))),null);if (site171 == null){  site171 = action171.getDomain();  if (site171 == null)  {      site171 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup171 == null){  serverGroup171 = action171.getServerGroup();  if (serverGroup171 == null)  {      serverGroup171 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuction_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue171, site171, serverGroup171,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Auction"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" style="position: absolute; top: -50000px"/><% } else { %> 
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button" style="position: absolute; top: -50000px"/> 
<% } %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionItems_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionPrice_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Pricing.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionExtension_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Extension.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAuctionAttachment_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AuctionUUID",null),context.getFormattedValue(getObject("Auction:UUID"),null)))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attachments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e">
<tr>
<td width="100%" class="table_title s"><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionGeneral.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:AuctionName:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:AuctionName:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:Recurring_Interval:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%">
<b><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:AuctionName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.AuctionNameIsMandatoryPleaseProvideAnAuctionName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:Recurring_Interval:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %> 
<% {out.write(localizeISText("AuctionUpdateMain_52.PleaseProvideAValidRecurringInterval.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:StartDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isMissing")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidStartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.StartDateIsMandatoryPleaseProvideACorrectStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:EndDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isMissing")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidEndDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.EndDateIsMandatoryPleaseProvideACorrectEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("EndDateSmallerCurrentDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("EndDateSmallerStartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideACorrectEndDateEndDateMustBeGreaterTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidRecurring",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideAValidRecurringDefinition.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCodeAnnounce"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><b><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionCouldNotBeAnnounced.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCodeAnnounce"),null).equals(context.getFormattedValue("NoAuctionItems",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionDoesNotHaveAnyAssignedAuctionItems.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCodeAnnounce"),null).equals(context.getFormattedValue("NoAuctionParticipants",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionDoesNotHaveAnyAssignedParticipants.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCodeAnnounce"),null).equals(context.getFormattedValue("InvalidIncrementValue",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionDoesNotHaveAValidSmallestPriceStepGreaterTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCodeCancel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%">
<b><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionCouldNotBeCanceled.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCodeCancel"),null).equals(context.getFormattedValue("WrongState",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% {out.write(localizeISText("AuctionUpdateMain_52.AuctionCannotBeLongerCanceledItHasNotGotAnAppropri.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table><% } %><!-- end errors-->
<!-- publish confirmation-->
<div id="confirm" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("AuctionUpdateMain_52.AreYouSureYouWantToAnnounceThisAuction.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="Announce" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AuctionUpdateMain_52.OK.button",null)),null)%>" class="button"/></td>
<td>&nbsp;</td>
<td class="button"><input type="button" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button" onclick="document.getElementById('confirm').style.display='none'"/></td>
</tr>
</table>
</td>
</tr>
</table>
</div>
<!-- Cancel confirmation-->
<div id="confirmCancel" style="display: none;">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AuctionUpdateMain_52.AreYouSureYouWantToCancelThisAuction.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="CancelAuction" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AuctionUpdateMain_52.Yes.button",null)),null)%>" class="button"/></td>
<td>&nbsp;</td>
<td class="button"><input type="button" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AuctionUpdateMain_52.No.button",null)),null)%>" class="button" onclick="document.getElementById('confirmCancel').style.display='none'"/></td>
</tr>
</table>
</td>
</tr>
</table>
</div>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td class="table_title_description"><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale e w s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<input type="hidden" name="webform-id" value="WFAuction"/>
<input type="hidden" name="AuctionUUID" value="<%=context.getFormattedValue(getObject("Auction:UUID"),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFAuction:AuctionName:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:AuctionName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>&nbsp;</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>&nbsp;</td><% } %><td class="table_detail" width="100%">
<input type="text" name="WFAuction_AuctionName" maxlength="400" size=70 value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction:AuctionName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { %><input type="hidden" name="WFAuction_StartDate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction_StartDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="WFAuction_EndDate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction_EndDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } else { %><input type="hidden" name="WFAuction_StartDate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:StartTime"),"yyyy-MM-dd, HH:mm",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="WFAuction_EndDate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:EndTime"),"yyyy-MM-dd, HH:mm",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type = "hidden" name = "DatePattern" value = "<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFAuction_StartDate_Time")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName","WFAuction_StartDate_Day"),
new TagParameter("DateString",getObject("WFAuction_StartDate_Day")),
new TagParameter("TimeInputFieldName","WFAuction_StartDate_Time"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("AuctionUpdateMain_52.Time.TimeInputFieldLabel",null))),
new TagParameter("InputLocale",getObject("Locale")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AuctionUpdateMain_52.StartDate.DateInputFieldLabel",null))),
new TagParameter("DateObject",getObject("Auction:StartTime")),
new TagParameter("Invalid",((((Boolean) getObject("WFAuction:StartDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:StartDate_Time:isMissing")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidStartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 188); %></tr>
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFAuction_EndDate_Time")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName","WFAuction_EndDate_Day"),
new TagParameter("DateString",getObject("WFAuction_EndDate_Day")),
new TagParameter("TimeInputFieldName","WFAuction_EndDate_Time"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("AuctionUpdateMain_52.Time.TimeInputFieldLabel",null))),
new TagParameter("InputLocale",getObject("Locale")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AuctionUpdateMain_52.EndDate.DateInputFieldLabel",null))),
new TagParameter("DateObject",getObject("Auction:EndTime")),
new TagParameter("Invalid",((((Boolean) getObject("WFAuction:EndDate_Day:isMissing")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Day:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isInvalid")).booleanValue() || ((Boolean) getObject("WFAuction:EndDate_Time:isMissing")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidEndDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 202); %></tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Type.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="radio" name="WFAuction_IsHidden" value="false"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("WFAuction:IsHidden:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { %>checked="checked"
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Auction:Definition:IsHidden"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %>checked="checked"
<% } %><% } %>/>Live
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail">
<input type="radio" name="WFAuction_IsHidden" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFAuction:IsHidden:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",233,e);}if (_boolean_result) { %>checked="checked"
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:IsHidden"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %>checked="checked"
<% } %><% } %>/>Hidden
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidReccuring",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",242,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap">Recurrence:&nbsp;</td><% } else { %><td class="fielditem2" nowrap="nowrap">Recurrence:</td><% } %><td>
<table cellpadding="0" cellspacing="0" border="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Auction:Definition:MaxRepeatingCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("InvalidReccuring",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",249,e);}if (_boolean_result) { %><tr>
<td class="table_detail" nowrap="nowrap">
<input type="radio" name="WFAuction_Recurring" value="false" />Do not recur this auction.
</td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="radio" name="WFAuction_Recurring" value="true" checked="checked" />Recur this auction
</td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="text" name="WFAuction_Recurring_Times" maxlength=5 size=4 value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:MaxRepeatingCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {262}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
times in an interval of
<input type="text" name="WFAuction_Recurring_Interval" maxlength=2 size=3 value="<% {String value = null;try{value=context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriod"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {264}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
<select name="WFAuction_Recurring_Interval_Unit" size="1" class="inputfield_en" style="width: 80px;"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Hour",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",266,e);}if (_boolean_result) { %><option value="Hour" selected/>Hour(s)</option>
<option value="Day">Day(s)</option>
<option value="Week">Week(s)</option>
<option value="Month">Month(s)</option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Day",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %><option value="Hour">Hour(s)</option>
<option value="Day" selected/>Day(s)</option>
<option value="Week">Week(s)</option>
<option value="Month">Month(s)</option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Week",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",276,e);}if (_boolean_result) { %><option value="Hour">Hour(s)</option>
<option value="Day">Day(s)</option>
<option value="Week" selected/>Week(s)</option>
<option value="Month">Month(s)</option><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Auction:Definition:RepeatingPeriodUnit"),null).equals(context.getFormattedValue("Month",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",281,e);}if (_boolean_result) { %><option value="Hour">Hour(s)</option>
<option value="Day">Day(s)</option>
<option value="Week">Week(s)</option>
<option value="Month" selected="selected">Month(s)</option><% } else { %><option value="Hour">Hour(s)</option>
<option value="Day">Day(s)</option>
<option value="Week">Week(s)</option>
<option value="Month">Month(s)</option><% }}}} %></select>
</td>
</tr><% } else { %><tr>
<td class="table_detail" nowrap="nowrap">
<input type="radio" name="WFAuction_Recurring" value="false" checked="checked" />Do not recur this auction.
</td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="radio" name="WFAuction_Recurring" value="true" />Recur this auction
</td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap">
<input type="text" name="WFAuction_Recurring_Times" maxlength=5 size=3 class="inputfield_en"/>
times in an interval of
<input type="text" name="WFAuction_Recurring_Interval" maxlength=2 size=3 class="inputfield_en"/>
<select name="WFAuction_Recurring_Interval_Unit" size="1" class="inputfield_en" style="width: 80px;">
<option value="Hour">Hour(s)</option>
<option value="Day">Day(s)</option>
<option value="Week">Week(s)</option>
<option value="Month">Month(s)</option>
</select>
</td>
</tr><% } %></table>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap">Description:</td>
<td class="table_detail">
<textarea rows="5" cols="69" name="WFAuction_AuctionShortDescription" class="inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAuction:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",326,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("WFAuction:AuctionShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {326}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Auction:ShortDescription(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {326}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Auction:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",341,e);}if (_boolean_result) { %><td class="button">
<input class="button" type="button" name="Announce" value="Announce" onclick="document.getElementById('confirm').style.display='block';document.getElementById('confirmCancel').style.display='none';"/>
</td><% } %><td class="button">
<input type="button" name="cancel" value="Cancel Auction" class="button" onclick="document.getElementById('confirmCancel').style.display='block';document.getElementById('confirm').style.display='none';"/>
</td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="update" value="Apply" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "362");} %><!-- EO Main Content -->
<!-- EO Working Area -->
<script language="javascript" type="text/javascript">
<!--
document.formMask.WFAuction_AuctionName.focus();
-->
</script><% printFooter(out); %>