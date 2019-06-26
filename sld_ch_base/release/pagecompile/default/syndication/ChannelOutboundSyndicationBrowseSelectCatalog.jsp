<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationBrowse-SelectCatalog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelOutboundSyndicationBrowseSelectCatalog.Step1SelectCatalog.text",null)))}, 3); %><% URLPipelineAction action109 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationBrowse-Dispatch",null)))),null));String site109 = null;String serverGroup109 = null;String actionValue109 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationBrowse-Dispatch",null)))),null);if (site109 == null){  site109 = action109.getDomain();  if (site109 == null)  {      site109 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup109 == null){  serverGroup109 = action109.getServerGroup();  if (serverGroup109 == null)  {      serverGroup109 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationBrowse-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("catalogForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue109, site109, serverGroup109,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SyndicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Step1SelectCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOG"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="w e s">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box"> 
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.YouHaveNotSelectedAnyCatalogSelectACatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Step1Of2NextStepBrowseAndAssignProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.StandardCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Shared Standard Catalogs -->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s" colspan="5" width="100%"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.SharedCatalogs.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SharedStandardCatalogs","StandardCatalogs",null)) { %><tr>
<td class="center table_detail w e s"><input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null)%>"/>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail e s" nowrap="">
<button class="action_button" name="AssignAll" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<a class="button"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</button> 
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.CurrentlyTheChannelHasNoSharedCatalogs.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr><% } %></table>
<!-- Local Standard Catalogs -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header w e s" colspan="5" width="100%"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.LocalCatalogs.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LocalStandardCatalogs","StandardCatalogs",null)) { %><tr>
<td class="center table_detail w e s"><input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null)%>"/>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
&nbsp;
<% } %></td>
<td class="table_detail e s" nowrap="">
<button class="action_button" name="AssignAll" value="<% {String value = null;try{value=context.getFormattedValue(getObject("StandardCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<a class="button"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</button> 
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.CurrentlyTheChannelHasNoLocalCatalogs.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e ">&nbsp;</td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e n"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.ClassificationCatalogs.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s" colspan="5" width="100%"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.SharedCatalogs.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SharedClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("SharedClassificationCatalogs","ClassificationCatalogs",null)) { %><tr>
<td class="center table_detail w e s"><input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null)%>"/>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s" nowrap="">
<button class="action_button" name="AssignAll" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<a class="button"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</button> 
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.ThereAreNoSharedClassificationCatalogsDefinedInChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="w e ">&nbsp;</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="n">
<tr>
<td class="table_header w e s" colspan="5" width="100%"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.LocalCatalogs.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="45%" class="table_header e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="10%" class="table_header e s center"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LocalClassificationCatalogs","ClassificationCatalogs",null)) { %><tr>
<td class="center table_detail w e s"><input type="radio" name="CatalogCategoryID" value="<%=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null)%>"/>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {183}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail e s" nowrap="">
<button class="action_button" name="AssignAll" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationCatalogs:Root:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {185}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<a class="button"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.AssignAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</button> 
</td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s"><% {out.write(localizeISText("ChannelOutboundSyndicationBrowseSelectCatalog.ThereAreNoLocalClassificationCatalogsDefinedInChannel.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="w s" align="left">&nbsp;
</td>
<td class="e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SharedStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("LocalStandardCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("SharedClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("LocalClassificationCatalogs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="StartBrowsing" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationBrowseSelectCatalog.Next.button",null)),null)%>&nbsp;&gt;&gt;" class="button"/></td><% } %><td class="button"><input type="submit" name="Cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationBrowseSelectCatalog.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>