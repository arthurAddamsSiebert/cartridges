<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- TEMPLATENAME: user/CustomAttributes.isml -->
<!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "5");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("customer.Attributes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddress_52-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null)).addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("Address:ID"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id","Users/Details/Address"),
new TagParameter("text",context.getFormattedValue(getObject("Address:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("Address:LastName"),null))}, 7); %><!-- EO Page Navigator --><% URLPipelineAction action332 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddress_52-DispatchCA",null)))),null));String site332 = null;String serverGroup332 = null;String actionValue332 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddress_52-DispatchCA",null)))),null);if (site332 == null){  site332 = action332.getDomain();  if (site332 == null)  {      site332 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup332 == null){  serverGroup332 = action332.getServerGroup();  if (serverGroup332 == null)  {      serverGroup332 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddress_52-DispatchCA",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue332, site332, serverGroup332,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="USER_UUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("USER_UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="AddressID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="OrganizationUUID" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a class="table_tabs_dis" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddress_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("USER_UUID"),null)).addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("Address:ID"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null)%>"><% {out.write(localizeISText("customer.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("customer.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
</td>
</tr>
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Address:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Address:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("LocalizableFlag","true"),
new TagParameter("CustomAttributesIterator",getObject("AttributeValues")),
new TagParameter("FormName","formMask")}, 33); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><input type="hidden" name="CustomerID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","AttributeValues")}, 38); %></td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "44");} %><!-- EO Working Area --><% printFooter(out); %>