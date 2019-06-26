<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-SelectCatalogSource",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SyndicationSelectCatalogSource.BrowseToGetProductsStep1SelectSource.text",null)))}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action555 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-Dispatch",null)))),null));String site555 = null;String serverGroup555 = null;String actionValue555 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-Dispatch",null)))),null);if (site555 == null){  site555 = action555.getDomain();  if (site555 == null)  {      site555 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup555 == null){  serverGroup555 = action555.getServerGroup();  if (serverGroup555 == null)  {      serverGroup555 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("selectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue555, site555, serverGroup555,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("SyndicationSelectCatalogSource.BrowseToGetProductsSelectSource.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("formSubmitted")))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("SourceRepository"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("SyndicationSelectCatalogSource.YouHaveNotSelectedASourceRepositoryToBrowseCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SyndicationSelectCatalogSource.Step1Of3NextStepSelectCatalogYouCanPopulateTheMast.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParentChannelRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SyndicationSelectCatalogSource.ParentChannelRepository.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SupplierRepositories")))).booleanValue() && ((Boolean) (hasLoopElements("SupplierRepositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% while (loop("SupplierRepositories",null,null)) { %><br/><% {String value = null;try{value=context.getFormattedValue(getObject("SupplierRepositories:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><br/><br/><% {out.write(localizeISText("SyndicationSelectCatalogSource.SelectARepositoryAndThenProceedToSelectACatalogAnd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ParentChannelRepository")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SupplierRepositories")))).booleanValue() && ((Boolean) (hasLoopElements("SupplierRepositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s">&nbsp;</td>
<td class="table_header e s"><% {out.write(localizeISText("SyndicationSelectCatalogSource.Source.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("SyndicationSelectCatalogSource.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParentChannelRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><tr>
<td class="w e s center top">
<input type="radio" name="SourceRepositoryID" value="<%=context.getFormattedValue(getObject("ParentChannelRepository:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ParentChannelRepository:UUID"),null).equals(context.getFormattedValue(getObject("SourceRepositoryID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>checked="checked"<% } %> />&nbsp;
</td>
<td class="table_detail e s" nowrap="nowrap"><b><% {out.write(localizeISText("SyndicationSelectCatalogSource.ParentChannelRepository.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_detail e s"><% {out.write(localizeISText("SyndicationSelectCatalogSource.ChannelRepositoryOfParentOrganization0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("ParentChannelRepository:OwningDomain:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SupplierRepositories")))).booleanValue() && ((Boolean) (hasLoopElements("SupplierRepositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% while (loop("SupplierRepositories",null,null)) { %><tr>
<td class="w e s center top">
<input type="radio" name="SourceRepositoryID" value="<%=context.getFormattedValue(getObject("SupplierRepositories:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SupplierRepositories:UUID"),null).equals(context.getFormattedValue(getObject("SourceRepositoryID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>checked="checked"<% } %> />&nbsp;
</td>
<td class="table_detail e s" nowrap="nowrap"><b><% {String value = null;try{value=context.getFormattedValue(getObject("SupplierRepositories:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b></td>
<td class="table_detail e s"><% {out.write(localizeISText("SyndicationSelectCatalogSource.RepositoryOfSupplier0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("SupplierRepositories:OwningDomain:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %></table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="formSubmitted" value="true"/>
<input type="submit" name="selectCatalogSource" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SyndicationSelectCatalogSource.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SyndicationSelectCatalogSource.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table> 
</td> 
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "86");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>