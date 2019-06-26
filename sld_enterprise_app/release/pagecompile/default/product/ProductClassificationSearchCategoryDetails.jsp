<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-SelectCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.SelectClassificationAttributes.text",null)))}, 4); %><table cellspacing="0" cellpadding="0" border="0" width="100%">
<tbody>
<tr>
<td width="100%" colspan="5" class="table_title w e s n"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCategory:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
</tr>
<tr>
<td width="100%" class="w e s"><img height="2" border="0" width="1" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"/></td>
</tr>
</tbody>
</table>
<table class="w e" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td nowrap="nowrap" width="100%" colspan="4">
<table cellspacing="0" cellpadding="4" border="0" width="100%" class="infobox">
<tbody>
<tr>
<td class="infobox_title s"><% {out.write(localizeISText("sld_enterprise_app.General.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td class="table_detail top e s"><% {out.write(localizeISText("sld_enterprise_app.Name.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail top s" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail top e s"><% {out.write(localizeISText("sld_enterprise_app.ID.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail top s" colspan="2"><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail top e s"><% {out.write(localizeISText("sld_enterprise_app.Keywords.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail top s" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConKeywords"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ConKeywords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.ThereAreNoKeywordsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %></td>
</tr>
<tr>
<td class="table_detail top e s"><% {out.write(localizeISText("sld_enterprise_app.Status.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail top s" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedCategory:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="table_detail top e s"><% {out.write(localizeISText("sld_enterprise_app.ParentCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail top s" colspan="2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedCategory:Parent:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Parent:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - (<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Parent:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } else { %> 
<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:Parent:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% } %></td>
</tr>
<tr>
<td nowrap="nowrap" width="100%" colspan="4">
<table cellspacing="0" cellpadding="4" border="0" width="100%" class="infobox">
<tbody>
<tr>
<td class="infobox_title s"><% {out.write(localizeISText("sld_enterprise_app.ClassificationAttributes.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ClassificationAttributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><tr>
<td class="table_header e s" nowrap="nowrap" width="50%"><% {out.write(localizeISText("sld_enterprise_app.ClassificationAttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap" width="30%"><% {out.write(localizeISText("sld_enterprise_app.AttributeGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" nowrap="nowrap" width="20%"><% {out.write(localizeISText("sld_enterprise_app.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ClassificationAttributes","ClassificationAttribute",null)) { %><tr> 
<td class="table_detail top e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ClassificationAttribute:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationAttribute:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td> 
<td class="table_detail top e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ClassificationAttribute:Group"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td> 
<td class="table_detail top s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ClassificationAttribute:ValueType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }}} %></td> 
</tr><% } %><% } else { %><tr>
<td colspan="4">
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="s">
<tbody>
<tr>
<td class="table_detail"><% {out.write(localizeISText("sld_enterprise_app.ThisCategoryDoesNotDefineAnyClassificationAttribut.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table>
</td>
</tr><% } %></table>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% URLPipelineAction action75 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Dispatch",null)))),null));String site75 = null;String serverGroup75 = null;String actionValue75 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Dispatch",null)))),null);if (site75 == null){  site75 = action75.getDomain();  if (site75 == null)  {      site75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup75 == null){  serverGroup75 = action75.getServerGroup();  if (serverGroup75 == null)  {      serverGroup75 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductClassificationSearch-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue75, site75, serverGroup75,true)); %><input type="hidden" name="CatalogUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="CategoryUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="HideEmptyClassifications" value="<% {String value = null;try{value=context.getFormattedValue(getObject("HideEmptyClassifications"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> 
<input type="submit" name="CancelCategoryDetail" value="&lt;&lt; <%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Back.button",null)),null)%>" class="button"/><% out.print("</form>"); %></td>
</tr>
</table><% printFooter(out); %>