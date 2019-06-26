<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication-DispatchSelectCatalogSource",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceRepository",null),context.getFormattedValue(getObject("SourceRepository"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("CatalogList.Step2SelectCatalog.text",null)))}, 3); %><% URLPipelineAction action570 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationCatalogs-Dispatch",null)))),null));String site570 = null;String serverGroup570 = null;String actionValue570 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationCatalogs-Dispatch",null)))),null);if (site570 == null){  site570 = action570.getDomain();  if (site570 == null)  {      site570 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup570 == null){  serverGroup570 = action570.getServerGroup();  if (serverGroup570 == null)  {      serverGroup570 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationCatalogs-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("catalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue570, site570, serverGroup570,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="SourceRepositoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepositoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("CatalogList.BrowseToGetProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("CatalogList.YouHaveNotSelectedAnyCatalogSelectACatalogAndClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RootCategoryID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s" >
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("CatalogList.AreYouSureYouWantToAssignAllProductsAvailableInThe.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
<td align="right">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.OK.button",null)),null)%>" class="button"/>
</td>
<td>
&nbsp;
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Repository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceRepository:Domain:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategories:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DeterminePageablePipeline" value="BatchProcessSyndication-GetAssignedProducts"/>
<input type="hidden" name="ProcessDescription" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.AssigningProductsFromCatalogToProductRepository.input",null)),null)%>"/>
</td>
<td class="button">
<input type="submit" name="CancelAssignCatalog" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("CatalogList.Step2Of3NextStepBrowseAndAssignProductsChooseACata.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("CatalogList.StandardCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("CatalogList.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("CatalogList.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("StandardCatalogs","StandardCatalogs",null)) { %><tr>
<td class="center table_detail w e s">
<input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null)%>"/>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationCatalogs-AssignAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceRepositoryID",null),context.getFormattedValue(getObject("SourceRepositoryID"),null))).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null))),null)%>" class="breadcrumb"><% {out.write(localizeISText("CatalogList.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %><tr>
<td colspan="4" class="table_detail w e s">&nbsp;</td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("CatalogList.CurrentlyNoStandardCatalogsAreAvailableForSyndicat.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e"><% {out.write(localizeISText("CatalogList.ClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("CatalogList.Select.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Name.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("CatalogList.Description.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("CatalogList.Action.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ClassificationCatalogs",null,null)) { %><tr>
<td class="center table_detail w e s">
<input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null)%>"/>&nbsp;
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationCatalogs-AssignAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceRepositoryID",null),context.getFormattedValue(getObject("SourceRepositoryID"),null))).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null))),null)%>" class="breadcrumb"><% {out.write(localizeISText("CatalogList.AssignAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("CatalogList.CurrentlyNoClassificationCatalogsAreAvailableForSy.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="w s" align="left" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="SelectCatalogSource" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td class="e s" align="right" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="startBowsing" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CatalogList.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>