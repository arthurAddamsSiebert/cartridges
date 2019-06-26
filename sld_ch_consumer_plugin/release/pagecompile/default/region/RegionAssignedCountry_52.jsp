<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjects_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RegionID",null),context.getFormattedValue(getObject("Region:Id"),null))).addURLParameter(context.getFormattedValue("ObjectType",null),context.getFormattedValue(getObject("ObjectType"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("RegionAssignedCountry_52.AssignedCountries.text",null)))}, 5); %><% URLPipelineAction action208 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjects_52-Dispatch",null)))),null));String site208 = null;String serverGroup208 = null;String actionValue208 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjects_52-Dispatch",null)))),null);if (site208 == null){  site208 = action208.getDomain();  if (site208 == null)  {      site208 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup208 == null){  serverGroup208 = action208.getServerGroup();  if (serverGroup208 == null)  {      serverGroup208 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionGeoObjects_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("GeoObjectsListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue208, site208, serverGroup208,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Region:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;-&nbsp;<% } %><% {out.write(localizeISText("RegionAssignedCountry_52.AssignedCountries.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<!-- simple delete confirmation-->
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmGeoObjectDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("cancelbtnname","cancelGeoObjectDelete"),
new TagParameter("okbtnname","deleteGeoObject"),
new TagParameter("type","mdc")}, 21); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("type","mde")}, 23); %><% } %><% } %><!-- end error handling -->
</td>
</tr>
<tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("simpleSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("simpleSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("advanceSearch")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("advanceSearch"),null).equals(context.getFormattedValue("Find",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionAssignedCountry_52.AssignedCountriesFoundBySearch.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("RegionAssignedCountry_52.ListShowsAllAssignedCountries.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> </br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionAssignedCountry_52.UnassignSelectedDestinationRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("RegionAssignedCountry_52.UnassignSelectedShippingCondition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {out.write(localizeISText("RegionAssignedCountry_52.AssignMoreDestinationRegion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("RegionAssignedCountry_52.AssignMoreShippingCondition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><br/><% {out.write(localizeISText("RegionAssignedCountry_52.UseSearchFieldToFilter.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="4" width="100%" class="infobox w e">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("RegionAssignedCountry_52.CountrySearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/CountrySearch_52", null, "45");} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr> 
<td>
<input type="hidden" name="RegionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><input type="hidden" name="ObjectType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ObjectType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table border="0" cellspacing="0" cellpadding="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GeoObjects") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header aldi" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('GeoObjectsListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionAssignedCountry_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('GeoObjectsListForm','SelectedObjectUUID','A','B');" class="tableheader"><% {out.write(localizeISText("RegionAssignedCountry_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("RegionAssignedCountry_52.Country.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr><% while (loop("GeoObjects","Country",null)) { %><tr>
<td class="w e s center top"><% {Object temp_obj = (context.getFormattedValue(getObject("Country:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Country:Id"),null)); getPipelineDictionary().put("ComposedID", temp_obj);} %><input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ComposedID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(ComposedID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td> 
</tr><% } %></table>
</td>
</tr>
<tr>
<td class="w e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectGeoObject" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionAssignedCountry_52.New.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="confirmGeoObjectDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionAssignedCountry_52.Delete.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table> 
</td>
</tr> 
<% } else { %><tr>
<td width="100%" class="table_detail w e n s"><% {out.write(localizeISText("RegionAssignedCountry_52.NoCountriesToShow.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td width="100%" class="w e s" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="selectGeoObject" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("RegionAssignedCountry_52.New.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr><% } %></table>
<!-- Start Page Cursor -->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% processOpenTag(response, pageContext, "flexpagingbar", new TagParameter[] {
new TagParameter("rowsperpage",getObject("RowsPerPage")),
new TagParameter("pageable","GeoObjects"),
new TagParameter("variablepagesize","true")}, 142); %> 
<!-- End Page Cursor -->
</td>
</tr>
</table><% out.print("</form>"); %> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "149");} %><!-- EO Working Area --><% printFooter(out); %>