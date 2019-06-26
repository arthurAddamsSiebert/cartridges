<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/Modules", null, "5");} %><!-- Main Content --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",context.getFormattedValue("New Promotion - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(getObject("TemplateConfig:LocalizationKey"),null)),null)),
new TagParameter("id","newPromotion")}, 9); %><h1 class="headline headline-top"><% {out.write(localizeISText("promotion.create.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1><% URLPipelineAction action242 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTemplate-Dispatch",null)))),null));String site242 = null;String serverGroup242 = null;String actionValue242 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTemplate-Dispatch",null)))),null);if (site242 == null){  site242 = action242.getDomain();  if (site242 == null)  {      site242 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup242 == null){  serverGroup242 = action242.getServerGroup();  if (serverGroup242 == null)  {      serverGroup242 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionTemplate-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue242, site242, serverGroup242,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("promotionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><input type="hidden" name="promotionTemplate" value="<% {String value = null;try{value=context.getFormattedValue(getObject("promotionTemplate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePromotionWithTemplate.Apply.button",null)),null)%>" class="button" style="position: absolute; top: -50000px"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 n e w s"><% {out.write(localizeISText(context.getFormattedValue(getObject("TemplateConfig:LocalizationKey"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table class="s" border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_Promotion")))).booleanValue() || ((Boolean) getObject("PromotionAppAssignmentForm:isError(\"error.Application\")")).booleanValue() || ((Boolean) getObject("ActionForm:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %> 
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><% {out.write(localizeISText("error.general","",null,null,null,null,null,null,null,null,null,null,null));} %></b><br/><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/createPromotionErrorTemplates/generalErrors.isml", null, "42");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("TemplateConfig:ErrorTemplate"),null), null, "45");} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description s w e"><% {out.write(localizeISText("promotion.mandatory.attributes",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("promotion.hint.apply.cancel",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("promotion.template.common.hint","",null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PromotionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("promotion.template.freeshipping.hint","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td> 
</tr>
</table>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e">
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="LocaleID"><% {out.write(localizeISText("promotion.select.language","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="infobox_item">
<select name="LocaleID" id="LocaleID" class="select inputfield_en"><% while (loop("AllLocales","Locale",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocaleEdit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePromotionWithTemplate.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="aldi">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr>
<input type="hidden" value="on" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:MultipleAllowed:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<td class="label" width="300"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><label class="label label_error" for="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("promotion.input.name","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></label><% } else { %><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("promotion.input.name","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></label><% } %></td>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td class="table_detail">
<input class="inputfield_en" type="text" maxlength="400" size="60" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="label"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:PID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><label class="label label_error" for="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CreatePromotionWithTemplate.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label><% } else { %><label class="label" for="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("CreatePromotionWithTemplate.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label><% } %></td>
<td class="table_detail">
<input class="inputfield_en" type="text" maxlength="400" size="60" id="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Apps")))).booleanValue() && ((Boolean) (hasLoopElements("Apps") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><tr>
<td class="label_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionAppAssignmentForm:isError(\"error.Application\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><label class="label label_checkbox label_error"><% {out.write(localizeISText("promotion.input.application","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></label><% } else { %><label class="label label_checkbox"><% {out.write(localizeISText("promotion.input.application","",null,null,null,null,null,null,null,null,null,null,null));} %><span class="star">*</span></label><% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% while (loop("Apps","App","appCounter")) { %><% if (((Integer)getObject("appCounter")) != 1 && ((Integer)getObject("appCounter")) % 3 == 1) { %></tr>
<tr><% } %><% {Object temp_obj = (getObject("appCounter")); getPipelineDictionary().put("APP_IT_Counter", temp_obj);} %><td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><input type="checkbox" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% } else { %><input type="checkbox" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %>checked="checked"<% } %>
disabled="disabled"
/><% } %></td>
<td class="label_checkbox_text">
<label class="label label_checkbox_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(App:UUID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("App:DisplayName(SelectedLocale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("App:DisplayName(SelectedLocale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("App:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></label>
</td><% } %><% if (((Integer)getObject("APP_IT_Counter")) % 3 != 0) { %><td colspan="<%=3 * (3 - ((Integer)getObject("APP_IT_Counter")) % 3) %>">&nbsp;</td><% } %></tr>
</table>
</td>
</tr><% } %><tr>
<td class="label_select"><label class="label label_select" for="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" ><% {out.write(localizeISText("CreatePromotionWithTemplate.Currency.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<select class="select inputfield_en" 
id="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("Currencies","Currency",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("PromotionForm:Currency:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr><td colspan="2" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr><%
							getPipelineDictionary().put("currentDate", new java.util.Date());
					 	%><td class="table_title2 s" nowrap="nowrap" colspan="2"><% {out.write(localizeISText("promotion.heading.activation","",null,null,null,null,null,null,null,null,null,null,null));} %><span style="font-weight:normal">(<% {out.write(localizeISText("CreatePromotionWithTemplate.Timezone.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: <% {String value = null;try{value=context.getFormattedValue(getObject("currentDate"),"zzzz",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</span></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" height="4" alt="" border="0"/></td></tr>
<tr>
<td class="label_radio label_top"><label class="label label_radio"><% {out.write(localizeISText("promotion.input.activation.date","",null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:StartDate:Invalid")).booleanValue() || ((Boolean) (((((Boolean) getObject("PromotionForm:EndDate:Invalid")).booleanValue() && ((Boolean) getObject("PromotionForm:EndDate:Error(\"error.dateafter\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("invalidstartdate", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("invalidstartdate", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Readonly","false"),
new TagParameter("TimeString",getObject("PromotionForm:StartDate:StartDate_Time:Value")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("PromotionForm:StartDate:StartDate_Day:QualifiedName")),
new TagParameter("DateString",getObject("PromotionForm:StartDate:StartDate_Day:Value")),
new TagParameter("TimeInputFieldName",getObject("PromotionForm:StartDate:StartDate_Time:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AssignedPromotionsList.StartDate.link",null))),
new TagParameter("DateObject",getObject("PromotionForm:StartDate:Value")),
new TagParameter("Invalid",getObject("invalidstartdate"))}, 218); %></tr>
<tr>
<td>&nbsp;</td><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Readonly","false"),
new TagParameter("TimeString",getObject("PromotionForm:EndDate:EndDate_Time:Value")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("PromotionForm:EndDate:EndDate_Day:QualifiedName")),
new TagParameter("DateString",getObject("PromotionForm:EndDate:EndDate_Day:Value")),
new TagParameter("TimeInputFieldName",getObject("PromotionForm:EndDate:EndDate_Time:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("ChannelShortLinkList.EndDate.link",null))),
new TagParameter("DateObject",getObject("PromotionForm:EndDate:Value")),
new TagParameter("Invalid",getObject("PromotionForm:EndDate:Invalid"))}, 232); %></tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("promotionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %><tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("marketing/inc/",null) + context.getFormattedValue(getObject("promotionTemplate"),null),null), null, "253");} %></tr><% } %><tr>
<td colspan="2" class="s e w"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="2" align="right" class="s w e">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(".All.",null).equals(context.getFormattedValue(getObject("PromotionForm:Currency:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Promotion")))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("Promotion:Currency"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",264,e);}if (_boolean_result) { %><input type="hidden" name="GeneralPromotionInformation_Unlimited" value="true"/><% } else { %><input type="hidden" value="dummy" name="<% {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:BudgetNotification:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {267}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {269}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {269}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePromotionWithTemplate.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {272}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CreatePromotionWithTemplate.Cancel.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>