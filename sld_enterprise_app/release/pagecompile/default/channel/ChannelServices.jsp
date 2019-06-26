<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServices-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ListAll",null),context.getFormattedValue("",null))).addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null)).addURLParameter(context.getFormattedValue("ServiceGroupID",null),context.getFormattedValue(getObject("ServiceGroupID"),null)))),
new TagParameter("id",getObject("ServiceGroup:GroupID")),
new TagParameter("text",getObject("ServiceGroupID"))}, 6); %><!-- EO Page Navigator --><% {Object temp_obj = ("Service Configuration"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n s"><% {String value = null;try{value=context.getFormattedValue(getObject("ServiceGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) ((disableErrorMessages().isDefined(getObject("Enable"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("Disable"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelServices.YouHaveNotSelectedAnyServiceSelectAtLeastOneServic.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> &quot;<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Enable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelServices.Enable.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelServices.Disable.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>&quot; <% {out.write(localizeISText("ChannelServices.Again.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.TheListShowsAllCurrentlyAvailable0ForThisChannelUs.table_title_description",null,null,encodeString(context.getFormattedValue(getObject("ServiceGroupID"),null)),null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Services") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% URLPipelineAction action18 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServices-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceGroupID",null),context.getFormattedValue(getObject("ServiceGroupID"),null)))),null));String site18 = null;String serverGroup18 = null;String actionValue18 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServices-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceGroupID",null),context.getFormattedValue(getObject("ServiceGroupID"),null)))),null);if (site18 == null){  site18 = action18.getDomain();  if (site18 == null)  {      site18 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup18 == null){  serverGroup18 = action18.getServerGroup();  if (serverGroup18 == null)  {      serverGroup18 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelServices-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ServiceGroupID",null),context.getFormattedValue(getObject("ServiceGroupID"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ServicesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue18, site18, serverGroup18,true)); %><input type="hidden" name="RepositoryUUID" value="<%=context.getFormattedValue(getObject("Repository:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %> 
<td class="table_header n e s center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelServices.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('ServicesForm', 'SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelServices.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td><% } %><th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header n e s left" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.Active.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("Services","SingleService",null)) { %><% {Object temp_obj = (getObject("SingleService:ServiceID")); getPipelineDictionary().put("ServiceID", temp_obj);} %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %> 
<td class="table_detail e s center" nowrap="nowrap">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SingleService:ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SingleService:ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</td><% } %><td class="table_detail e s left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("SingleService:ServiceID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SingleService:DisplayNameTemplate"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SingleService:DisplayNameTemplate"),null), null, "84");} %><% } %>
&nbsp;
</td>
<td class="table_detail e s left" width="50%"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SingleService:BODescriptionTemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SingleService:BODescriptionTemplate"),null), null, "90");} %><% } %>
&nbsp;
</td>
<td class="table_detail e s left"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ServicesAssignedToChannel")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ServicesAssignedToChannel:get(SingleService:ServiceID)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelServices.Enabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelServices.Disabled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s left" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ServicesActivatedAtChannel"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ServicesActivatedAtChannel:get(SingleService:ServiceID)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {out.write(localizeISText("ChannelServices.Active.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ChannelServices.Inactive.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SERVICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %> 
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="Enable" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServices.Enable.button",null)),null)%>"/></td>
<td class="button"><input class="button" type="submit" name="Disable" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelServices.Disable.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e n">
<tr>
<td class="table_detail s" nowrap="nowrap"><% {out.write(localizeISText("ChannelServices.ThereAreNoServicesOfGroup0AvailableForThisChannel.table_detail",null,null,encodeString(context.getFormattedValue(getObject("ServiceGroupID"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "138");} %><!-- EO Working Area --><% printFooter(out); %>