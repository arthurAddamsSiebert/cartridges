<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "3");} %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("ChannelCatalogSharingSelectPartner_32.AssignNewPartner.text",null)))}, 5); %><!-- EO Page Navigator -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.AssignNewPartner.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoPartnerSelectionError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.YouHaveNotSelectedAnyPartnerUseTheCheckboxes.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_CATALOGID_EXISTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.TheCatalogCouldNotBeAssignedTheCatalogIDAlready.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedPartners") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.TheListShowsAllPartnerCurrentlyAvailableWhichAre.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } else { %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.CurrentlyThisEnterpriseHasNoUnassignedPartnerFor.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action198 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogSharing_32-Dispatch",null)))),null));String site198 = null;String serverGroup198 = null;String actionValue198 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogSharing_32-Dispatch",null)))),null);if (site198 == null){  site198 = action198.getDomain();  if (site198 == null)  {      site198 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup198 == null){  serverGroup198 = action198.getServerGroup();  if (serverGroup198 == null)  {      serverGroup198 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogSharing_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("detailForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue198, site198, serverGroup198,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedPartners") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><tr>
<td class="w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('detailForm','SelectedPartnerUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('detailForm','SelectedPartnerUUID','A','B');" class="tableheader"><% {out.write(localizeISText("ChannelCatalogSharingSelectPartner_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div> 
</td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sorting", new TagParameter[] {
new TagParameter("pipeline","ViewChannelCatalogSharing_32-NewRefresh"),
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("parametername1","UnitName"),
new TagParameter("parametervalue2",getObject("CatalogTypeCode")),
new TagParameter("parametervalue1",getObject("UnitName")),
new TagParameter("parametername2","CatalogTypeCode"),
new TagParameter("sortingattribute","DisplayName"),
new TagParameter("style","tableheader"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("tableheader","Name")}, 74); %></td>
<td class="table_header e s"><% processOpenTag(response, pageContext, "sorting", new TagParameter[] {
new TagParameter("pipeline","ViewChannelCatalogSharing_32-NewRefresh"),
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("parametername1","UnitName"),
new TagParameter("parametervalue2",getObject("CatalogTypeCode")),
new TagParameter("parametervalue1",getObject("UnitName")),
new TagParameter("parametername2","CatalogTypeCode"),
new TagParameter("sortingattribute","ID"),
new TagParameter("style","tableheader"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("tableheader","ID")}, 77); %></td>
</tr> 
<% while (loop("UnassignedPartners","Partner",null)) { %> 
<tr>
<td class="w e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Partner:UUID"),null).equals(context.getFormattedValue(getObject("PartnerClipboard:ObjectUUID(Partner:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedPartnerUUID" value="<%=context.getFormattedValue(getObject("Partner:UUID"),null)%>" checked="checked"/><% } else { %><input type="checkbox" name="SelectedPartnerUUID" value="<%=context.getFormattedValue(getObject("Partner:UUID"),null)%>"/><% } %> 
<input type="hidden" name="ListPartnerUUID" value="<%=context.getFormattedValue(getObject("Partner:UUID"),null)%>"/>
</td> 
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Partner:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Partner:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr> 
<% } %><% } %> 
<tr>
<td align="right" class="w e s" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UnassignedPartners") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogSharingSelectPartner_32.OK.button",null)),null)%>" class="button"/>
</td><% } %><td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelCatalogSharingSelectPartner_32.Cancel.button",null)),null)%>" class="button"/>
<input type="hidden" name="CatalogUUID" value="<%=context.getFormattedValue(getObject("Catalog:UUID"),null)%>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %><input type="hidden" name="CatalogTypeCode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="UnitName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %></td>
</tr> 
</table> 
</td> 
</tr>
</table> 
<% out.print("</form>"); %><!-- EO Primary Buttons -->
<!-- EO Working Area --><% printFooter(out); %>