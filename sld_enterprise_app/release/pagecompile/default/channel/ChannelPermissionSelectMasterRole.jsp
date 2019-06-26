<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "3");} %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPermission-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("RepositoryUUID"),null))).addURLParameter(context.getFormattedValue("PermissionType",null),context.getFormattedValue(getObject("PermissionType"),null)).addURLParameter(context.getFormattedValue("previous",null),context.getFormattedValue("",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPermissionSelectMasterRole.Step1SelectMasterRole.text",null)))}, 6); %><% URLPipelineAction action24 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPermissionList-Dispatch",null)))),null));String site24 = null;String serverGroup24 = null;String actionValue24 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPermissionList-Dispatch",null)))),null);if (site24 == null){  site24 = action24.getDomain();  if (site24 == null)  {      site24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup24 == null){  serverGroup24 = action24.getServerGroup();  if (serverGroup24 == null)  {      serverGroup24 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPermissionList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue24, site24, serverGroup24,true)); %><input type="hidden" name="RepositoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RepositoryUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PermissionType" value="MasterRole"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title aldi"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Step1SelectMasterRole.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("next")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("Iterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.YouHaveNotSelectedAMasterRoleSelectOneAndThenClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Step1Of2NextStepSelectAccessPrivilegesTheListShows.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> &gt;&gt;".</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Roles"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td class="w e s left" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedRole','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('detailForm','SelectedRole','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div></td>
<td class="table_header e s"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Roles","Role",null)) { %><tr>
<td class="w e s center top"><input type="checkbox" name="SelectedRole" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Role:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Role:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="role" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td class="table_detail3 e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Role:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Role:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Role:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Role:isFix"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Standard.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelPermissionSelectMasterRole.Custom.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("Role:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s top" colspan="4"> <% {out.write(localizeISText("ChannelPermissionSelectMasterRole.AllMasterRolesHaveAlreadyBeenAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Roles"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="next" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPermissionSelectMasterRole.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td><% } %><td class="button"><input type="submit" name="cancelDMR" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPermissionSelectMasterRole.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<table class="pagecursor" width="100%">
<tr><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("pipeline","ViewChannelPermissionWizard-SelectMasterRolePaging"),
new TagParameter("item","master roles"),
new TagParameter("parametername1","RepositoryUUID"),
new TagParameter("parametervalue1",getObject("RepositoryUUID")),
new TagParameter("formName","detailForm"),
new TagParameter("pageable","Roles")}, 98); %></tr>
</table>
<!-- EO Main Content -->
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>