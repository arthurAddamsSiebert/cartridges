<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Start",null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationManagement_52.Localization.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("LocalizationManagement_52.LocalizationManagement.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("LocalizationManagement_52.LocalizationManagement.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td align="left" class="table_title_description w e s"><% {out.write(localizeISText("LocalizationManagement_52.TheListShowsAllLocalizationValues.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action271 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null));String site271 = null;String serverGroup271 = null;String actionValue271 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null);if (site271 == null){  site271 = action271.getDomain();  if (site271 == null)  {      site271 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup271 == null){  serverGroup271 = action271.getServerGroup();  if (serverGroup271 == null)  {      serverGroup271 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("search");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue271, site271, serverGroup271,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageNumber")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageNumber"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><input type="hidden" name="PageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("PageNumber"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><table border="0" cellpadding="5" cellspacing="0" class="infobox_locale w e s w100">
<tr>
<td nowrap="nowrap" class="infobox_item"><% {out.write(localizeISText("LocalizationManagement_52.SelectLocale.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</option><% } %></select></td>
<td nowrap="nowrap" class="infobox_item"><% {out.write(localizeISText("LocalizationManagement_52.Application.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><select name="AppId" class="select inputfield_en"><% while (loop("Applications","Application",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Application:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Application:UUID"),null).equals(context.getFormattedValue(getObject("ContextApplication:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Application:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select></td>
<td width="90%" align="left">
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr><td class="button"><input type="button" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationManagement_52.Apply.button",null)),null)%>" name="Apply" onclick="this.form.submit()" /></td></tr>
</tbody>
</table>
</td>
</tr>
</table>
<table border="0" cellpadding="5" cellspacing="0" class="infobox w e w100">
<tr>
<td nowrap="nowrap" class="infobox_item"><% {out.write(localizeISText("LocalizationManagement_52.Key.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type="text" class="inputfield_en" size="35" name="SearchedKey" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchedKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td nowrap="nowrap" class="infobox_item">&nbsp;&nbsp;<% {out.write(localizeISText("LocalizationManagement_52.Value.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><input type="text" class="inputfield_en" size="35" name="SearchedValue" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
<td nowrap="nowrap" class="infobox_item">&nbsp;&nbsp;<% {out.write(localizeISText("LocalizationManagement_52.Type.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td><select name="SearchType" class="select inputfield_en">
<option value="ALL"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("ALL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("LocalizationManagement_52.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="EMPTY"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("EMPTY",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>selected<% } %>><% {out.write(localizeISText("LocalizationManagement_52.Empty.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select></td>
<td align="left" class="w100">
<table cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationManagement_52.Find.button",null)),null)%>" name="Find" /></td></tr>
</tbody>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- Search button should not send all update fields! --><% URLPipelineAction action272 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null));String site272 = null;String serverGroup272 = null;String actionValue272 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null);if (site272 == null){  site272 = action272.getDomain();  if (site272 == null)  {      site272 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup272 == null){  serverGroup272 = action272.getServerGroup();  if (serverGroup272 == null)  {      serverGroup272 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("update");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue272, site272, serverGroup272,true)); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocalizationTexts") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e n">
<tbody>
<tr>
<td nowrap="nowrap" class="table_header e s"><% {out.write(localizeISText("LocalizationManagement_52.LocalizationKey.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap" class="table_header e s"><% {out.write(localizeISText("LocalizationManagement_52.DefaultValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("DefaultChannelLocale:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %>/<span style="font-style: italic"> <% {out.write(localizeISText("LocalizationManagement_52.ValueOfDefaultLocale.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></span><% } %></td>
<td nowrap="nowrap" class="table_header e s"><% {out.write(localizeISText("LocalizationManagement_52.LocalizationValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td nowrap="nowrap" class="table_header s"><% {out.write(localizeISText("LocalizationManagement_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("LocalizationTexts","LocalizationText",null)) { %><tr>
<td nowrap="nowrap" class="table_detail2 e s left"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> 
<input type="hidden" name="keyName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td width="300" class="table_detail2 e s left">
<div style="width: 100%; overflow: auto;"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LocalizationText:CartridgeValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %>
{<% {out.write(localizeISText("LocalizationManagement_52.NotTranslated","",null,null,null,null,null,null,null,null,null,null,null));} %>} 
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:CartridgeValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("LocalizationText:DefaultLocale:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><br /><br />
<span style="font-style: italic"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:DefaultLocale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <br /><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:DefaultValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span><% } %></div>
</td>
<td width="300" class="table_detail2 e s left">
<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_domainCurrentValue" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:DomainValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LOCALIZATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><textarea rows="3" style="width:296px;" name="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_domainValue" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:DomainValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea><% } else { %><textarea rows="3" style="width:296px;" disabled="disabled" name="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_domainValue" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:DomainValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea> 
<% } %></td>
<td class="table_detail2 s"><% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationText:DescriptionValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";out.write(value);} %>&nbsp;</td>
</tr><% } %></tbody>
</table><% } else { %><table width="100%" cellspacing="0" cellpadding="0" border="0">
<tbody>
<tr>
<td class="table_detail aldi"><% {out.write(localizeISText("LocalizationManagement_52.NoLocalizationKeysOrValuesWereFoundForYo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</tbody>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LOCALIZATION")))).booleanValue() && ((Boolean) (hasLoopElements("LocalizationTexts") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tbody>
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="AppId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextApplication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="SearchedKey" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchedKey"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="SearchedValue" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="SearchType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LocalizationTexts:Page"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/> 
<input type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationManagement_52.Apply.button",null)),null)%>" name="Save" class="button" />
</td>
<td class="button"><input type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("LocalizationManagement_52.Reset.button",null)),null)%>" class="button" /></td>
</tr>
</tbody>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><!-- Search button should not send all update fields! --><% URLPipelineAction action273 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null));String site273 = null;String serverGroup273 = null;String actionValue273 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null);if (site273 == null){  site273 = action273.getDomain();  if (site273 == null)  {      site273 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup273 == null){  serverGroup273 = action273.getServerGroup();  if (serverGroup273 == null)  {      serverGroup273 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizations_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("paging");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue273, site273, serverGroup273,true)); %><table class="pagecursor" width="100%">
<tr>
<!-- Start Page Cursor --><% processOpenTag(response, pageContext, "pagenavigationbar", new TagParameter[] {
new TagParameter("parametervalue5",getObject("SearchType")),
new TagParameter("parametervalue4",getObject("SearchedValue")),
new TagParameter("parametervalue3",getObject("SearchedKey")),
new TagParameter("parametername1","LocaleId"),
new TagParameter("parametervalue2",getObject("ContextApplication:UUID")),
new TagParameter("parametervalue1",getObject("Locale:LocaleID")),
new TagParameter("parametername2","AppId"),
new TagParameter("parametername3","SearchedKey"),
new TagParameter("pageable","LocalizationTexts"),
new TagParameter("pipeline","ViewLocalizations_52-Paging"),
new TagParameter("formName","paging"),
new TagParameter("parametername4","SearchedValue"),
new TagParameter("parametername5","SearchType")}, 156); %><!-- EO Page Cursor -->
</tr>
</table><% out.print("</form>"); %><script type="text/javascript" language="JavaScript">
$('select[name="SearchType"]').on('change', function (event) {
$field = $('input[name="SearchedValue"]');
if ($(this).val() === 'EMPTY') {
$field.val('').prop('disabled', true);
}
else {
$field.prop('disabled', false);
}
});
</script><% printFooter(out); %>