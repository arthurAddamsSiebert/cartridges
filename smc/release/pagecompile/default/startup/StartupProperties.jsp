<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td class="form_bg w e s">
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<tr>
<td class="table_header e s" nowrap="nowrap">
<div id="B" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ApplicationInformation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EnfinityVersion"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("OperatingSystem"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("JavaVersion"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("LoadedCartridges"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Datasources"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Drivers"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("LicenseInformation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>style="display:none"<% } %>>
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('StartUp');" class="tableheader"><% {out.write(localizeISText("StartupProperties.ClearAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="A" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ApplicationInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnfinityVersion"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("OperatingSystem"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("JavaVersion"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LoadedCartridges"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Datasources"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Drivers"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LicenseInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>style="display:none"<% } %>>
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="75">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('StartUp');" class="tableheader"><% {out.write(localizeISText("StartupProperties.SelectAll.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td>
<td class="table_header s e" width = "40%"><% {out.write(localizeISText("StartupProperties.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s" width = "60%"><% {out.write(localizeISText("StartupProperties.Description.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="ApplicationInformation" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ApplicationInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.ApplicationServerInformation.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.NameIPPortServergroups.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="VersionNumber" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("EnfinityVersion"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.ApplicationSoftwareInformation.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.Intershop7VersionNumberAndProductID.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="OS" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OperatingSystem"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.OperatingSystem.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.OSNameAndVersion.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="JavaVersion" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("JavaVersion"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.Java.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.UsedJREVersion.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center s e"><input type="checkbox" name="LoadedCartridges" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LoadedCartridges"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.LoadedCartridges.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.CartridgeNamePathAndVersion.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_detail center s e"><input type="checkbox" name="JDBCData" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Datasources"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.Database.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.BasicInformationAboutTheDatabase.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center s e"><input type="checkbox" name="JDBCDriver" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Drivers"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail s e"><% {out.write(localizeISText("StartupProperties.JDBCDriver.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description s"><% {out.write(localizeISText("StartupProperties.LoadedJDBCDriver.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
<tr>
<td class="table_detail center e"><input type="checkbox" name="LicenseKey" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("LicenseInformation"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td>
<td class="table_detail e"><% {out.write(localizeISText("StartupProperties.LicenseKey.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_title_description"><% {out.write(localizeISText("StartupProperties.DisplayInformationOfTheLicenseKey.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr> 
</table>
</td>
</tr><% printFooter(out); %>