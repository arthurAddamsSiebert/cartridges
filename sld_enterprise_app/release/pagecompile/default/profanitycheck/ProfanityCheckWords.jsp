<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfiguration")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationAssignment")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("LocaleID"),null)))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords.DetailsOfDefaultProfanityWordDefinition.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-NewDefaultList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newDefaultList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords.NewDefaultProfanityWordDefinition.text",null)))}, 8); %> 
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfiguration")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationAssignment")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("ProfanityCheckConfigurationID")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("LocaleID"),null)))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords.DetailsOfCustomProfanityWordDefinition.text",null)))}, 12); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-NewCustomList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newCustomList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWords.NewCustomProfanityWordDefinition.text",null)))}, 14); %> 
<% } %> 
<% } %><% URLPipelineAction action540 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));String site540 = null;String serverGroup540 = null;String actionValue540 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null);if (site540 == null){  site540 = action540.getDomain();  if (site540 == null)  {      site540 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup540 == null){  serverGroup540 = action540.getServerGroup();  if (serverGroup540 == null)  {      serverGroup540 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheck");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue540, site540, serverGroup540,true)); %><input type="hidden" name="ProfanityCheckConfigurationID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><td class="table_title w e s n"><% {out.write(localizeISText("ProfanityCheckWords.DefaultProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_title w e s n"><% {out.write(localizeISText("ProfanityCheckWords.ProfanityWordDefinition0.table_title",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null,null));} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Delete")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Delete"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProfanityCheckWords.AllProfaneWordsOfYourOrganizationDefaultProfanityW.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } else { %><% {out.write(localizeISText("ProfanityCheckWords.YouAreAboutToChangeThisProfanityListForYourSalesOr.confirm",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null,null));} %><% } %> 
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="deleteListEntries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords.OK.button",null)),null)%>" class="button"/>
</td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
</td>
<td class="button">
<input type="submit" id="messageBoxCancel" name="cancelDeleteListEntries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e "><% {out.write(localizeISText("ProfanityCheckWords.TheFollowingListOfWordsAndTermsAreNotAllowedToBeUs.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProfanityCheckWords.ComplementAdditionalWordsPerLocaleToEnsureAProfani.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td width="100%">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="label_select" nowrap="nowrap"><label class="label label_select label_light" for="Profanity_SelectedLocale"><% {out.write(localizeISText("ProfanityCheckWords.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="LocaleID" id="Profanity_SelectedLocale" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="changeLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords.Apply.button",null)),null)%>" class="button"/>
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
<td nowrap="nowrap" class="label"><label class="label" for="Profanity_CheckConfigurationID"><% {out.write(localizeISText("ProfanityCheckWords.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span><br/></label></td>
<td class="table_detail" width="100%">
<input type="text" name="ProfanityCheckConfigurationID" id="Profanity_CheckConfigurationID" size="55" maxlength="256" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null)%>" class="inputfield_en" disabled="disabled"/>
<input type="hidden" name="ConfigIdDisabled" value="true"/>
</td>
</tr> 
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="Profanity_OrganizationProhibtedWords"><% {out.write(localizeISText("ProfanityCheckWords.ProhibitedWords.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/>
<span style="font-weight: normal">(<% {out.write(localizeISText("ProfanityCheckWords.Organization.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>)</span></label>
</td>
<td class="table_detail" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><textarea rows="10" name="ProfanityWords" id="Profanity_OrganizationProhibtedWords" class="inputfield_en" cols="80"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("ProfanityCheck:isSubmitted"))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Delete"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWordsString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea><% } else { %><textarea rows="10" name="ProfanityWords" id="Profanity_OrganizationProhibtedWords" class="inputfield_en" cols="80" readonly="readonly"><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWordsString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } %></td>
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
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="updateList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords.Reset.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><div><% URLPipelineAction action541 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Start",null)))),null));String site541 = null;String serverGroup541 = null;String actionValue541 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Start",null)))),null);if (site541 == null){  site541 = action541.getDomain();  if (site541 == null)  {      site541 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup541 == null){  serverGroup541 = action541.getServerGroup();  if (serverGroup541 == null)  {      serverGroup541 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue541, site541, serverGroup541,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="backbar_left">
<table border="0" cellspacing="0" cellpadding="0">
<tr> 
<td class="button"><input type="submit" name="back" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWords.BackToList.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %></div><% printFooter(out); %>