<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<!-- Page Navigator --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 5); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionalSettings_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.RegionalSettings.text",null)))}, 6); %><!-- EO Page Navigator --><% URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionalSettings_52-Dispatch",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionalSettings_52-Dispatch",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewRegionalSettings_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("RegionalSettingsForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); %><!-- Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w">
<tr>
<td class="table_title e s" colspan="3"><% {out.write(localizeISText("sld_ch_consumer_plugin.RegionalSettings.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description e s" colspan="3"><% {out.write(localizeISText("ChannelRegionalSettings_52.UseTheFollowingPreferencesToDefineTheUnits.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s"><% {out.write(localizeISText("sld_ch_consumer_plugin.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="catalog_description e s bold" nowrap="nowrap"><% {out.write(localizeISText("ChannelRegionalSettings_52.DefaultUnitOfMass.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="catalog_cell e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_REGIONALSETTINGS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %> 
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("RegionalSettingsForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en"><% while (loop("UnitsOfMass",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfMass"),null).equals(context.getFormattedValue(getObject("UnitsOfMass"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } else { %><select name="<% {String value = null;try{value=context.getFormattedValue(getObject("RegionalSettingsForm:DefaultUnitOfMass:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" disabled="disabled"><% while (loop("UnitsOfMass",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfMass"),null).equals(context.getFormattedValue(getObject("UnitsOfMass"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfMass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select><% } %></td>
<td class="catalog_description e s"><% {out.write(localizeISText("ChannelRegionalSettings_52.DefinesTheDefaultUnitOfMass.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="catalog_description e s bold" nowrap="nowrap"><% {out.write(localizeISText("ChannelRegionalSettings_52.DefaultUnitOfLength.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>&nbsp;</td>
<td class="catalog_cell e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_REGIONALSETTINGS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %> 
<select name="<% {String value = null;try{value=context.getFormattedValue(getObject("RegionalSettingsForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en"><% while (loop("UnitsOfLength",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfLength"),null).equals(context.getFormattedValue(getObject("UnitsOfLength"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></select><% } else { %><select name="<% {String value = null;try{value=context.getFormattedValue(getObject("RegionalSettingsForm:DefaultUnitOfLength:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="select inputfield_en" disabled="disabled"><% while (loop("UnitsOfLength",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DefaultUnitOfLength"),null).equals(context.getFormattedValue(getObject("UnitsOfLength"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
selected = "selected"
<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("UnitsOfLength"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></select><% } %></td>
<td class="catalog_description e s"><% {out.write(localizeISText("ChannelRegionalSettings_52.DefinesTheDefaultUnitOfLength.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferredTimeZoneBO"),
new TagParameter("key2","name"),
new TagParameter("key0","TimeZoneBOs"),
new TagParameter("value2",getObject("RegionalSettingsForm:DefaultTimeZone:QualifiedName")),
new TagParameter("value1",getObject("PreferredTimeZoneBO")),
new TagParameter("value0",getObject("TimeZoneBOs")),
new TagParameter("mapname","params")}, 85); %><tr>
<td class="catalog_description e s bold" nowrap="nowrap"><% {out.write(localizeISText("ChannelRegionalSettings_52.DefaultTimeZone.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="catalog_cell e s" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_REGIONALSETTINGS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","region/TimeZoneDropDown.isml"),
new TagParameter("classes","regionalsettings-select-timezones"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("ChannelRegionalSettings_52.SelectTimeZone.noneselectedtext",null))),
new TagParameter("id","select-timezones"),
new TagParameter("position","below"),
new TagParameter("params",getObject("params")),
new TagParameter("selectedlist","1")}, 92); %> 
<% } else { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mode","add"),
new TagParameter("key3","Disabled"),
new TagParameter("value3","true"),
new TagParameter("mapname","params")}, 94); %><% processOpenTag(response, pageContext, "dropdown", new TagParameter[] {
new TagParameter("filter","search"),
new TagParameter("uitemplate","region/TimeZoneDropDown.isml"),
new TagParameter("classes","regionalsettings-select-timezones"),
new TagParameter("noneselectedtext",localizeText(context.getFormattedValue("ChannelRegionalSettings_52.SelectTimeZone.noneselectedtext",null))),
new TagParameter("id","select-timezones"),
new TagParameter("position","below"),
new TagParameter("params",getObject("params")),
new TagParameter("selectedlist","1")}, 95); %> 
<% } %></td>
<td class="catalog_description e s"><% {out.write(localizeISText("ChannelRegionalSettings_52.DefinesTheDefaultTimeZone.catalog_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_REGIONALSETTINGS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr>
<td class="button"><input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "115");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>