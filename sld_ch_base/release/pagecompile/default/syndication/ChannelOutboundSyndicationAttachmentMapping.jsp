<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttachmentMapping.MappingRulesAttachments.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("SyndicationUUID"),null))))),
new TagParameter("id",getObject("Syndication:UUID")),
new TagParameter("text",getObject("Syndication:DisplayName"))}, 4); %><!-- EO Page Navigator -->
<!-- Tabs --><% {Object temp_obj = ("Attachments"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/ChannelOutboundSyndicationMappingTabs", null, "9");} %><!-- EO Tabs -->
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText("ChannelOutboundSyndicationAttachmentMapping.MappingRulesAttachments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("ChannelOutboundSyndicationAttachmentMapping.ActivateTheCheckboxToIncludeAttachments.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% while (loop("SyndicationRuleSet:SyndicationRules","Rule",null)) { %><% {Object temp_obj = (getObject("Rule")); getPipelineDictionary().put("SyndicationRule", temp_obj);} %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",31);}else{getLoopStack().pop();break;} %><% } %><% URLPipelineAction action111 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Start",null)))),null));String site111 = null;String serverGroup111 = null;String actionValue111 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Start",null)))),null);if (site111 == null){  site111 = action111.getDomain();  if (site111 == null)  {      site111 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup111 == null){  serverGroup111 = action111.getServerGroup();  if (serverGroup111 == null)  {      serverGroup111 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("SetLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue111, site111, serverGroup111,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ChannelOutboundSyndicationAttachmentMapping.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="select"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("LocaleId"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SyndicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="Start" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttachmentMapping.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action112 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Dispatch",null)))),null));String site112 = null;String serverGroup112 = null;String actionValue112 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Dispatch",null)))),null);if (site112 == null){  site112 = action112.getDomain();  if (site112 == null)  {      site112 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup112 == null){  serverGroup112 = action112.getServerGroup();  if (serverGroup112 == null)  {      serverGroup112 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttachmentMapping-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue112, site112, serverGroup112,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" colspan="2">
<input type="checkbox" name="AttachmentMappingEnabled"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyndicationRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% while (loop("SyndicationRule:SourceSyndicationDataDeclaration:LocaleID","SourceLocaleID",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SourceLocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>checked="checked"<% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>
disabled="disabled"
<% } %>
/>&nbsp;&nbsp;<% {out.write(localizeISText("ChannelOutboundSyndicationAttachmentMapping.PreserveProductAttachments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w s" nowrap="nowrap" width="25"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
<td class="table_detail e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail"><input type="radio" name="CopyFlag" value="false" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SyndicationRule")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SyndicationRule:SourceSyndicationDataDeclaration:AttributeValue(\"CopyFlag\",Locale):StringValue"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>&nbsp;<% {out.write(localizeISText("ChannelOutboundSyndicationAttachmentMapping.LinkToOriginalAttachments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail"><input type="radio" name="CopyFlag" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SyndicationRule")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SyndicationRule:SourceSyndicationDataDeclaration:AttributeValue(\"CopyFlag\",Locale):StringValue"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>&nbsp;<% {out.write(localizeISText("ChannelOutboundSyndicationAttachmentMapping.LinkToOriginalAttachmentsAndCopyAttachments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" colspan="2" align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyndicationRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %><input type="hidden" name="SyndicationRuleUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SyndicationRule:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><% } %><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><input type="hidden" name="SyndicationUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/><input type="submit" name="Update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttachmentMapping.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %><div> 
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "109");} %></div> 
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>