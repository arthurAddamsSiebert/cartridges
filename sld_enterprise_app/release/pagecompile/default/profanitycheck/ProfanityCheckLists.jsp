<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PreferencesBreadcrumb", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckLists.ProfanityWordDefinition.text",null)))}, 4); %><% URLPipelineAction action542 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));String site542 = null;String serverGroup542 = null;String actionValue542 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null);if (site542 == null){  site542 = action542.getDomain();  if (site542 == null)  {      site542 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup542 == null){  serverGroup542 = action542.getServerGroup();  if (serverGroup542 == null)  {      serverGroup542 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheckDefault");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue542, site542, serverGroup542,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="2"><% {out.write(localizeISText("ProfanityCheckLists.DefaultProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s" colspan="2"><% {out.write(localizeISText("ProfanityCheckLists.ThisListShowsTheDefaultProfanityWordDefinitionDefi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DefaultAssignment"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s" width="100%"><% {out.write(localizeISText("ProfanityCheckLists.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w e s"><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("DefaultAssignment:ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("DefaultAssignment:LocaleID"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("DefaultAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
</tr><% } else { %><tr>
<td class="table_detail w e s" colspan="2"><% {out.write(localizeISText("ProfanityCheckLists.ThereIsNoDefaultProfanityWordDefinitionAvailableFo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><tr>
<td class="w e s" align="right" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="newDefaultList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists.New.button",null)),null)%>" class="button"/>
</td>
</tr>
</table> 
</td>
</tr> 
<% } %><% } %></table><% out.print("</form>"); %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% URLPipelineAction action543 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));String site543 = null;String serverGroup543 = null;String actionValue543 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null);if (site543 == null){  site543 = action543.getDomain();  if (site543 == null)  {      site543 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup543 == null){  serverGroup543 = action543.getServerGroup();  if (serverGroup543 == null)  {      serverGroup543 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheckCustom");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue543, site543, serverGroup543,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="3"><% {out.write(localizeISText("ProfanityCheckLists.CustomProfanityWordDefinition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteCustomList")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="confirm" width="100%"><% {out.write(localizeISText("ProfanityCheckLists.AllSelectedCustomProfanityWordDefinitionsAreGoingT.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="deleteCustomList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists.OK.button",null)),null)%>" class="button"/>
</td>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/>
</td>
<td class="button">
<input type="submit" id="messageBoxCancel" name="cancelDeleteCustomList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td class="w e s" colspan="8">
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProfanityCheckLists.YouHaveNotSelectedAnyCustomProfanityWordDefinition.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
</td>
</tr> 
<% } %><% } %> 
<tr>
<td class="table_title_description w e s" colspan="3"><% {out.write(localizeISText("ProfanityCheckLists.ThisListShowsTheCustomProfanityWordDefinitionsDefi.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProfanityCheckConfigurationAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ProfanityCheckCustom','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProfanityCheckLists.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ProfanityCheckCustom','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ProfanityCheckLists.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><td class="table_header <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %>w<% } %> e s" width="100%"><% {out.write(localizeISText("ProfanityCheckLists.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProfanityCheckConfigurationAssignments","ProfanityCheckConfigurationAssignment",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><td class="table_detail top w e s center">
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {140}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>checked="checked"<% } %> />
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } %><td class="table_detail <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>w<% } %> e s"><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-ShowExistingCustomList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationAssignment:ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
</tr><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s" colspan="3"><% {out.write(localizeISText("ProfanityCheckLists.ThereAreNoCustomProfanityWordDefinitionsAvailableF.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_detail w e s" colspan="2"><% {out.write(localizeISText("ProfanityCheckLists.ThereAreNoCustomProfanityWordDefinitionsAvailableF.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><tr>
<td class="w e s" align="right" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="newCustomList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists.New.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProfanityCheckConfigurationAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDeleteCustomList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckLists.Delete.button",null)),null)%>" class="button"/>
</td><% } %></tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "180");} %><% printFooter(out); %>