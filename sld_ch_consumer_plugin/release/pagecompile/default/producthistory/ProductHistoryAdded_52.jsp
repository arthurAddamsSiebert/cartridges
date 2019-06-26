<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","Product History"),
new TagParameter("text",localizeText(context.getFormattedValue("catalogs.producthistory.masterproducts.breadcrumb",null)))}, 6); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","Product History"),
new TagParameter("text",localizeText(context.getFormattedValue("catalogs.producthistory.parentchannelproducts.breadcrumb",null)))}, 9); %><% } %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("catalogs.title",null)))}, 12); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","Product History"),
new TagParameter("text",localizeText(context.getFormattedValue("catalogs.producthistory.channelproducts.breadcrumb",null)))}, 13); %><% } %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.addedproducts")}, 18); %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue("1",null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_tabs_dis"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.updatedproducts")}, 19); %></a></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue("2",null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_tabs_dis"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.deletedproducts")}, 20); %></a></td><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ProductHistoryAdded_52", null, "21");} %><td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.masterproducts")}, 30); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.parentchannelproducts")}, 31); %><% } %><% } else { %><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.channelproducts")}, 33); %><% } %></td>
</tr>
</table> 
<!-- error message invalid date --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistoryadded.search.description")}, 46); %><br/> 
</td>
</tr>
</table><% } %><!-- eo error message invalid date --> 
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_title_description w e"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("parameter0",getObject("CurrentChannel:DisplayName")),
new TagParameter("key","catalogs.producthistoryadded.list.message")}, 55); %></td>
</tr>
</table><% URLPipelineAction action616 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Dispatch",null)))),null));String site616 = null;String serverGroup616 = null;String actionValue616 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Dispatch",null)))),null);if (site616 == null){  site616 = action616.getDomain();  if (site616 == null)  {      site616 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup616 == null){  serverGroup616 = action616.getServerGroup();  if (serverGroup616 == null)  {      serverGroup616 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductHistoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue616, site616, serverGroup616,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox aldi">
<tr>
<td class="table_title3" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.filterproducts")}, 63); %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="fielditem2" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistoryadded.label.addedby")}, 69); %></td>
<td>
<input type="hidden" name="ChangeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChangeType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceRepository" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepository"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" name="changed_by" value="<% {String value = null;try{value=context.getFormattedValue(getObject("changed_by"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="350" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ChangedSince"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductHistoryAdded_52.AddedSince.InputFieldLabel",null))),
new TagParameter("InputFieldLabelClass"," label label_light label_error"),
new TagParameter("InputFieldSize","35"),
new TagParameter("DateObject",getObject("ChangedSince"))}, 81); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ChangedSince"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("ProductHistoryAdded_52.AddedSince.InputFieldLabel",null))),
new TagParameter("InputFieldLabelClass"," label label_light"),
new TagParameter("InputFieldSize","35"),
new TagParameter("DateObject",getObject("ChangedSince"))}, 89); %> 
<% } %></tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.label.products")}, 100); %></td>
<td>
<select name="RepositoryFilter" class="select">
<option value="All" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RepositoryFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RepositoryFilter"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>selected="selected"<% } %><% } %>><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.filter.showall")}, 103); %></option>
<option value="ContainsOffer" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RepositoryFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RepositoryFilter"),null).equals(context.getFormattedValue("ContainsOffer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>selected="selected"<% } %><% } %>><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.filter.derivedonly")}, 104); %></option>
</select>
</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr><% } %><tr>
<td colspan="3">&nbsp;</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="find" value="<% {out.write(localizeISText("catalogs.producthistory.button.find","",null,null,null,null,null,null,null,null,null,null,null));} %>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<% URLPipelineAction action617 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Dispatch",null)))),null));String site617 = null;String serverGroup617 = null;String actionValue617 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Dispatch",null)))),null);if (site617 == null){  site617 = action617.getDomain();  if (site617 == null)  {      site617 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup617 == null){  serverGroup617 = action617.getServerGroup();  if (serverGroup617 == null)  {      serverGroup617 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue617, site617, serverGroup617,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("JournalEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("changed_by"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("ChangedSince"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","ProductSearch.NoProductsFoundForYourSearch")}, 135); %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("changed_by"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>&nbsp;<i><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.header.addedby")}, 136); %></i>&nbsp;&nbsp;"<% {String value = null;try{value=context.getFormattedValue(getObject("changed_by"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChangedSince"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>&nbsp;<i><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.header.addedsince")}, 137); %></i>&nbsp;&nbsp;"<% {String value = null;try{value=context.getFormattedValue(getObject("ChangedSince"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %><br/><br/><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.search.checkspelling.description")}, 138); %></td>
</tr><% } else { %><tr>
<td class="table_detail"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistoryadded.search.result.null")}, 143); %></td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.header.id")}, 153); %></td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.header.name")}, 154); %></td>
<td class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.header.addedby")}, 155); %></td>
<td class="table_header e s" nowrap="nowrap"><% processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","catalogs.producthistory.header.date")}, 156); %></td>
</tr><% while (loop("JournalEntries",null,null)) { %><tr>
<td class="table_detail w e s top" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:Object"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JournalEntries:Object:Domain"),null).equals(context.getFormattedValue(getObject("JournalEntries:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("JournalEntries:Object:UUID"),null))).addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %> 
</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:Object"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JournalEntries:Object:Domain"),null).equals(context.getFormattedValue(getObject("JournalEntries:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("JournalEntries:Object:UUID"),null))).addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %> 
</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:ProcessName"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("JournalEntries:ProcessName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ProcessName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;/&nbsp;<% } %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s top left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ChangeDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ChangeDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="ChangeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChangeType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceRepository" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepository"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {192}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","JournalEntries")}, 193); %></td>
</tr>
</table>
<!-- End Page Cursor -->
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "207");} %><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>