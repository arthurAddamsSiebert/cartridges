<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",localizeText(context.getFormattedValue("ApplicationPreferencePromotionBudgetNotification.BudgetNotification.text1",null))),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceBudgetNotification-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null))))),
new TagParameter("id","PromotionPreferences"),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionBudgetNotification.PromotionPreferences.text",null)),null) + context.getFormattedValue(":",null))}, 5); %><!-- Tabs --><% {Object temp_obj = ("PromotionBudgetNotification"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionApplicationPreferencesTabsInc", null, "8");} %><!-- EO Tabs --><% URLPipelineAction action338 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceBudgetNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));String site338 = null;String serverGroup338 = null;String actionValue338 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceBudgetNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null);if (site338 == null){  site338 = action338.getDomain();  if (site338 == null)  {      site338 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup338 == null){  serverGroup338 = action338.getServerGroup();  if (serverGroup338 == null)  {      serverGroup338 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationPromotionPreferenceBudgetNotification-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("NotificationList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue338, site338, serverGroup338,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s" colspan="4"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PromotionBudgetNotification.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.DataCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:AddressEmailFrom:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PleaseProvideAValidEmailAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetExhaustedEmailTemplate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PleaseProvideATemplateForNotificationMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetExhaustedEmailSubject:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PleaseProvideASubjectForBudgetExhaustedMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetThresholdReachedEmailTemplate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PleaseProvideATemplateForBudgetThresholdMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetThresholdEmailSubject:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PleaseProvideASubjectForBudgetThresholdMail.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.PleaseSpecifyTheAttributesForBudgetNotificationMails.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>:
<ul>
<li>{{PROMOTION}} = <% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.NameOfThePromotion",null,null,null,null,null,null,null,null,null,null,null,null));} %></li> 
<li>{{BUDGET}} = <% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.BudgetValue",null,null,null,null,null,null,null,null,null,null,null,null));} %></li>
<li>{{THRESHOLD}} = <% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.BudgetPercentageThreshold",null,null,null,null,null,null,null,null,null,null,null,null));} %></li>
</ul>
</td>
</tr>
<tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleID" class="select"><% while (loop("AllLocales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<!-- <input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/> -->
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionBudgetNotification.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w e s" colspan="4">
<table border="0" cellspacing="0" cellpadding="5">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:AddressEmailFrom:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap" width="20%"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.EmailFromAddress.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:AddressEmailFrom:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="70" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:AddressEmailFrom:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail" width="30%"/>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetExhaustedEmailTemplate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap" width="20%"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.EmailTemplateBudgetExhausted.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetExhaustedEmailTemplate:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="70" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetExhaustedEmailTemplate:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail" width="30%"/>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetExhaustedEmailSubject:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap" width="20%"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.EmailSubjectBudgetExhausted.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetExhaustedEmailSubject:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="70" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetExhaustedEmailSubject:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td> 
<td class="table_detail" width="30%"/>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetThresholdReachedEmailTemplate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap" width="20%"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.EmailTemplateBudgetThresholdReached.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetThresholdReachedEmailTemplate:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="70" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetThresholdReachedEmailTemplate:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail" width="30%"/>
</tr>
<tr>
<td class="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("NotificationSettings:BudgetThresholdEmailSubject:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>fielditem2_error<% } else { %>fielditem2<% } %>" nowrap="nowrap" width="20%"><% {out.write(localizeISText("ApplicationPreferencePromotionBudgetNotification.EmailSubjectBudgetThreshold.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</td>
<td class="table_detail">
<input type="text" name="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetThresholdEmailSubject:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="70" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("NotificationSettings:BudgetThresholdEmailSubject:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td> 
<td class="table_detail" width="30%"/>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="right" colspan="4" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<!-- <input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> -->
<!-- <input type="hidden" name="LocaleID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> -->
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationPreferencePromotionBudgetNotification.Apply.button",null)),null)%>" class="button" />
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>