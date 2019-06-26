<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-SelectCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.SelectClassificationAttributes.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s n"><% {out.write(localizeISText("sld_enterprise_app.ProductClassificationSearchSelectClassificationAtt.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SetCategory")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("CategoryReferences"))))).booleanValue() || ((Boolean) ((( ((Number) getObject("CategoryReferences:Size")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedACategoryUseTheRadioButtonsToSel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ClassificationError")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ClassificationError"),null).equals(context.getFormattedValue("ClassificationError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("sld_enterprise_app.PleaseSelectClassificationAttribute.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% URLPipelineAction action29 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Dispatch",null)))),null));String site29 = null;String serverGroup29 = null;String actionValue29 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Dispatch",null)))),null);if (site29 == null){  site29 = action29.getDomain();  if (site29 == null)  {      site29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup29 == null){  serverGroup29 = action29.getServerGroup();  if (serverGroup29 == null)  {      serverGroup29 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("functionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue29, site29, serverGroup29,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(pad(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("eCl@ss",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(pad(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("UNSPSC",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail3" nowrap="nowrap" width="1%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(pad(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null),((Number)(new Double(6))).intValue()),null).equals(context.getFormattedValue("eCl@ss",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.EClSsCode.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% } else { %><% {out.write(localizeISText("sld_enterprise_app.UNSPSCCode.table_detail3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% } %></td>
<td class="table_detail3">
<input type="text" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Level1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="Level1Value" maxlength="2" size="2" class="inputfield_en"/>
</td>
<td class="table_detail3">-</td>
<td class="table_detail3">
<input type="text" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Level2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="Level2Value" maxlength="2" size="2" class="inputfield_en"/>
</td>
<td class="table_detail3">-</td>
<td class="table_detail3">
<input type="text" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Level3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="Level3Value" maxlength="2" size="2" class="inputfield_en"/>
</td>
<td class="table_detail3">-</td>
<td class="table_detail3">
<input type="text" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Level4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="Level4Value" maxlength="2" size="2" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td width="100%" align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CategoryDomainName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="ApplyClassificationCode" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% } %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></td>
</tr>
<tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="6" alt="" border="0"/></td>
<td width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("handlerpipeline","ViewProductClassificationSearch"),
new TagParameter("selectiontype","multiple"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("catalog",getObject("Catalog")),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("enabledetailslink","true"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("hide_empty_classifications",getObject("HideEmptyClassifications")),
new TagParameter("parameterName2","HideEmptyClassifications"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("parameterValue2",getObject("HideEmptyClassifications"))}, 86); %><% } else { %><% processOpenTag(response, pageContext, "catalogcategory", new TagParameter[] {
new TagParameter("parametervalue",getObject("Catalog:UUID")),
new TagParameter("selectedcategoryuuid",getObject("CategoryUUID")),
new TagParameter("selectiontype","single"),
new TagParameter("parametername1","ChannelID"),
new TagParameter("catalog",getObject("Catalog")),
new TagParameter("parametervalue1",getObject("ChannelID")),
new TagParameter("enabledetailslink","true"),
new TagParameter("hide_empty_classifications",getObject("HideEmptyClassifications")),
new TagParameter("parameterName2","HideEmptyClassifications"),
new TagParameter("handlerpipeline","ViewProductClassificationSearch"),
new TagParameter("parametername","CatalogUUID"),
new TagParameter("category",getObject("Catalog:Root")),
new TagParameter("parameterValue2",getObject("HideEmptyClassifications"))}, 100); %><% } %></td>
</tr>
<tr>
<td width="100%" class="n" align="right" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="IsSearchFired" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("IsSearchFired"),null)),null)%>"/>
<input type="submit" name="applySelectedCategory" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<table class="w e" width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><tr>
<td colspan="4" class="table_title s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCategory:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>
- <% {out.write(localizeISText("sld_enterprise_app.ClassificationAttributes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><tr>
<td class="table_header w e s" nowrap="nowrap" width="80">
<div id="A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('functionForm','SelectedClassificationAttributeUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
<div id="B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap">
<a href="javascript:selectAll('functionForm','SelectedClassificationAttributeUUID','A','B');" class="tableheader"><% {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
</table>
</div>
</td>
<td class="table_header e s" nowrap="nowrap" width="45%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("Name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("SelectedCategory:UUID"),null))),null)%>" ><% {out.write(localizeISText("sld_enterprise_app.ClassificationAttributeName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("Name",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("SelectedCategory:UUID"),null))),null)%>" ><% {out.write(localizeISText("sld_enterprise_app.ClassificationAttributeName.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> 
<% } %></td>
<td class="table_header e s" nowrap="nowrap" width="30%"><% {out.write(localizeISText("sld_enterprise_app.AttributeGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="20%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("DataType",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DataType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("SelectedCategory:UUID"),null))),null)%>" ><% {out.write(localizeISText("sld_enterprise_app.DataType.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><a class="tableheader" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("DataType",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null)).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)).addURLParameter(context.getFormattedValue("CategoryUUID",null),context.getFormattedValue(getObject("SelectedCategory:UUID"),null))),null)%>" ><% {out.write(localizeISText("sld_enterprise_app.DataType.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a> 
<% } %></td>
</tr><% while (loop("ClassificationAttributes","ClassificationAttribute",null)) { %><tr> 
<td class="w e s center top"><% {Object temp_obj = ("false"); getPipelineDictionary().put("IsTaken", temp_obj);} %><% while (loop("TakenClassificationAttributeUUIDs","TakenClassificationAttributeUUID",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TakenClassificationAttributeUUID"),null).equals(context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("IsTaken", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",191);}else{getLoopStack().pop();break;} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsTaken"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedClassificationAttributeUUID" value="<%=context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null)%>" disabled="disabled" checked="checked" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",195,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ClassificationAttributeUUID" value="<%=context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null)%>" /><% } else { %><input type="checkbox" name="SelectedClassificationAttributeUUID" value="<%=context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>checked="checked"<% } %>/><input type="hidden" name="ClassificationAttributeUUID" value="<%=context.getFormattedValue(getObject("ClassificationAttribute:UUID"),null)%>"/><% } %></td>
<td class="table_detail top e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ClassificationAttribute:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td> 
<td class="table_detail top e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationAttribute:Group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td> 
<td class="table_detail top e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",213,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",215,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.MultipleIntegers.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",219,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.MultipleDoubles.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.MultipleStrings.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}}}}} %></td> 
</tr><% } %><% } else { %><tr>
<td colspan="4" class="w e">
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="s">
<tbody>
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThereAreNoClassificationAttributesAvailableForThis.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table>
</td>
</tr><% } %><% } %></table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("HideEmptyClassifications")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("HideEmptyClassifications"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %><input type="hidden" name="HideEmptyClassifications" value="<% {String value = null;try{value=context.getFormattedValue(getObject("HideEmptyClassifications"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {249}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="button"/>
<input type="submit" name="ShowEmptyClassificationsButton" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.ShowEmptyClassifications.button",null)),null)%>" class="button"/><% } else { %><input type="submit" name="HideEmptyClassificationsButton" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.HideEmptyClassifications.button",null)),null)%>" class="button"/><% } %></td>
</tr>
</table>
</td>
<td align="right" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="CatalogUUID" type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {262}",e);}if (value==null) value="";out.write(value);} %>"/>
<input type="hidden" name="IsSearchFired" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("IsSearchFired"),null)),null)%>"/>
<input type="submit" name="SelectClassifications" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null)%>" class="button"/>
</td>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ChannelID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ChannelID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %><input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";out.write(value);} %>" /><% } %><input type="submit" name="CancelSelection" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table> 
<% out.print("</form>"); %><% printFooter(out); %>