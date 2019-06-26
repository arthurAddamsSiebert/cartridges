<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-New",null))))),
new TagParameter("id","newCatalogFilter"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelNewCatalogFilter.NewCatalogView.text",null)))}, 4); %><!-- EO Page Navigator -->
<!-- Tabs --><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("filter/inc/ChannelCatalogFilterTabs_",null) + context.getFormattedValue(getObject("CurrentChannel:TypeCode"),null),null), null, "8");} %><!-- EO Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("ChannelNewCatalogFilter.NewCatalogView.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CatalogFilterForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top"> 
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("ChannelNewCatalogFilter.CatalogViewCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CatalogFilterForm:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("CatalogFilterForm:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("ChannelNewCatalogFilter.PleaseProvideAValidNameForTheCatalogView.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("ChannelNewCatalogFilter.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action39 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-New",null)))),null));String site39 = null;String serverGroup39 = null;String actionValue39 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-New",null)))),null);if (site39 == null){  site39 = action39.getDomain();  if (site39 == null)  {      site39 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup39 == null){  serverGroup39 = action39.getServerGroup();  if (serverGroup39 == null)  {      serverGroup39 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue39, site39, serverGroup39,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "43");} %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox_locale aldi">
<tr>
<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item">
<select name="LocaleId" class="select inputfield_en"><% while (loop("Locales","Locales",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</option><% } %></select>
</td>
<td width="100%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="setLocale" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% URLPipelineAction action40 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-Dispatch",null)))),null));String site40 = null;String serverGroup40 = null;String actionValue40 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-Dispatch",null)))),null);if (site40 == null){  site40 = action40.getDomain();  if (site40 == null)  {      site40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup40 == null){  serverGroup40 = action40.getServerGroup();  if (serverGroup40 == null)  {      serverGroup40 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogFilter-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("CatalogFilterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue40, site40, serverGroup40,true)); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PipelineComponentVariables", null, "70");} %><input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input name="webform_id" type="hidden" value="CatalogFilterForm"/>
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td width="100%" class="w e s">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CatalogFilterForm:DisplayName:isMissing")).booleanValue() || ((Boolean) getObject("CatalogFilterForm:DisplayName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("ChannelNewCatalogFilter.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelNewCatalogFilter.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail">
<input type="text" name="CatalogFilterForm_DisplayName" class="inputfield_en" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilterForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<!--[if IE]><input type="text" style="display: none;" disabled="disabled"/><![endif]-->
</td>
<td class="fielditem2"><% {out.write(localizeISText("ChannelNewCatalogFilter.Status.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="fielditem2">
<input type="checkbox" class="checkboxtop" name="CatalogFilterForm_OnlineFlag" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (getObject("CatalogFilterForm:isSubmitted"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CatalogFilterForm:OnlineFlag:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
</td>
<td class="fielditem2" width="50%"><% {out.write(localizeISText("ChannelNewCatalogFilter.Online.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="fielditem2"><% {out.write(localizeISText("ChannelNewCatalogFilter.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"> 
<textarea name="CatalogFilterForm_Description" rows="5" cols="70" class="inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("CatalogFilterForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
<td class="table_detail" colspan="3">&nbsp;</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ChannelNewCatalogFilter.PublishingInterval.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<select name="CatalogFilterForm_UpdateInterval" class="inputfield_en">
<option value="0" selected="selected"><% {out.write(localizeISText("ChannelNewCatalogFilter.ManualPublishingOnly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="<%=context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(60)).doubleValue())),"0"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogFilterForm:UpdateInterval:Value"),null).equals(context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(60)).doubleValue())),"0"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ChannelNewCatalogFilter.EveryHour.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="<%=context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(6)).doubleValue())),"0"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogFilterForm:UpdateInterval:Value"),null).equals(context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(6)).doubleValue())),"0"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ChannelNewCatalogFilter.Every6Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="<%=context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(12)).doubleValue())),"0"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogFilterForm:UpdateInterval:Value"),null).equals(context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(12)).doubleValue())),"0"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ChannelNewCatalogFilter.Every12Hours.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="<%=context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue())),"0"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogFilterForm:UpdateInterval:Value"),null).equals(context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() *((Number) new Double(24)).doubleValue())),"0"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ChannelNewCatalogFilter.EveryDay.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="<%=context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue())),"0"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CatalogFilterForm:UpdateInterval:Value"),null).equals(context.getFormattedValue(context.getFormattedValue((new Double( ((Number) new Double(1000)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(60)).doubleValue() * ((Number) new Double(24)).doubleValue() *((Number) new Double(7)).doubleValue())),"0"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>selected="selected"<% } %> ><% {out.write(localizeISText("ChannelNewCatalogFilter.EveryWeek.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="table_detail" colspan="3">&nbsp;</td>
</tr>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
</table>
</td> 
</tr>
</table>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td align="right"> 
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input class="button" type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelNewCatalogFilter.Apply.button",null)),null)%>"/>
</td>
<td class="button">
<input class="button" type="submit" name="cancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ChannelNewCatalogFilter.Cancel.button",null)),null)%>"/>
</td>
</tr>
</table> 
</td> 
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area -->
<script language="javascript" type="text/javascript">
<!-- 
document.CatalogFilterForm.CatalogFilterForm_DisplayName.focus();
-->
</script><% printFooter(out); %>