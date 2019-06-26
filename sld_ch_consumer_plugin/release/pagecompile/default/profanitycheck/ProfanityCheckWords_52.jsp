<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfiguration")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationAssignment")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("LocaleID"),null)))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords_52.DetailsOfDefaultProfanityWordDefinition.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-NewDefaultList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newDefaultList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords_52.NewDefaultProfanityWordDefinition.text",null)))}, 8); %> 
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfiguration")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationAssignment")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("ProfanityCheckConfigurationID")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("LocaleID"),null)))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords_52.DetailsOfCustomProfanityWordDefinition.text",null)))}, 12); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-NewCustomList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newCustomList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords_52.NewCustomProfanityWordDefinition.text",null)))}, 14); %> 
<% } %> 
<% } %><% URLPipelineAction action385 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null));String site385 = null;String serverGroup385 = null;String actionValue385 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null);if (site385 == null){  site385 = action385.getDomain();  if (site385 == null)  {      site385 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup385 == null){  serverGroup385 = action385.getServerGroup();  if (serverGroup385 == null)  {      serverGroup385 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheck");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue385, site385, serverGroup385,true)); %><input type="hidden" name="ProfanityCheckConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td class="table_title w e s n"><% {out.write(localizeISText("ProfanityCheckWords_52.DefaultProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_title w e s n"><% {out.write(localizeISText("ProfanityCheckWords_52.ProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Delete")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Delete"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProfanityCheckWords_52.DeleteAllProfaneWordsOfOrganizationDefaultProfanityWordDefinition.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("ProfanityCheckWords_52.DeleteAllProfaneWordsOfOrganizationCustomProfanityWordDefinition.confirm",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="deleteListEntries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.OK.button",null)),null)%>" class="button"/>
</td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
</td>
<td class="button">
<input type="submit" id="messageBoxCancel" name="cancelDeleteListEntries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table><% } %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ShowConfirmationDialog"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ProfanityCheckWords_52.YouAreAboutToChangeThisProfanityListForYourChannel.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="updateList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.OK.button",null)),null)%>" class="button"/></td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
</td>
<td class="button"><input type="submit" id="messageBoxCancel" name="showExistingList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmUnloadGlobalList"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProfanityCheckWords_52.YouAreAboutToCreateADefaultProfanityListForYourChannel.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProfanityCheckWords_52.YouAreAboutToCreateACustomProfanityListForYourChannel.confirm",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null));} %><% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="unloadGlobalList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.OK.button",null)),null)%>" class="button"/>
</td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
</td>
<td class="button">
<input type="submit" id="messageBoxCancel" name="cancelUnloadGlobalList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmLoadGlobalList"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProfanityCheckWords_52.TheOrganizationsDefaultProfanityListIsGoingToBeShared.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProfanityCheckWords_52.TheOrganizationsCustomProfanityListIsGoingToBeShared.confirm",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null));} %><% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="loadGlobalList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.OK.button",null)),null)%>" class="button"/>
</td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
</td>
<td class="button">
<input type="submit" id="messageBoxCancel" name="cancelLoadGlobalList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><% } %><tr>
<td class="table_title_description w e "><% {out.write(localizeISText("ProfanityCheckWords_52.TheFollowingListOfWordsAndTermsAreNotAllowedToBeUsed.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProfanityCheckWords_52.ComplementAdditionalWordsPerLocale.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
<tr>
<td width="100%">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProfanityCheckWords_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="LocaleID" class="dropdown inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="changeLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="w e" width="100%">
<table>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" border="0" alt=""/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ProfanityCheckWords_52.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span><br/>
</td>
<td class="table_detail" width="100%">
<input type="text" name="ProfanityCheckConfigurationID" size="55" maxlength="256" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null)%>" class="inputfield_en" disabled="disabled"/>
<input type="hidden" name="ConfigIdDisabled" value="true"/>
</td>
</tr> 
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ProfanityCheckWords_52.ProhibitedWords.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ChannelSharesOrganizationsList")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ChannelSharesOrganizationsList"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><span style="font-weight: normal">(<% {out.write(localizeISText("ProfanityCheckWords_52.Organization.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</span><% } %></td>
<td class="table_detail" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %><textarea rows="10" name="ProfanityWords" cols="80"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProfanityCheck:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Delete")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmUnloadGlobalList")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWordsString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {222}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea><% } else { %><textarea rows="10" name="ProfanityWords" cols="80" readonly="readonly"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProfanityCheck:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Delete")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmUnloadGlobalList")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",224,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWordsString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {224}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea><% } %> 
</td>
</tr>
<tr>
<td colspan="3" width="100%">
<table>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LoadingOfOrganizationsListPossible")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LoadingOfOrganizationsListPossible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %> 
<td class="button"><input type="submit" name="confirmLoadGlobalList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.LoadGlobalList.button",null)),null)%>" class="button"/></td><% } %><td class="button"><input type="submit" name="NonDefaultUpdateConfirmation" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><div><% URLPipelineAction action386 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Start",null)))),null));String site386 = null;String serverGroup386 = null;String actionValue386 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Start",null)))),null);if (site386 == null){  site386 = action386.getDomain();  if (site386 == null)  {      site386 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup386 == null){  serverGroup386 = action386.getServerGroup();  if (serverGroup386 == null)  {      serverGroup386 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck_52-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue386, site386, serverGroup386,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords_52.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div><% printFooter(out); %>