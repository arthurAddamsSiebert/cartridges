<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import = "com.intershop.beehive.core.capi.currency.CurrencyMgr"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 s"><% {out.write(localizeISText("ApplicationCurrencies.Currencies.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description s"><% {out.write(localizeISText("ApplicationCurrencies.UseTheFollowingPreferencesToDefineRegionalSettingsBehavior.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","SystemCurrencies"),
new TagParameter("key2","ApplicationCurrencies"),
new TagParameter("key0","ApplicationForm"),
new TagParameter("value2",getObject("ApplicationCurrencies")),
new TagParameter("value1",getObject("SystemCurrencies")),
new TagParameter("key3","ApplicationDefaultCurrency"),
new TagParameter("value4",getObject("ActiveSystemCurrencies")),
new TagParameter("value3",getObject("ApplicationDefaultCurrency")),
new TagParameter("key4","ActiveSystemCurrencies"),
new TagParameter("value0",getObject("ApplicationForm")),
new TagParameter("mapname","ApplicationCurrenciesParams")}, 15); %><div id="CurrenciesMgmtDialog" class="js-dialog" data-title="<% {out.write(localizeISText("app.Dialog.Currencies.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="654" height="415">
<div class="dialog-content"><% processOpenTag(response, pageContext, "assignmentlist", new TagParameter[] {
new TagParameter("scripttemplate","app/ApplicationCurrenciesAssignmentScript.isml"),
new TagParameter("uitemplate","app/ApplicationCurrenciesAssignment.isml"),
new TagParameter("selectedlabel",localizeText(context.getFormattedValue("app.Dialog.Currencies.selected",null))),
new TagParameter("availablelabel",localizeText(context.getFormattedValue("app.Dialog.Currencies.available",null))),
new TagParameter("id","CurrenciesMgmtAssignment"),
new TagParameter("defaultname",getObject("ApplicationForm:DefaultCurrency:QualifiedName")),
new TagParameter("params",getObject("ApplicationCurrenciesParams")),
new TagParameter("itemlabel","currency")}, 25); %></div>
<div class="dialog-buttons">
<input type="button" class="button" id="CurrenciesMgmtDialog-ok" value="<% {out.write(localizeISText("app.Dialog.Currencies.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<input type="button" class="button" id="CurrenciesMgmtDialog-cancel" value="<% {out.write(localizeISText("app.Dialog.Currencies.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-focus data-action="dialog-close">
</div><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>application-currencies.js<% out.print("</waplacement>"); %><script type="text/javascript">
initCurrenciesDialog('<% {out.write(localizeISText("app.Dialog.Currencies.Name","javascript",null,null,null,null,null,null,null,null,null,null,null));} %>', '<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>');
</script>
</div>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="currencylist">
<tr>
<td width="80" class="table_header e s"><div class="center"><% {out.write(localizeISText("ApplicationCurrencies.Default.center",null,null,null,null,null,null,null,null,null,null,null,null));} %></div></td>
<td class="table_header s"><% {out.write(localizeISText("ApplicationCurrencies.Currencies.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ApplicationCurrencies")))).booleanValue() && !((Boolean) (getObject("ApplicationCurrencies:Empty"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% while (loop("ApplicationCurrencies","currency",null)) { %><tr>
<td class="e s center">
<div class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency"),null).equals(context.getFormattedValue(getObject("ApplicationDefaultCurrency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>active<% } else { %>inactive<% } %>"></div><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency"),null).equals(context.getFormattedValue(getObject("ApplicationDefaultCurrency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Currencies:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationForm:DefaultCurrency:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ApplicationForm:DefaultCurrency:Value")); getPipelineDictionary().put("LeadCurrencyMnemonic", temp_obj);} %><% while (loop("ActiveSystemCurrencies","currency",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ApplicationForm:Currencies:Currency:Values:Contains(currency:Mnemonic)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><tr>
<td class="e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency:Mnemonic"),null).equals(context.getFormattedValue(getObject("LeadCurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><div class="active"></div>
<input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } else { %><div class="inactive"></div><% } %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Currencies:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %><% } else { %><%
						CurrencyMgr mgr = (CurrencyMgr)NamingMgr.getManager(CurrencyMgr.class);
						getPipelineDictionary().put("LeadCurrency", mgr.getLeadCurrency());
						%><% while (loop("ActiveSystemCurrencies","currency",null)) { %><tr>
<td class="e s center"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("currency"),null).equals(context.getFormattedValue(getObject("LeadCurrency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><div class="active"></div>
<input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:DefaultCurrency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% } else { %><div class="inactive"></div><% } %><input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("currency:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ApplicationForm:Currencies:Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
</td>
<td class="table_detail top s"><% {String value = null;try{value=context.getFormattedValue(getObject("currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% } %><% } %><% } %></table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_APPS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><tr>
<td align="right" class="s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="button" data-action="dialog-open <%=context.getFormattedValue("#",null)%>CurrenciesMgmtDialog" class="button" name="ManageCurrencies" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationCurrencies.Manage.button",null)),null)%>" /></td>
</tr>
</table>
</td>
</tr><% } %></table><% printFooter(out); %>