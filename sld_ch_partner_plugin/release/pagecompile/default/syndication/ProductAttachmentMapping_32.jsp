<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttachmentMapping_32.MasterRepositoryMappingRulesAttachments.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttachmentMapping_32.ChannelRepositoryMappingRulesAttachments.text",null)))}, 8); %><% } %><!-- EO Page Navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td>
<!-- Tabs --><% {Object temp_obj = ("Attachments"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductMappingTabs_32", null, "17");} %><!-- EO Tabs -->
<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductAttachmentMapping_32.MasterRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductAttachmentMapping_32.ChannelRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %> - <% {out.write(localizeISText("ProductAttachmentMapping_32.MappingRulesAttachments.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("ProductAttachmentMapping_32.ActivateTheCheckbox.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/checkbox.gif" alt="" border="0"/>) <% {out.write(localizeISText("ProductAttachmentMapping_32.ActivateTheCheckbox.ToPreserveProductAttachmentsWhenSyndication",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ProductAttachmentMapping_32.TheCheckbox",null,null,null,null,null,null,null,null,null,null,null,null));} %> (<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/checkbox.gif" alt="" border="0"/>) <% {out.write(localizeISText("ProductAttachmentMapping_32.TheCheckbox.IsActivatedIfProductAttachmentsArePreserved",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table><% URLPipelineAction action245 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Start",null)))),null));String site245 = null;String serverGroup245 = null;String actionValue245 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Start",null)))),null);if (site245 == null){  site245 = action245.getDomain();  if (site245 == null)  {      site245 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup245 == null){  serverGroup245 = action245.getServerGroup();  if (serverGroup245 == null)  {      serverGroup245 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Start",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue245, site245, serverGroup245,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductAttachmentMapping_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="select"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttachmentMapping_32.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action246 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Dispatch",null)))),null));String site246 = null;String serverGroup246 = null;String actionValue246 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Dispatch",null)))),null);if (site246 == null){  site246 = action246.getDomain();  if (site246 == null)  {      site246 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup246 == null){  serverGroup246 = action246.getServerGroup();  if (serverGroup246 == null)  {      serverGroup246 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachmentMapping_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue246, site246, serverGroup246,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail w e s" colspan="2">
<input type="checkbox" name="mappingEnabled" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %><% while (loop("ProductDataMappingRules",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductDataMappingRules:TargetDeclaration:localeID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",74);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>&nbsp;&nbsp;<% {out.write(localizeISText("ProductAttachmentMapping_32.PreserveProductAttachments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail w s" nowrap="nowrap" width="25"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><% while (loop("ProductDataMappingRules",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductDataMappingRules:TargetDeclaration:localeID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><input type="hidden" name="ProductDataMappingRuleID" value="<%=context.getFormattedValue(getObject("ProductDataMappingRules:UUID"),null)%>"/><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",85);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
<td class="table_detail e s">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_detail">
<input type="radio" name="replicationType" value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><% while (loop("ProductDataMappingRules",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("ProductDataMappingRules:TargetDeclaration:localeID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("ProductDataMappingRules:TargetDeclaration:replicationType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",93);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>&nbsp;<% {out.write(localizeISText("ProductAttachmentMapping_32.LinkToOriginalAttachments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail">
<input type="radio" name="replicationType" value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><% while (loop("ProductDataMappingRules",null,null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("ProductDataMappingRules:TargetDeclaration:localeID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("ProductDataMappingRules:TargetDeclaration:replicationType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",100);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %>disabled="disabled"<% } %>
/>&nbsp;<% {out.write(localizeISText("ProductAttachmentMapping_32.CopyAttachments.input",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %><tr>
<td colspan="2" align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="ProviderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="TypeCode" value="5"/>
<input type="hidden" name="FunctionClassName" value="com.intershop.component.mvc.capi.mapping.ProductAttachmentMappingRule"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttachmentMapping_32.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr><% } %></table><% out.print("</form>"); %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "132");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>