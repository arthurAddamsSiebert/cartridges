<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/inc/Modules", null, "3");} %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeList.IndexedAttributes.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Attributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))))),
new TagParameter("id",getObject("SearchIndex:IndexID")),
new TagParameter("text",getObject("SearchIndex:IndexID"))}, 5); %><% {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} %><% {Object temp_obj = ("Attributes"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/OrganizationSearchIndexTabs", null, "11");} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><tr>
<td class="table_title2 left s e w"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.AvailableAttributes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Structural changes require an update of the SearchIndex --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("SearchIndex:isConsistent"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"searchindex/OrganizationSearchIndexInconsistentMessage", null, "28");} %></td>
</tr><% } %><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% URLPipelineAction action576 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null));String site576 = null;String serverGroup576 = null;String actionValue576 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null);if (site576 == null){  site576 = action576.getDomain();  if (site576 == null)  {      site576 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup576 == null){  serverGroup576 = action576.getServerGroup();  if (serverGroup576 == null)  {      serverGroup576 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AttributeList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue576, site576, serverGroup576,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedAttributeName"))))).booleanValue() && ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("Sorting"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("confirmDeleteAttributes"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.YouHaveNotSelectedAStandardProductAttributeUseTheC.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:FeatureID"),null).equals(context.getFormattedValue("SFContentSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ThisListShowsTheStandardContentAttributesAvailable.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:FeatureID"),null).equals(context.getFormattedValue("SFProductSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ThisListShowsTheStandardProductAttributesAvailable.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ThisListShowsTheStandardAttributesAvailable.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr> 
<% while (loop("BusinessAttributes","attrib",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndex:Configuration:AttributeByName(attrib:Name)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplaySelectableAttributes", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisplaySelectableAttributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_header aldi center" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('AttributeList','SelectedAttributeName','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('AttributeList','SelectedAttributeName','A','B');" class="tableheader"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header n e s" nowrap="nowrap" width="300"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.AttributeDisplayName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap" width="200"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.AttributeID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("BusinessAttributes","attrib",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndex:Configuration:AttributeByName(attrib:Name)")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e s center">
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_DisplayName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:DisplayName(SearchIndex:Configuration:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Description" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Description(SearchIndex:Configuration:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("attrib:Unit")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("attrib:Unit"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_Unit" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Unit(SearchIndex:Configuration:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedAttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("attrib:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("attrib:Description(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr>
<tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="addAttributes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeList.Add.button",null)),null)%>" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } else { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail w e n s"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ThereAreNoAttributesToSelect.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% } %><!-- Selected attributes list --><% URLPipelineAction action577 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null));String site577 = null;String serverGroup577 = null;String actionValue577 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null);if (site577 == null){  site577 = action577.getDomain();  if (site577 == null)  {      site577 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup577 == null){  serverGroup577 = action577.getServerGroup();  if (serverGroup577 == null)  {      serverGroup577 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectedAttributeList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue577, site577, serverGroup577,true)); %><input type="hidden" name="SearchIndexID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 left s e w"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.IndexedAttributes.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_NewAttribute_Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.CouldNotAddNewAttributePleaseProvideAValidID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_NewAttribute_DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.CouldNotAddNewAttribute.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_AttributeAlreadyExists"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %> 
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.CouldNotAddNewAttributeAttributeAlreadyExists.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% }}} %><!-- delete confirmation --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteAttributes")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("SelectedAttributeNamesClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",209,e);}if (_boolean_result) { %><tr>
<td class="w e s" >
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.YouHaveNotSelectedAnyAttributeToBeRemoved.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
</td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteAttributes")))).booleanValue() && ((Boolean) ((hasLoopElements("SelectedAttributeNamesClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %> 
<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeList.Filterattributes.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteAttributes"),
new TagParameter("okbtnname","deleteAttributes"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeList.AreYouSureThatYouWantToRemoveTheseAttributes.message",null)))}, 224); %><% } %><tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:FeatureID"),null).equals(context.getFormattedValue("SFContentSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.TheListShowsAllAttributesThatWillBeIncludedInConte.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndex:SearchIndexFeature:FeatureID"),null).equals(context.getFormattedValue("SFProductSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.TheListShowsAllAttributesThatWillBeIncludedInProdu.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.TheListShowsAllAttributesThatWillBeIncluded.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ToAddACustomAttributeSpecifyTheNameIDAndDescription.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% while (loop("ConfigurationAttributes","attribute",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConfigurationAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayAttributes", temp_obj);} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisplayAttributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",276,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",281,e);}if (_boolean_result) { %><td class="table_header w e s center" nowrap="nowrap" width="75"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SortDirection")))).booleanValue() && ((Boolean) ((((context.getFormattedValue("asc",null).equals(context.getFormattedValue(getObject("SortDirection"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",283,e);}if (_boolean_result) { %><% {Object temp_obj = ("desc"); getPipelineDictionary().put("NewSortDirection", temp_obj);} %><% } else { %><% {Object temp_obj = ("asc"); getPipelineDictionary().put("NewSortDirection", temp_obj);} %><% } %><input type="hidden" name="SortBy" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {288}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="SortDirection" value="<% {String value = null;try{value=context.getFormattedValue(getObject("NewSortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {289}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<div id="C">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectedAttributeList','SelectedAttributeName','C','D');" class="tableheader"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="D" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('SelectedAttributeList','SelectedAttributeName','C','D');" class="tableheader"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap" width="300"><% } else { %><td class="table_header w e s" nowrap="nowrap" width="300"><% } %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-SortAttributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DisplayName",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null))),null)%>"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.AttributeDisplayName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
<td class="table_header e s" nowrap="nowrap">
<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-SortAttributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null))),null)%>"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.AttributeID.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
<td class="table_header e s" nowrap="nowrap">
<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-SortAttributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Description",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null))),null)%>"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.Description.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
<td class="table_header e s" nowrap="nowrap">
<a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndex-SortAttributes",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))).addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DataType",null)).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue(getObject("NewSortDirection"),null))),null)%>"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.DataType.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr><% while (loop("ConfigurationAttributes","attribute",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",329,e);}if (_boolean_result) { %><td class="table_detail w e s center">
<input type="hidden" name="AttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {331}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isStandard"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",332,e);}if (_boolean_result) { %><input type="checkbox" disabled="disabled" name="SelectedAttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {333}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } else { %><input type="checkbox" name="SelectedAttributeName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {335}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedAttributeNamesClipboard:contains(attribute:Name)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",336,e);}if (_boolean_result) { %>checked="checked"<% } %>
/><% } %></td>
<td class="table_detail e s"><% } else { %><td class="table_detail w e s"><% } %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexAttribute-EditAttribute",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))).addURLParameter(context.getFormattedValue("AttributeName",null),context.getFormattedValue(getObject("attribute:Name"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {344}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s"><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOrganizationSearchIndexAttribute-EditAttribute",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null))).addURLParameter(context.getFormattedValue("AttributeName",null),context.getFormattedValue(getObject("attribute:Name"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {345}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>&nbsp;</td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("attribute:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {346}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s"><% processOpenTag(response, pageContext, "searchindexattributedatatype", new TagParameter[] {
new TagParameter("SearchIndexAttribute",getObject("attribute"))}, 349); %></td>
</tr><% } %></table>
</td>
</tr><% } else { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_detail w e s"><% {out.write(localizeISText("OrganizationSearchIndexAttributeList.ThereAreNoAttributesSelectedCurrently.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("DisplayAttributes")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",368,e);}if (_boolean_result) { %><tr>
<td>
<table class="w e s right" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="newAttribute" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeList.New.button",null)),null)%>" /></td>
<td class="button"><input class="button" type="submit" name="confirmDeleteAttributes" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("OrganizationSearchIndexAttributeList.Remove.button",null)),null)%>" /></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "388");} %><% printFooter(out); %>