<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomCatalogType",null),context.getFormattedValue(getObject("CustomCatalogType"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewCatalog.NewClassificationCatalog.text",null))),
new TagParameter("id","newCatalog")}, 6); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CustomCatalogType",null),context.getFormattedValue(getObject("CustomCatalogType"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("NewCatalog.NewStandardProductCatalog.text",null))),
new TagParameter("id","newCatalog")}, 8); %><% } %><!-- EO Page Navigator -->
<!-- Tabs --><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {Object temp_obj = ("Catalog"); getPipelineDictionary().put("NewItem", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryTabs", null, "15");} %><!-- EO Tabs -->
<!-- Titel and Description -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewCatalog.NewClassificationCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewCatalog.NewStandardProductCatalog.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:DisplayName:isInvalid")).booleanValue() || ((Boolean) (((((Boolean) getObject("RegFormAddCatalog:Id:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:Id:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("NewCatalog.TheCatalogCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog.PleaseProvideAValidNameForTheCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:Id:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:Id:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog.PleaseProvideAValidIdForTheCatalogOnlyAlphanumeric.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog.PleaseProvideAUniqueIdForTheCatalog.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("NewCatalog.UnableToDetermineClassificationSystem.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewCatalog.HereYouCanDefineTheGeneralAttributesOfAClassificat.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("NewCatalog.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
<!-- EO Titel and Description -->
<!-- Main Content --><% URLPipelineAction action533 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-New",null)))),null));String site533 = null;String serverGroup533 = null;String actionValue533 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-New",null)))),null);if (site533 == null){  site533 = action533.getDomain();  if (site533 == null)  {      site533 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup533 == null){  serverGroup533 = action533.getServerGroup();  if (serverGroup533 == null)  {      serverGroup533 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue533, site533, serverGroup533,true)); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="LocaleId"><% {out.write(localizeISText("NewCatalog.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="infobox_item">
<select name="LocaleId" id="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select><input type="hidden" name="CustomCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewCatalog.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action534 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));String site534 = null;String serverGroup534 = null;String actionValue534 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null);if (site534 == null){  site534 = action534.getDomain();  if (site534 == null)  {      site534 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup534 == null){  serverGroup534 = action534.getServerGroup();  if (serverGroup534 == null)  {      serverGroup534 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue534, site534, serverGroup534,true)); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="w e s">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegFormAddCatalog_DisplayName"><% {out.write(localizeISText("NewCatalog.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="RegFormAddCatalog_DisplayName"><% {out.write(localizeISText("NewCatalog.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td>
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="table_detail">
<input type="text" name="RegFormAddCatalog_DisplayName" id="RegFormAddCatalog_DisplayName" maxlength="256" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCatalog_DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %><% } else { %><td class="input_checkbox"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("RegFormAddCatalog:isSubmitted"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("RegFormAddCatalog:ShowInMenu:Value"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><input type="checkbox" name="RegFormAddCatalog_ShowInMenu" id="RegFormAddCatalog_ShowInMenu" value="True" checked="checked"/><% } else { %><input type="checkbox" name="RegFormAddCatalog_ShowInMenu" id="RegFormAddCatalog_ShowInMenu" value="True"/><% } %></td>
<td class="label_checkbox_text"><label class="label label_checkbox_text" for="RegFormAddCatalog_ShowInMenu"><% {out.write(localizeISText("NewCatalog.ShowInMenu.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } %></tr>
</table>
</td> 
</tr> 
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("RegFormAddCatalog:Id:isMissing")).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) getObject("RegFormAddCatalog:Id:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegFormAddCatalog_Id"><% {out.write(localizeISText("NewCatalog.CatalogID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_error" for="RegFormAddCatalog_Id"><% {out.write(localizeISText("NewCatalog.CatalogID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><% } else { %><td nowrap="nowrap" class="label"><label class="label " for="RegFormAddCatalog_Id"><% {out.write(localizeISText("NewCatalog.CatalogID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="fielditem2" width="100%"><input type="text" name="RegFormAddCatalog_Id" id="RegFormAddCatalog_Id" maxlength="256" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCatalog_Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td> 
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="RegFormAddCatalog_Description"><% {out.write(localizeISText("NewCatalog.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="fielditem2"><textarea rows="5" cols="69" class="inputfield_en" name="RegFormAddCatalog_Description" id="RegFormAddCatalog_Description"><% {String value = null;try{value=context.getFormattedValue(getObject("RegFormAddCatalog_Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea></td> 
</tr> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="ClassificationType"><% {out.write(localizeISText("NewCatalog.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="fielditem2">
<select name="ClassificationType" id="ClassificationType" class="select inputfield_en"><% while (loop("ClassificationSystems","cs",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("cs:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("cs:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("cs:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select>
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
<input type="hidden" name="CustomCatalogType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomCatalogType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="webform-id" type="hidden" value="RegFormAddCatalog"/>
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewCatalog.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button"><input type="submit" name="backToList" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewCatalog.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>