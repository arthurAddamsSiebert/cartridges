<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- BrandingPackageList_32 -->
<!-- Working Area -->
<!-- Page Navigator --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "5");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Organization:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Organization:DisplayName")); getPipelineDictionary().put("OrgDisplayName", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("Organization:ID")); getPipelineDictionary().put("OrgDisplayName", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList_32.Branding.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("OrganizationType",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("Organization:UUID")),
new TagParameter("text",getObject("OrgDisplayName"))}, 10); %><!-- Tabs --><% {Object temp_obj = ("Branding"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"organization/OrganizationTabs_32", null, "14");} %><% URLPipelineAction action163 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_32-Dispatch",null)))),null));String site163 = null;String serverGroup163 = null;String actionValue163 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_32-Dispatch",null)))),null);if (site163 == null){  site163 = action163.getDomain();  if (site163 == null)  {      site163 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup163 == null){  serverGroup163 = action163.getServerGroup();  if (serverGroup163 == null)  {      serverGroup163 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackageList_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DetailBrandingPackage");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue163, site163, serverGroup163,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("BrandingPackageList_32.0Branding.table_title",null,null,getObject("OrgDisplayName"),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeletePackage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="confirm_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","branding"),
new TagParameter("cancelbtnname","cancelDeletion"),
new TagParameter("okbtnname","deletePackage"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("BrandingPackageList_32.DeleteAllSelectedPackages.message",null)))}, 26); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","branding"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("BrandingPackageList_32.PleaseSelectFirstAtLeastOneBrandingInstallation.message",null)))}, 28); %><% } %></table>
</td>
</tr><% } %><tr>
<td class="table_title_description e s w"><% {out.write(localizeISText("BrandingPackageList_32.TheListShowsTheUploadedBrandingSchemesForEvery.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><br/><br/><% {out.write(localizeISText("BrandingPackageList_32.ClickUploadToCreateANewBrandingSchemeClickDelete.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<!-- all archive's table -->
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BrandingPackages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><td class="w e s" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('DetailBrandingPackage','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("BrandingPackageList_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('DetailBrandingPackage','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("BrandingPackageList_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s"><% {out.write(localizeISText("BrandingPackageList_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="table_header w e s"><% {out.write(localizeISText("BrandingPackageList_32.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="table_header e s"><% {out.write(localizeISText("BrandingPackageList_32.Installations.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("BrandingPackageList_32.Action.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("BrandingPackages","Package",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><td class="w e s center top">
<input type="hidden" name="AllObjectUUID" value="<%=context.getFormattedValue(getObject("Package:UUID"),null)%>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(getObject("Package:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Package:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s top"><% } else { %><td class="table_detail w e s top"><% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingPackage_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("BrandingPackageUUID",null),context.getFormattedValue(getObject("Package:UUID"),null))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Package:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><br/><% {String value = null;try{value=context.getFormattedValue(getObject("Package:ShortDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Package:Installations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% while (loop("Package:Installations","Installation",null)) { %><tr>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Installation:Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> -&nbsp;</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Installation:Application:AppID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> -&nbsp;</td>
<td class="w100"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("Installation:Application:UrlIdentifier"),null).equals(context.getFormattedValue("-",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Installation:Application:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((((context.getFormattedValue(getObject("Installation:Application:UrlIdentifier"),null).equals(context.getFormattedValue("-",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("Installation:Application:DisplayName"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %> - <% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Installation:Application:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Installation:Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr><% } %></table><% } else { %><% {out.write(localizeISText("BrandingPackageList_32.None.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrandingInstallationList_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)).addURLParameter(context.getFormattedValue("BrandingPackageUUID",null),context.getFormattedValue(getObject("Package:UUID"),null))),null)%>" class="table_detail_link2"><% {out.write(localizeISText("BrandingPackageList_32.Install.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;
<% } %></td>
</tr><% } %><% } else { %><tr>
<td class="table_detail w e s" colspan="4"><% {out.write(localizeISText("BrandingPackageList_32.NoBrandingPackagesHaveBeenUploadedYet.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PARTNERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="ChannelID" type="hidden" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input name="OrganizationUUID" type="hidden" value="<%=context.getFormattedValue(getObject("Organization:UUID"),null)%>"/>
<input type="submit" name="newPackage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList_32.Upload.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("BrandingPackages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><td class="button"><input type="submit" name="confirmDeletePackage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("BrandingPackageList_32.Delete.button",null)),null)%>" class="button"/></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "142");} %><!-- EO Working Area --><% printFooter(out); %>