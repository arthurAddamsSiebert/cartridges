<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: image/ImageSetSelectClassificationCatalog_32.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-SelectClassificationCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ImageSetDefinitionID",null),context.getFormattedValue(getObject("ImageSet:ID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ImageSetSelectClassificationCatalog_32.AddClassificationCategoryStep1SelectCatalog.text",null)))}, 5); %><!-- Working Area --><% URLPipelineAction action113 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-Dispatch",null)))),null));String site113 = null;String serverGroup113 = null;String actionValue113 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-Dispatch",null)))),null);if (site113 == null){  site113 = action113.getDomain();  if (site113 == null)  {      site113 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup113 == null){  serverGroup113 = action113.getServerGroup();  if (serverGroup113 == null)  {      serverGroup113 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageSetDefinitionClassificationCategoryWizard_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogSelectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue113, site113, serverGroup113,true)); %><input type="hidden" name="ImageSetDefinitionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CatalogSelectionFormSubmitted" value="true" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title aldi" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("ImageSet:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.AddClassificationCategoryStep1SelectCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CatalogSelectionFormSubmitted"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="5" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
</td>
<td class="error top" width="100%"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.YouHaveNotSelectedAClassificationCatalogToAssign.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Step1Of2SelectAClassificationCatalogNextStepSelect.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><tr>
<td class="table_header w s center" width="5%"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w s" nowrap="nowrap"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ClassificationCatalogs","Catalog",null)) { %><tr>
<td class="w s center top">
<input type="radio" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogUUID"),null).equals(context.getFormattedValue(getObject("Catalog:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td> 
<td class="table_detail w s top" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryAssignmentWizard_32-CatalogDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td class="table_detail w s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Shared.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Local.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail w s top"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:Status")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail w e s top"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ShortDescription")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.NoDescriptionAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="5"><% {out.write(localizeISText("ImageSetSelectClassificationCatalog_32.ThereAreCurrentlyNoClassificationCatalogsToShow.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<% } %><!-- Next/Cancel button -->
<tr>
<td align="right" colspan="5" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="selectCategoryStart" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCatalog_32.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImageSetSelectClassificationCatalog_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>