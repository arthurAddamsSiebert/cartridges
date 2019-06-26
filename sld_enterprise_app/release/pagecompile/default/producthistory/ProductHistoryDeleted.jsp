<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))))),
new TagParameter("id","/product/history/search"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductHistoryDeleted.ProductHistory.text",null)))}, 3); %><!-- Working Area --><% {Object temp_obj = ("DeletedProducts"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"producthistory/ProductHistoryTabs", null, "7");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title e w s"><% {out.write(localizeISText("ProductHistoryDeleted.MasterProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<!-- error message invalid date --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductHistoryDeleted.PleaseSpecifyACorrectDeletedSinceDateUsingTheDateP.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
</td>
</tr>
</table><% } %><!-- eo error message invalid date -->
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ProductHistoryDeleted.TheListShowsAllProductsRecentlyDeletedFromTheRepos.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action645 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));String site645 = null;String serverGroup645 = null;String actionValue645 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null);if (site645 == null){  site645 = action645.getDomain();  if (site645 == null)  {      site645 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup645 == null){  serverGroup645 = action645.getServerGroup();  if (serverGroup645 == null)  {      serverGroup645 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductHistoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue645, site645, serverGroup645,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox aldi">
<tr>
<td class="table_title3" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryDeleted.FilterProducts.table_title3",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="changed_by"><% {out.write(localizeISText("ProductHistoryDeleted.DeletedBy.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="hidden" name="ChangeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChangeType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" name="changed_by" id="changed_by" value="<% {String value = null;try{value=context.getFormattedValue(getObject("changed_by"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="350" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ChangedSince"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("sld_enterprise_app.DeletedSince.InputFieldLabel",null))),
new TagParameter("InputFieldLabelClass"," label label_light label_error"),
new TagParameter("InputFieldSize","35"),
new TagParameter("DateObject",getObject("ChangedSince"))}, 54); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ChangedSince"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("sld_enterprise_app.DeletedSince.InputFieldLabel",null))),
new TagParameter("InputFieldLabelClass"," label label_light"),
new TagParameter("InputFieldSize","35"),
new TagParameter("DateObject",getObject("ChangedSince"))}, 62); %><% } %></tr>
<tr>
<td colspan="3">&nbsp;</td>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryDeleted.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action646 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));String site646 = null;String serverGroup646 = null;String actionValue646 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null);if (site646 == null){  site646 = action646.getDomain();  if (site646 == null)  {      site646 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup646 == null){  serverGroup646 = action646.getServerGroup();  if (serverGroup646 == null)  {      serverGroup646 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue646, site646, serverGroup646,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("JournalEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("changed_by"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("ChangedSince"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><tr>
<td class="table_detail"><% {out.write(localizeISText("ProductHistoryDeleted.NoProductsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("changed_by"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("ProductHistoryDeleted.DeletedByI0",null,null,encodeString(context.getFormattedValue(getObject("changed_by"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChangedSince"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %>&nbsp;<% {out.write(localizeISText("ProductHistoryDeleted.DeletedSinceI0",null,null,encodeString(context.getFormattedValue(getObject("ChangedSince"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><br/><br/><% {out.write(localizeISText("ProductHistoryDeleted.CheckTheSpellingOrTryANewSearchTerm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_detail"><% {out.write(localizeISText("ProductHistoryDeleted.NoDeletedProductsFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductHistoryDeleted.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ProductHistoryDeleted.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryDeleted.DeletedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryDeleted.Date.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("JournalEntries",null,null)) { %><tr>
<td class="table_detail w e s top" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JournalEntries:Object:Domain"),null).equals(context.getFormattedValue(getObject("RecycleBin:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-DeletedProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("JournalEntries:Object:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JournalEntries:Object:Domain"),null).equals(context.getFormattedValue(getObject("RecycleBin:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory-DeletedProductDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("JournalEntries:Object:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:ProcessName"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("JournalEntries:ProcessName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ProcessName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;/&nbsp;<% } %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s top left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ChangeDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ChangeDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
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
<input type="hidden" name="ChangeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChangeType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","JournalEntries")}, 153); %></td>
</tr>
</table>
<!-- End Page Cursor -->
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>