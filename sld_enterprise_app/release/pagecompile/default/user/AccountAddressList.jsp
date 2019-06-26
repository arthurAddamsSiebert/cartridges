<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "5");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Addresses.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAccountAddressList-List",null))))),
new TagParameter("start","true"),
new TagParameter("id",getObject("Profile:UUID")),
new TagParameter("text",context.getFormattedValue(getObject("Profile:FirstName"),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("Profile:LastName"),null))}, 7); %><% URLPipelineAction action464 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAccountAddressList-Dispatch",null)))),null));String site464 = null;String serverGroup464 = null;String actionValue464 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAccountAddressList-Dispatch",null)))),null);if (site464 == null){  site464 = action464.getDomain();  if (site464 == null)  {      site464 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup464 == null){  serverGroup464 = action464.getServerGroup();  if (serverGroup464 == null)  {      serverGroup464 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAccountAddressList-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddressList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue464, site464, serverGroup464,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<!-- Tabs --><% {Object temp_obj = ("Address"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"user/AccountTabs", null, "15");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("AccountAddressList.01Addresses.table_title",null,null,encodeString(context.getFormattedValue(getObject("Profile:FirstName"),null)),encodeString(context.getFormattedValue(getObject("Profile:LastName"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- delete confirmation if one is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AccountAddressList.AreYouSureThatYouWantToDeleteTheseAddresses.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="delete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/>
</td>
<td>&nbsp;</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><!-- delete confirmation if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td><td>&nbsp;</td>
<td class="error top" width="100%"><% {out.write(localizeISText("AccountAddressList.YouHaveNotSelectedAnyAddressToBeDeletedUseTheCheck.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table>
<!-- Main Content -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" border="0" alt=""/></td>
</tr>
<tr>
<td class="table_header aldi center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('AddressList','DeleteAddress','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('AddressList','DeleteAddress','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s"><% {out.write(localizeISText("AccountAddressList.AddressName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("Addresses","aAddress",null)) { %><tr>
<td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("aAddress:isDefaultAddress"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><input type="checkbox" disabled="disabled" /><% } else { %><input type="checkbox" name="DeleteAddress" value="<%=context.getFormattedValue(getObject("aAddress:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PrefixIterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% while (loop("PrefixIterator","Selected",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("aAddress:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",97);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %>/><% } %></td>
<td class="table_detail e s">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAccountAddress-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("aAddress:AddressID"),null))).addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("aAddress:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button">
<input type="hidden" name="USER_UUID" value='<% {String value = null;try{value=context.getFormattedValue(getObject("Profile:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'/><input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content --><% printFooter(out); %>