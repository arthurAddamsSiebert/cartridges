<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Main Content -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ParentCategoryID",null),context.getFormattedValue(getObject("ParentCategoryID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null)).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CatalogID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id","nccc"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.CreateNewCatalogCategoryGeneral.text",null)))}, 4); %><!-- EO Page Navigator -->
<!-- tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.SubCategories.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.ClassificationAttributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Links.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewChannelCatalogCategory_52.Content.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.SubCategories.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:CM_PERMISSION_ASSIGN"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewChannelCatalogCategory_52.CMCContent.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("NewChannelCatalogCategory_52.Labels.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Links.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %> 
<td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table>
<!-- EO tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.CreateNewCatalogCategoryGeneral.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedParentCategory")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ParentBrowsingCancelled")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCategory:Id:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCategory:ParentId:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCategory:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCategory:Id:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr> 
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewChannelCatalogCategory_52.CategoryCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegFormAddCategory:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegFormAddCategory:Id:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewChannelCatalogCategory_52.PleaseProvideACategoryID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegFormAddCategory:Id:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewChannelCatalogCategory_52.TheCategoryIDContainsInvalidCharactersValidCharact.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegFormAddCategory:ParentId:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewChannelCatalogCategory_52.PleaseProvideAParentCategoryID.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewChannelCatalogCategory_52.CatalogCategoryCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewChannelCatalogCategory_52.TheCategoryIDIsNotUnique.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %> 
<br/><% {out.write(localizeISText("NewChannelCatalogCategory_52.NoParentCatalogCategoryCouldBeFoundForTheGivenPare.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %> 
</td>
</tr>
</table> 
</td>
</tr><% } %><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table> 
<% URLPipelineAction action253 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-New",null)))),null));String site253 = null;String serverGroup253 = null;String actionValue253 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-New",null)))),null);if (site253 == null){  site253 = action253.getDomain();  if (site253 == null)  {      site253 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup253 == null){  serverGroup253 = action253.getServerGroup();  if (serverGroup253 == null)  {      serverGroup253 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue253, site253, serverGroup253,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale w e s">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;</td>
<td>
<select name="LocaleId" class="inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select><input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 
</td>
<td width="100%" align="left">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="apply" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
<input type="hidden" name="ParentCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td> 
</tr>
</table> 
</td>
</tr> 
</table><% out.print("</form>"); %><% URLPipelineAction action254 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-Dispatch",null)))),null));String site254 = null;String serverGroup254 = null;String actionValue254 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-Dispatch",null)))),null);if (site254 == null){  site254 = action254.getDomain();  if (site254 == null)  {      site254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup254 == null){  serverGroup254 = action254.getServerGroup();  if (serverGroup254 == null)  {      serverGroup254 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue254, site254, serverGroup254,true)); %><table cellspacing="0" cellpadding="0" border="0" class="w e s" width="100%">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("RegFormAddCategory:DisplayName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %> 
<td nowrap="nowrap" class="label"><label class="label label_error" for="RegFormAddCatalogCategory_DisplayName"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegFormAddCatalogCategory_DisplayName"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail">
<input type="text" name="RegFormAddCategory_DisplayName" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCategory:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("RegFormAddCategory:isSubmitted"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RegFormAddCategory:IsOnline:Value"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><input type="checkbox" name="RegFormAddCategory_IsOnline" value="True" checked="checked"/><% } else { %><input type="checkbox" name="RegFormAddCategory_IsOnline" value="True"/><% } %></td>
<td class="label_checkbox_text"><label class="label label_checkbox_text" for="RegFormAddCatalogCategory_Online"><% {out.write(localizeISText("sld_ch_consumer_plugin.Online.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCategory:Id:isMissing")).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("RegFormAddCategory:Id:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegFormAddCatalogCategory_CategoryID"><% {out.write(localizeISText("sld_ch_consumer_plugin.CategoryID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegFormAddCatalogCategory_CategoryID"><% {out.write(localizeISText("sld_ch_consumer_plugin.CategoryID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail">
<input type="text" name="RegFormAddCategory_Id" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCategory:Id:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
</table>
</td> 
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Keywords.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td class="table_detail" colspan="3" width="100%">
<textarea rows="5" cols="69" class="inputfield_en" name="RegFormAddCategory_Description"><% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCategory:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCategory:ParentId:isMissing")).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.ParentCategoryID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.ParentCategoryID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedParentCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %><input type="text" name="RegFormAddCategory_ParentId" maxlength="256" size="60" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SelectedParentCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {174}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RegFormAddCategory:ParentId:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><input type="text" name="RegFormAddCategory_ParentId" maxlength="256" size="60" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCategory:ParentId:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {177}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/><% } else { %><input type="text" name="RegFormAddCategory_ParentId" maxlength="256" size="60" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/><% } %><% } %></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {187}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="selectParent" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Select.button",null)),null)%>" class="button"/>
</td> 
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td align="right" class="n" colspan="2">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="CatalogID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {205}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {206}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
<input type="hidden" name="ParentCategoryID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentCategory:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {208}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="webform-id" type="hidden" value="RegFormAddCategory"/>
</td>
<td class="button">
<input type="submit" name="back" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr> 
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>