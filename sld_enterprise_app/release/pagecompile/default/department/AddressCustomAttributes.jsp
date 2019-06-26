<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="breadcrumb"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-Organization",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MenuGroupID",null),context.getFormattedValue("OrganizationMenu",null))).addURLParameter(context.getFormattedValue("OverviewPage",null),context.getFormattedValue("ViewOverview-Organization",null))),null)%>" class="breadcrumb"><% {out.write(localizeISText("ProductSetChannels.Organization.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
&nbsp;&gt;&nbsp;<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedDepartmentUUID",null),context.getFormattedValue(getObject("Department:UUID"),null)))),null)%>"><% {out.write(localizeISText("Departments.Departments.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
&nbsp;&gt;&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartment-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DepartmentUUID",null),context.getFormattedValue(getObject("Department:UUID"),null)))),null)%>" class="breadcrumb"><% {String value = null;try{value=context.getFormattedValue(getObject("Department:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;&gt;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("sld_enterprise_app.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<!-- EO Page Navigator -->
<!-- Working Area -->
<table border="0" cellspacing="0" cellpadding="0" width="100%"><% URLPipelineAction action239 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentAddress-Dispatch",null)))),null));String site239 = null;String serverGroup239 = null;String actionValue239 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentAddress-Dispatch",null)))),null);if (site239 == null){  site239 = action239.getDomain();  if (site239 == null)  {      site239 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup239 == null){  serverGroup239 = action239.getServerGroup();  if (serverGroup239 == null)  {      serverGroup239 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentAddress-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue239, site239, serverGroup239,true)); %><input type="hidden" name="DepartmentUUID" value="<%=context.getFormattedValue(getObject("Department:UUID"),null)%>"/>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentAddress-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DepartmentUUID",null),context.getFormattedValue(getObject("Department:UUID"),null))).addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("Address:AddressID"),null))),null)%>"><% {out.write(localizeISText("Channel.General.text1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
<!-- EO Tabs -->
</td>
</tr>
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("sld_enterprise_app.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmRemoveCA"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AddressCustomAttributes.AreYouSureThatYouWantToDeleteTheseAttributes.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="pnlr" nowrap="nowrap">
<input type="submit" name="DeleteCAConfirmed" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectCategory.OK.button",null)),null)%>" class="delete_button"/>&nbsp;
<input type="submit" name="CancelCADeletion" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="delete_button" />
</td>
</tr>
</table>
</td>
</tr><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NothingSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AddressCustomAttributes.YouHaveNotSelectedAnyAttributesToBeDeleted.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td valign="top" class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/AddressCustomAttributes", null, "75");} %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td width="100%" class="backbar_left">
<input class="button" type="submit" name="Back" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Back.button",null)),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% out.print("</form>"); %></table>
<!-- EO Working Area --><% printFooter(out); %>