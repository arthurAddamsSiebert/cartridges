<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-SelectProductSource",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SyndicationSelectProductSource.SearchToGetProductsStep1SelectSource.text",null)))}, 4); %><!-- EO Page Navigator --><% URLPipelineAction action562 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-Dispatch",null)))),null));String site562 = null;String serverGroup562 = null;String actionValue562 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-Dispatch",null)))),null);if (site562 == null){  site562 = action562.getDomain();  if (site562 == null)  {      site562 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup562 == null){  serverGroup562 = action562.getServerGroup();  if (serverGroup562 == null)  {      serverGroup562 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("selectionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue562, site562, serverGroup562,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("SyndicationSelectProductSource.SearchToGetProductsSelectSource.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("formSubmitted")))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("SourceRepository"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("SyndicationSelectProductSource.YouHaveNotSelectedASourceRepositoryToSyndicateProd.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("SyndicationSelectProductSource.Step1Of2NextStepAssignProductsYouCanPopulateTheMas.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParentChannelRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("SyndicationSelectProductSource.ParentChannelRepository.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SupplierRepositories")))).booleanValue() && ((Boolean) (hasLoopElements("SupplierRepositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% while (loop("SupplierRepositories",null,null)) { %><br/><% {String value = null;try{value=context.getFormattedValue(getObject("SupplierRepositories:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><br/>
<br/><% {out.write(localizeISText("SyndicationSelectProductSource.SelectARepositoryAndThenProceedToSearchForProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ParentChannelRepository")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SupplierRepositories")))).booleanValue() && ((Boolean) (hasLoopElements("SupplierRepositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s">&nbsp;</td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Source.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_enterprise_app.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParentChannelRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><tr>
<td class="w e s center top">
<input type="radio" name="SourceRepositoryID" value="<%=context.getFormattedValue(getObject("ParentChannelRepository:UUID"),null)%>"/>&nbsp;
</td>
<td class="table_detail e s" nowrap="nowrap"><b><% {out.write(localizeISText("SyndicationSelectProductSource.ParentChannelRepository.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></b></td>
<td class="table_detail e s"><% {out.write(localizeISText("SyndicationSelectProductSource.ChannelRepositoryOfParentOrganization0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("ParentChannelRepository:OwningDomain:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SupplierRepositories")))).booleanValue() && ((Boolean) (hasLoopElements("SupplierRepositories") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% while (loop("SupplierRepositories",null,null)) { %><tr>
<td class="w e s center top">
<input type="radio" name="SourceRepositoryID" value="<%=context.getFormattedValue(getObject("SupplierRepositories:UUID"),null)%>"/>&nbsp;
</td>
<td class="table_detail e s" nowrap="nowrap"><b><% {String value = null;try{value=context.getFormattedValue(getObject("SupplierRepositories:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b></td>
<td class="table_detail e s"><% {out.write(localizeISText("SyndicationSelectProductSource.RepositoryOfSupplier0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("SupplierRepositories:OwningDomain:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %></table><% } %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="formSubmitted" value="true"/>
<input type="submit" name="selectProductSource" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SyndicationSelectProductSource.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "98");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>