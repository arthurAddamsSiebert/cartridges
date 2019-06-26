<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeSelectSource.SelectSourceAttribute.text",null)))}, 5); %><% {Object temp_obj = ("Attributes"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% URLPipelineAction action583 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexAttribute-Dispatch",null)))),null));String site583 = null;String serverGroup583 = null;String actionValue583 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexAttribute-Dispatch",null)))),null);if (site583 == null){  site583 = action583.getDomain();  if (site583 == null)  {      site583 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup583 == null){  serverGroup583 = action583.getServerGroup();  if (serverGroup583 == null)  {      serverGroup583 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexAttribute-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SourceAttributeIDForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue583, site583, serverGroup583,true)); %> 
<input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.SelectSourceAttributeID.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.TheListShowsTheAvailableSourceAttributesAsDefinedF.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MissingSelection"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><tr>
<td class="w e n">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e top"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.PleaseSelectASourceAttributeID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
</td> 
</tr><% } %> 
<tr>
<td class="n w e s">
<table class="infobox" width="100%" border="0">
<tr>
<td class="infobox_title" width="12%" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.IndexLanguage.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Configuration:Locale:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectableSourceAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s center" nowrap="nowrap" width="75"><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" ><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.AttributeID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" ><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" ><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.DisplayName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SelectableSourceAttributes","SelectableAttribute",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SelectableAttribute:Name"),null).equals(context.getFormattedValue(getObject("Attribute:Name"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s center" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeUpdateForm:DataProviderName:Value"),null).equals(context.getFormattedValue("copy",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedSourceAttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectableAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedSourceAttributesMap:get(SelectableAttribute:Name)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>checked="checked"<% } %> /><% } else { %><input type="radio" name="SelectedSourceAttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectableAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedSourceAttributesMap:get(SelectableAttribute:Name)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>selected="selected"<% } %> /><% } %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("SelectableAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "searchindexattributedatatype", new TagParameter[] {
new TagParameter("SearchIndexAttribute",getObject("SelectableAttribute"))}, 73); %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("SelectableAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %></table>
</td>
</tr><% } else { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail" ><% {out.write(localizeISText("OrganizationSearchIndexAttributeSelectSource.CurrentlyThereAreNoSourceAttributesAvailableForThi.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></tr>
</table><% } %><tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectableSourceAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><td class="button"><input class="button" type="submit" name="selectedSource" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeSelectSource.Select.button",null)),null)%>" /></td><% } %><td class="button"><input class="button" type="submit" name="cancelSelectSource" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeSelectSource.Cancel.button",null)),null)%>" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>