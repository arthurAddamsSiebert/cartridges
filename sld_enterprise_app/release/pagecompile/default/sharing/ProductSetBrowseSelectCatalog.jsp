<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-SelectCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductSetID",null),context.getFormattedValue(getObject("ProductSet:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductSetBrowseSelectCatalog.Step1SelectCatalog.text",null)))}, 3); %><% URLPipelineAction action491 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-Dispatch",null)))),null));String site491 = null;String serverGroup491 = null;String actionValue491 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-Dispatch",null)))),null);if (site491 == null){  site491 = action491.getDomain();  if (site491 == null)  {      site491 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup491 == null){  serverGroup491 = action491.getServerGroup();  if (serverGroup491 == null)  {      serverGroup491 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("catalogForm");out.print("\"");out.print(" id=\"");out.print("catalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue491, site491, serverGroup491,true)); %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SyndicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ProductSetID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Step1SelectCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box"> 
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.YouHaveNotSelectedAnyCatalogSelectACatalogAndClick.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Step1Of2NextStepBrowseAndAssignProductsChooseACata.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.StandardCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Shared Standard Catalogs --><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title2 w e s" colspan="5" width="100%"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.SharedCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SharedStandardCatalogs","StandardCatalogs",null)) { %><tr>
<td class="input_radio_table w e s"><input type="radio" name="CatalogCategoryID" id="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&nbsp;</td>
<td class="e s"><label class="label label_table label_light label_radio_text" for="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="4">
<tr> 
<td class="button e s"> 
<input type="submit" name="assignCategory_<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null)%>" class="button" onclick="$('<%=context.getFormattedValue("#",null)%>catalogForm').attr('action', '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null))),null)%>')"/> 
</td>
</tr>
</table>
</td> 
</tr><% } %><tr>
<td colspan="5" class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table><% } %><!-- Local Standard Catalogs -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title2 w e s" colspan="5" width="100%"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.LocalCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LocalStandardCatalogs","StandardCatalogs",null)) { %><tr>
<td class="input_radio_table w e s"><input type="radio" name="CatalogCategoryID" id="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&nbsp;</td>
<td class="e s"><label class="label label_table label_light label_radio_text" for="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="4">
<tr> 
<td class="button e s">
<input type="submit" name="assignCategory_<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null)%>" class="button" onclick="$('<%=context.getFormattedValue("#",null)%>catalogForm').attr('action', '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null))),null)%>')"/> 
</td>
</tr>
</table>
</td> 
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.ThereAreNoLocalCatalogsDefinedForThisOrganization.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td valign="top" class="w e" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.ClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title2 w e s" colspan="5" width="100%"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.SharedCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SharedClassificationCatalogs","ClassificationCatalogs",null)) { %><tr>
<td class="input_radio_table w e s"><input type="radio" name="CatalogCategoryID" id="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&nbsp;</td>
<td class="e s"><label class="label label_table label_light label_radio_text" for="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="4">
<tr>
<td class="button e s">
<input type="submit" name="assignCategory_<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null)%>" class="button" onclick="$('<%=context.getFormattedValue("#",null)%>catalogForm').attr('action', '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null))),null)%>')"/>
</td>
</tr>
</table>
</td> 
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.CurrentlyNoClassificationCatalogsAreSharedToThisOr.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><tr>
<td valign="top" class="w e" colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_title2 w e s" colspan="5" width="100%"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.LocalCatalogs.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",193,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LocalClassificationCatalogs","ClassificationCatalogs",null)) { %><tr>
<td class="input_radio_table w e s"><input type="radio" name="CatalogCategoryID" id="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {203}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>&nbsp;</td>
<td class="e s"><label class="label label_table label_light label_radio_text" for="CatalogCategoryID_<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></label></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="4">
<tr>
<td class="button e s">
<input type="submit" name="assignCategory_<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.AssignAll.button",null)),null)%>" class="button" onclick="$('<%=context.getFormattedValue("#",null)%>catalogForm').attr('action', '<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSetAssignProductsByBrowse-AssignProductsOfCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)).addURLParameter(context.getFormattedValue("RootCategoryID",null),context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null))),null)%>')"/> 
</td>
</tr>
</table> 
</td> 
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ProductSetBrowseSelectCatalog.ThereAreNoLocalClassificationCatalogsDefinedForThi.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="w s" align="left">&nbsp;
</td>
<td class="e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SharedStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("LocalStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("SharedClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("LocalClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="browseCatalog" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetBrowseSelectCatalog.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td><% } %><td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductSetBrowseSelectCatalog.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>