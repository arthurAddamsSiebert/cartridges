<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","Product History"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductHistoryUpdated_32.ProductHistoryMasterProducts.text",null)))}, 6); %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","Product History"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductHistoryUpdated_32.ProductHistoryParentChannelProducts.text",null)))}, 9); %><% } %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-JumpToList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","Product History"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductHistoryUpdated_32.ProductHistoryChannelProducts.text",null)))}, 12); %><% } %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ProductHistoryUpdated_32.AddedProducts.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryUpdated_32.UpdatedProducts.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Search",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue("2",null))).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("ProductHistoryUpdated_32.DeletedProducts.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table> 
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductHistoryUpdated_32.MasterProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductHistoryUpdated_32.ParentChannelProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } else { %><% {out.write(localizeISText("ProductHistoryUpdated_32.ChannelProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table> 
<!-- error message invalid date --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductHistoryUpdated_32.PleaseSpecifyACorrectUpdatedSinceDateUsingTheDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/> 
</td>
</tr>
</table><% } %><!-- eo error message invalid date --> 
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ProductHistoryUpdated_32.TheListShowsAllProductsRecentlyUpdatedInTheChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action298 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Dispatch",null)))),null));String site298 = null;String serverGroup298 = null;String actionValue298 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Dispatch",null)))),null);if (site298 == null){  site298 = action298.getDomain();  if (site298 == null)  {      site298 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup298 == null){  serverGroup298 = action298.getServerGroup();  if (serverGroup298 == null)  {      serverGroup298 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductHistoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue298, site298, serverGroup298,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox aldi">
<tr>
<td class="table_title3" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryUpdated_32.FilterProducts.table_title3",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryUpdated_32.UpdatedBy.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input type="hidden" name="ChangeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChangeType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceRepository" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepository"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="text" name="changed_by" value="<% {String value = null;try{value=context.getFormattedValue(getObject("changed_by"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="350" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td width="100%">&nbsp;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ChangedSince"),
new TagParameter("InputFieldLabel","Updated since"),
new TagParameter("InputFieldLabelClass"," label label_light label_error"),
new TagParameter("InputFieldSize","35"),
new TagParameter("DateObject",getObject("ChangedSince"))}, 79); %><% } else { %> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ChangedSince"),
new TagParameter("InputFieldLabel","Updated since"),
new TagParameter("InputFieldLabelClass"," label label_light"),
new TagParameter("InputFieldSize","35"),
new TagParameter("DateObject",getObject("ChangedSince"))}, 87); %><% } %><td>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryUpdated_32.Products.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<select name="RepositoryFilter" class="select">
<option value="All" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RepositoryFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RepositoryFilter"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>selected="selected"<% } %><% } %>><% {out.write(localizeISText("ProductHistoryUpdated_32.ShowAll.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="ContainsOffer" <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RepositoryFilter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RepositoryFilter"),null).equals(context.getFormattedValue("ContainsOffer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>selected="selected"<% } %><% } %>><% {out.write(localizeISText("ProductHistoryUpdated_32.DerivedOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td>&nbsp;</td>
<td>&nbsp;</td>
</tr><% } %><tr>
<td colspan="3">&nbsp;</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductHistoryUpdated_32.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %> 
<% URLPipelineAction action299 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Dispatch",null)))),null));String site299 = null;String serverGroup299 = null;String actionValue299 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Dispatch",null)))),null);if (site299 == null){  site299 = action299.getDomain();  if (site299 == null)  {      site299 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup299 == null){  serverGroup299 = action299.getServerGroup();  if (serverGroup299 == null)  {      serverGroup299 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue299, site299, serverGroup299,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("JournalEntries") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("changed_by"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("ChangedSince"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_SEARCH")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_SEARCH"),null).equals(context.getFormattedValue("InvalidDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><tr>
<td class="table_detail"><% {out.write(localizeISText("ProductHistoryUpdated_32.NoProductsFoundForYourSearch.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("changed_by"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>&nbsp;<i><% {out.write(localizeISText("ProductHistoryUpdated_32.UpdatedBy",null,null,null,null,null,null,null,null,null,null,null,null));} %></i>&nbsp;&nbsp;"<% {String value = null;try{value=context.getFormattedValue(getObject("changed_by"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ChangedSince"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",136,e);}if (_boolean_result) { %>&nbsp;<i><% {out.write(localizeISText("ProductHistoryUpdated_32.UpdatedSince",null,null,null,null,null,null,null,null,null,null,null,null));} %></i>&nbsp;&nbsp;"<% {String value = null;try{value=context.getFormattedValue(getObject("ChangedSince"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% } %><br/><br/><% {out.write(localizeISText("ProductHistoryUpdated_32.CheckTheSpellingOrTryANewSearchTerm",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_detail"><% {out.write(localizeISText("ProductHistoryUpdated_32.NoUpdatedProductsFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductHistoryUpdated_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("ProductHistoryUpdated_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryUpdated_32.UpdatedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ProductHistoryUpdated_32.Date.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap">&nbsp;</td>
</tr><% while (loop("JournalEntries",null,null)) { %><tr>
<td class="table_detail w e s top" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:Object"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JournalEntries:Object:Domain"),null).equals(context.getFormattedValue(getObject("JournalEntries:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("JournalEntries:Object:UUID"),null))).addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %> 
</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:Object"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JournalEntries:Object:Domain"),null).equals(context.getFormattedValue(getObject("JournalEntries:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("JournalEntries:Object:UUID"),null))).addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %> 
</td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("JournalEntries:ProcessName"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("JournalEntries:ProcessName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ProcessName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;/&nbsp;<% } %><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s top left" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ChangeDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("JournalEntries:ChangeDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("JournalEntries:OldSnapShotData")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("JournalEntries:NewSnapShotData")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %> 
<td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductHistory_32-Detail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JournalEntryUUID",null),context.getFormattedValue(getObject("JournalEntries:UUID"),null))).addURLParameter(context.getFormattedValue("ChangeType",null),context.getFormattedValue(getObject("ChangeType"),null)).addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))),null)%>" class="table_detail_link"><% {out.write(localizeISText("ProductHistoryUpdated_32.Details.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else { %><td class="table_detail e s top" nowrap="nowrap">&nbsp;</td><% } %></tr><% } %></table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<input type="hidden" name="ChangeType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChangeType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceRepository" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepository"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {198}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","JournalEntries")}, 199); %></td>
</tr>
</table>
<!-- End Page Cursor -->
</td>
</tr>
</table><% } %></td>
</tr>
</table><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SourceRepository")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("MasterRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SourceRepository"),null).equals(context.getFormattedValue("ParentRepository",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "214");} %><% } %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>