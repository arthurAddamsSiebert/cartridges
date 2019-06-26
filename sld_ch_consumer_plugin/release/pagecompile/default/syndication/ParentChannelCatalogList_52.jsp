<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% URLPipelineAction action433 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null));String site433 = null;String serverGroup433 = null;String actionValue433 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null);if (site433 == null){  site433 = action433.getDomain();  if (site433 == null)  {      site433 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup433 == null){  serverGroup433 = action433.getServerGroup();  if (serverGroup433 == null)  {      serverGroup433 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("catalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue433, site433, serverGroup433,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SourceDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SourceDomainUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="breadcrumb">
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannel-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;&gt;&nbsp;<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {out.write(localizeISText("ParentChannelCatalogList_52.ChannelCatalogs.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {out.write(localizeISText("ParentChannelCatalogList_52.SyndicationSynchronization.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<a class="breadcrumb" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-SelectCatalogSource",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>"><% {out.write(localizeISText("ParentChannelCatalogList_52.BrowseToGetProductsStep1SelectSource.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&gt;&nbsp;
<% {out.write(localizeISText("ParentChannelCatalogList_52.Step2SelectCatalog.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ParentChannelCatalogList_52.BrowseToGetProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RootCategoryID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s" >
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("ParentChannelCatalogList_52.AreYouSureYouWantToAssignAllProductsAvailable.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
<td align="right"> 
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="StartAssignAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelCatalogList_52.OK.button",null)),null)%>" class="button"/></td>
<td>
&nbsp;
<input type="hidden" name="TargetDomainUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DomainID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategories:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="DeterminePageablePipeline" value="BatchProcessSyndication-GetAssignedProducts"/>
<input type="hidden" name="ProcessDescription" value="Assigning products from catalog to channel repository."/>
</td>
<td class="button"><input type="submit" name="BackToPreviousPage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelCatalogList_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table> 
</td> 
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td class="w e s"> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ParentChannelCatalogList_52.HaveNotSelectedAnyCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ParentChannelCatalogList_52.Step2Of3NextStepBrowseAndAssignProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("ParentChannelCatalogList_52.StandardCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ParentChannelCatalogList_52.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("StandardCatalogs","StandardCatalogs",null)) { %><tr>
<td class="center table_detail w e s"><input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null)%>"/>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-AssignAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null))).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("StandardCatalogs:Id"),null))),null)%>" class="breadcrumb"><% {out.write(localizeISText("ParentChannelCatalogList_52.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e ">&nbsp;</td>
</tr>
</table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_detail w e"><% {out.write(localizeISText("ParentChannelCatalogList_52.CurrentlyTheEnterpriseHasNoCatalogsShared.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("ParentChannelCatalogList_52.ClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ParentChannelCatalogList_52.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ClassificationCatalogs",null,null)) { %><tr>
<td class="center table_detail w e s"><input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null)%>"/>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationParentChannelCatalogs_52-AssignAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceDomainUUID",null),context.getFormattedValue(getObject("SourceDomainUUID"),null))).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Id"),null))),null)%>" class="breadcrumb"><% {out.write(localizeISText("ParentChannelCatalogList_52.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% } %></table><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ParentChannelCatalogList_52.ThereAreNoClassificationSupplierCatalogsDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table> 
<% } %><table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr> 
<td class="w s" align="left"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="SelectCatalogSource" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelCatalogList_52.Previous.button",null)),null)%>"/></td>
</tr>
</table> 
</td>
<td class="e s" align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("StandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="startBowsing" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelCatalogList_52.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ParentChannelCatalogList_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table> 
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>