<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link","URL(Action('ViewChannelCatalog_32-New'),Parameter('CustomCatalogType',CustomCatalogType),Parameter('ChannelID',ChannelID))"),
new TagParameter("id","nccc"),
new TagParameter("text",localizeText(context.getFormattedValue("NewCatalog_32.NewClassificationCatalog.text",null)))}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link","URL(Action('ViewChannelCatalog_32-New'),Parameter('ChannelID',ChannelID))"),
new TagParameter("id","nccc"),
new TagParameter("text",localizeText(context.getFormattedValue("NewCatalog_32.NewStandardProductCatalog.text",null)))}, 8); %><% } %><!-- EO Page Navigator -->
<!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.OnlineOffline.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.Partner.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.SubCategories.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.ClassificationAttributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.SubCategories.table_tabs_dis_background1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:CM_PERMISSION_ASSIGN"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.CMCContent.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.Labels.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.Links.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<!-- EO Tabs -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr><td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewCatalog_32.NewClassificationCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } else { %><tr><td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewCatalog_32.NewStandardProductCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr><% } %><!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:DisplayName:isInvalid")).booleanValue() || ((Boolean) (((((Boolean) getObject("RegFormAddCatalog:Id:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:Id:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("NewCatalog_32.TheCatalogCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog_32.PleaseProvideAValidNameForTheCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:Id:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:Id:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog_32.PleaseProvideAValidIdForTheCatalogOnlyAlphanumeric.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog_32.PleaseProvideAUniqueIdForTheCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog_32.UnableToDetermineClassificationSystem.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% {out.write(localizeISText("NewCatalog_32.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action196 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-New",null)))),null));String site196 = null;String serverGroup196 = null;String actionValue196 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-New",null)))),null);if (site196 == null){  site196 = action196.getDomain();  if (site196 == null)  {      site196 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup196 == null){  serverGroup196 = action196.getServerGroup();  if (serverGroup196 == null)  {      serverGroup196 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue196, site196, serverGroup196,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("NewCatalog_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select><input type="hidden" name="CustomCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/><input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewCatalog_32.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action197 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-Dispatch",null)))),null));String site197 = null;String serverGroup197 = null;String actionValue197 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-Dispatch",null)))),null);if (site197 == null){  site197 = action197.getDomain();  if (site197 == null)  {      site197 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup197 == null){  serverGroup197 = action197.getServerGroup();  if (serverGroup197 == null)  {      serverGroup197 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue197, site197, serverGroup197,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="w e s">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CustomCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="Catalog_DisplayName"><% {out.write(localizeISText("NewCatalog_32.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label" for="Catalog_DisplayName"><% {out.write(localizeISText("NewCatalog_32.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail">
<input type="text" name="RegFormAddCatalog_DisplayName" maxlength="256" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCatalog_DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% } else { %><td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("RegFormAddCatalog:isSubmitted"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RegFormAddCatalog:ShowInMenu:Value"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><input type="checkbox" name="RegFormAddCatalog_ShowInMenu" value="True" checked="checked"/><% } else { %><input type="checkbox" name="RegFormAddCatalog_ShowInMenu" value="True"/><% } %></td> 
<td class="label_checkbox_text"><label class="label label_checkbox_text" for="RegFormAddCatalog_ShowInMenu"><% {out.write(localizeISText("NewCatalog_32.ShowInMenu.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } %></tr>
</table>
</td> 
</tr> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:Id:isMissing")).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:Id:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="Catalog_CatalogID"><% {out.write(localizeISText("NewCatalog_32.CatalogID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_error" for="Catalog_CatalogID"><% {out.write(localizeISText("NewCatalog_32.CatalogID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="Catalog_CatalogID"><% {out.write(localizeISText("NewCatalog_32.CatalogID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="fielditem2" width="100%"><input type="text" name="RegFormAddCatalog_Id" maxlength="256" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCatalog_Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="Catalog_Description"><% {out.write(localizeISText("NewCatalog_32.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="fielditem2"><textarea rows="5" cols="70" class="inputfield_en" name="RegFormAddCatalog_Description"><% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCatalog_Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="Catalog_ClassificationType"><% {out.write(localizeISText("NewCatalog_32.Type.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td> 
<td class="fielditem2">
<select name="ClassificationType" class="inputfield_en"><% while (loop("ClassificationSystems","cs",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("cs:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("cs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("cs:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
</td>
</tr> 
<% } %></table>
</td>
</tr>
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input name="webform-id" type="hidden" value="RegFormAddCatalog"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {180}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewCatalog_32.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewCatalog_32.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>