<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectUserGroup_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ConfigurationParameterCtnrUUID",null),context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedConfigurationParameterName",null),context.getFormattedValue(getObject("SelectedConfigurationParameterName"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ConfigurationParameterSelectUserGroup_52.SelectCustomerSegment.text",null)))}, 2); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("ConfigurationParameterCtnr:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %> - <% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.SelectCustomerSegment.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SetUserGroup")))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("UserGroupReference"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.YouHaveNotSelectedACustomerSegmentUseTheRadioButton.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.TheListShowsAllCustomerSegmentsInThisChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action278 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectUserGroup_52-Dispatch",null)))),null));String site278 = null;String serverGroup278 = null;String actionValue278 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectUserGroup_52-Dispatch",null)))),null);if (site278 == null){  site278 = action278.getDomain();  if (site278 == null)  {      site278 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup278 == null){  serverGroup278 = action278.getServerGroup();  if (serverGroup278 == null)  {      serverGroup278 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameterSelectUserGroup_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("UserGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue278, site278, serverGroup278,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UserGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('UserGroupListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('UserGroupListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("UserGroups","UserGroup",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><td class="w e s top center"><% {Object temp_obj = (context.getFormattedValue(getObject("UserGroup:ID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("UserGroup:Domain:DomainName"),null)); getPipelineDictionary().put("UserGroupRef", temp_obj);} %><input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Clipboard:contains(UserGroupRef)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("UserGroupRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% } else { %><td class="w e s top center"><input type="radio" name="UserGroupReference" value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("UserGroup:ID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("UserGroup:Domain:DomainName"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td><% } %><td class="table_detail e s top"><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UserGroup:Name"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>&nbsp;<% } %></a>&nbsp;</td> 
<td class="table_detail e s"><a class="table_detail_link2" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserGroup_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroup:ID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("UserGroup:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="ConfigurationParameterCtnrUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="SetUserGroup" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectUserGroup_52.OK.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input name="SelectedConfigurationParameterName" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedConfigurationParameterName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="CancelSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterSelectUserGroup_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","UserGroups")}, 99); %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_detail w e s"><% {out.write(localizeISText("ConfigurationParameterSelectUserGroup_52.ThereAreCurrentlyNoCustomerSegmentsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>