<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-CategoryDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("CategoryUUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",getObject("Category:DisplayName"))}, 5); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title w e s n">&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td valign="top" class="e w" width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.CategoryName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="200" height="1" alt="" border="0"/></td>
<td width="100%" class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td> 
</tr>
<tr>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Category:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.NoDescriptionAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail s" nowrap="nowrap"><b><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></b></td>
</tr>
<tr>
<td class="table_header e s" nowrap="nowrap"><b><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.ParentCategory.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category:Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("SearchIndexFilterCategoryWizardCategoryDetails.CategoryHasNoParentCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cameFrom"),null).equals(context.getFormattedValue("filterEditor",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-EditFilterAttribute",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% {Object temp_obj = ("backForm"); getPipelineDictionary().put("FormName", temp_obj);} %><% } else { %><% {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilterCategoryWizard-CategoryTree",null))))); getPipelineDictionary().put("FormAction", temp_obj);} %><% {Object temp_obj = ("back_Form"); getPipelineDictionary().put("FormName", temp_obj);} %><% } %><% URLPipelineAction action179 = new URLPipelineAction(context.getFormattedValue(getObject("FormAction"),null));String site179 = null;String serverGroup179 = null;String actionValue179 = context.getFormattedValue(getObject("FormAction"),null);if (site179 == null){  site179 = action179.getDomain();  if (site179 == null)  {      site179 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup179 == null){  serverGroup179 = action179.getServerGroup();  if (serverGroup179 == null)  {      serverGroup179 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("FormAction"),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("FormName"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue179, site179, serverGroup179,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "56");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>