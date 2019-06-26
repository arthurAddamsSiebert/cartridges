<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelApps-RestorePage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("Pattern",null),context.getFormattedValue(getObject("Pattern"),null)))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ApplicationRecentlyViewedItemsPreferences.Applications.text",null)))}, 4); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationRecentlyViewedItemsPreferences.RecentlyViewedItems.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationRecentlyViewedItemsPreferences-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("Application:UUID"),null)))),
new TagParameter("id",getObject("Application:UUID")),
new TagParameter("text",getObject("Application:DisplayName"))}, 5); %><% {Object temp_obj = ("Recently Viewed Items"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"app/AppTabs.isml", null, "8");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue() && ((Boolean) (getObject("ApplicationRecentlyViewedItemsPreference:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ExpirationType:Value"),null).equals(context.getFormattedValue("Time",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("ApplicationRecentlyViewedItemsPreference:ItemsLifetime:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ErrorSet", temp_obj);} %><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.PleaseSpecifyAValidDuration.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationRecentlyViewedItemsPreference:ProductListSize:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><br/><% } else { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ErrorSet", temp_obj);} %><% } %><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.PleaseSpecifyAValidNumberOfProductsValue.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationRecentlyViewedItemsPreference:CategoryListSize:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><br/><% } else { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ErrorSet", temp_obj);} %><% } %><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.PleaseSpecifyAValidNumberOfCategoriesValue.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationRecentlyViewedItemsPreference:SearchKeywordListSize:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorSet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><br/><% } %><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.PleaseSpecifyAValidNumberOfSearchTermsValue.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.ClickApplyToSaveTheDetailsClickResetToDiscard.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% URLPipelineAction action342 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationRecentlyViewedItemsPreferences-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));String site342 = null;String serverGroup342 = null;String actionValue342 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationRecentlyViewedItemsPreferences-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null);if (site342 == null){  site342 = action342.getDomain();  if (site342 == null)  {      site342 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup342 == null){  serverGroup342 = action342.getServerGroup();  if (serverGroup342 == null)  {      serverGroup342 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewApplicationRecentlyViewedItemsPreferences-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ApplicationUUID",null),context.getFormattedValue(getObject("ApplicationUUID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ApplicationPreferenceGeneral");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue342, site342, serverGroup342,true)); %> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="s">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title2 w e s" colspan="4"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.ExpirationModel.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
<tr>
<td class="label_radio" width="15%" nowrap="nowrap">
<label class="label label_radio <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ExpirationType:Value"),null).equals(context.getFormattedValue("Time",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("ApplicationRecentlyViewedItemsPreference:ItemsLifetime:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>label_error<% } %>" for=""><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.ExpirationOfTrackedItems.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td>
<td class="input_radio" width="1%">
<input type="radio"
name="ApplicationRecentlyViewedItemsPreference_ExpirationType"
id="ApplicationRecentlyViewedItemsPreference_ExpirationType_Session"
value="Session"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ExpirationType:Value"),null).equals(context.getFormattedValue("Session",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="label_radio_text" colspan="2">
<label class="label label_radio_text label_light" for="ApplicationRecentlyViewedItemsPreference_ExpirationType_Session"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.AfterSessionExpiration.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td nowrap="nowrap" colspan="3">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="input_radio">
<input type="radio"
name="ApplicationRecentlyViewedItemsPreference_ExpirationType"
id="ApplicationRecentlyViewedItemsPreference_ExpirationType_After"
value="Time"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ExpirationType:Value"),null).equals(context.getFormattedValue("Time",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="label_radio_text">
<label class="label label_radio_text label_light label_fix2 <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ExpirationType:Value"),null).equals(context.getFormattedValue("Time",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (getObject("ApplicationRecentlyViewedItemsPreference:ItemsLifetime:isInvalid"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>label_error<% } %>"
for="ApplicationRecentlyViewedItemsPreference_ExpirationType_After"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.ExpirationAfter.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td> 
<td class="table_detail">
<input type="text"
name="ApplicationRecentlyViewedItemsPreference_ItemsLifetime"
class="inputfield_en"
size="6"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ItemsLifetime:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail">
<select name="ApplicationRecentlyViewedItemsPreference_TimeUnit"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
class="select inputfield_en">
<option value="60" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ApplicationRecentlyViewedItemsPreference:TimeUnit:Value")).doubleValue() ==((Number)(new Double(60))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.Minutes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="3600" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ApplicationRecentlyViewedItemsPreference:TimeUnit:Value")).doubleValue() ==((Number)(new Double(3600))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="87840" <% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ApplicationRecentlyViewedItemsPreference:TimeUnit:Value")).doubleValue() ==((Number)(new Double(87840))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.Days.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="input_radio" width="1%">
<input type="radio"
name="ApplicationRecentlyViewedItemsPreference_ExpirationType"
id="ApplicationRecentlyViewedItemsPreference_ExpirationType_Never"
value="Never"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ExpirationType:Value"),null).equals(context.getFormattedValue("Never",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
<td class="label_radio_text" colspan="2">
<label class="label label_radio_text label_light" for="ApplicationRecentlyViewedItemsPreference_ExpirationType_Never"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.Never.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label>
</td>
</tr>
<tr>
<td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
<tr>
<td width="100%" class="table_title2 n s" colspan="4"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.MaximumNumberOfTrackedItems.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="table_title_description s" colspan="4"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.HereYouCanDefineTheMaximumNumberOfItemPerTypeTracked.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationRecentlyViewedItemsPreference:ProductListSize:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { %>label_error<% } %>"
for="ApplicationRecentlyViewedItemsPreference_ProductListSize"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.NumberOfProducts.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td>
<td class="table_detail" nowrap="nowrap" colspan="3">
<input type="text"
name="ApplicationRecentlyViewedItemsPreference_ProductListSize"
id="ApplicationRecentlyViewedItemsPreference_ProductListSize"
class="inputfield_en"
size="2"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:ProductListSize:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationRecentlyViewedItemsPreference:CategoryListSize:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>label_error<% } %>"
for="ApplicationRecentlyViewedItemsPreference_CategoryListSize"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.NumberOfCategories.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td>
<td class="table_detail" nowrap="nowrap" colspan="3">
<input type="text"
name="ApplicationRecentlyViewedItemsPreference_CategoryListSize"
id="ApplicationRecentlyViewedItemsPreference_CategoryListSize"
class="inputfield_en"
size="2"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:CategoryListSize:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label">
<label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationRecentlyViewedItemsPreference:SearchKeywordListSize:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %>label_error<% } %>"
for="ApplicationRecentlyViewedItemsPreference_SearchKeywordListSize"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.NumberOfSearchTerms.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span>
</label>
</td>
<td class="table_detail" nowrap="nowrap" colspan="3">
<input type="text"
name="ApplicationRecentlyViewedItemsPreference_SearchKeywordListSize"
id="ApplicationRecentlyViewedItemsPreference_SearchKeywordListSize"
class="inputfield_en"
size="2"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:SearchKeywordListSize:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
<tr>
<td class="s" colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
<tr>
<td width="100%" class="table_title2 s" colspan="4"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.Encryption.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="table_title_description s" colspan="4"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.HereYouCanSelectWhetherTheRecentlyViewedIsEncrypted.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
<tr>
<td class="label_checkbox">
<label class="label label_checkbox" for="ApplicationRecentlyViewedItemsPreference_EncryptRecentlyViewedItemsData"><% {out.write(localizeISText("ApplicationRecentlyViewedItemsPreferences.RecentlyViewedItemsDataEncryption.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
</label>
</td>
<td nowrap="nowrap" colspan="3">
<input type="checkbox"
name="ApplicationRecentlyViewedItemsPreference_EncryptRecentlyViewedItemsData"
id="ApplicationRecentlyViewedItemsPreference_EncryptRecentlyViewedItemsData"
value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationRecentlyViewedItemsPreference:EncryptRecentlyViewedItemsData:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",238,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
<tr>
<td colspan="4"><img width="1" height="4" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {258}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationRecentlyViewedItemsPreferences.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationRecentlyViewedItemsPreferences.Reset.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("nameforobjectuuid","ApplicationUUID"),
new TagParameter("pipeline","ViewApplicationRecentlyViewedItemsPreferences-Start"),
new TagParameter("currentobject",getObject("Application")),
new TagParameter("parametername1","ChannelID"),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("pagelocatorname","AppList"),
new TagParameter("pagenumber",getObject("DetailsPageNumber"))}, 271); %><% printFooter(out); %>