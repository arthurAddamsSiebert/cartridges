<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><input type="hidden" name="webform-id" value="search" />
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("CustomerSearch_52.SimpleCustomerSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</td>
<td class="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-BackAdvancedSearch",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),null)%>" class="switch_link"><% {out.write(localizeISText("CustomerSearch_52.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error label_light" for="WFSearch_NameOrID"><% {out.write(localizeISText("customer.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="WFSearch_NameOrID"><% {out.write(localizeISText("customer.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="SearchTerm" id="WFSearch_NameOrID" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" /></td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SearchType" value="simple"/><input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr>
</table>
</td>
</tr><% } else { %><colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="50%"/>
</colgroup>
<tr>
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("CustomerSearch_52.AdvancedCustomerSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right" colspan="2">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-BackSimpleSearch",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null))),null)%>" class="switch_link"><% {out.write(localizeISText("CustomerSearch_52.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr> 
<tr>
<!-- Main Content -->
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("CustomerSearch_52.GeneralUserAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BusinessPartnerNoError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="search_BusinessPartnerNo"><% {out.write(localizeISText("customer.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="search_BusinessPartnerNo"><% {out.write(localizeISText("CustomerSearch_52.CustomerID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="search_BusinessPartnerNo" id="search_BusinessPartnerNo" maxlength="350" style="width: 100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("search:BusinessPartnerNo:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<script language="javascript" type="text/javascript">
<!--
if (typeof document.userList != "undefined") {
document.userList.search_BusinessPartnerNo.focus();
} else {
document.UserExportList.search_BusinessPartnerNo.focus();
}
-->
</script>
</td> 
<td>&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FirstNameError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="search_FirstName"><% {out.write(localizeISText("customer.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="search_FirstName"><% {out.write(localizeISText("customer.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="search_FirstName" id="search_FirstName" maxlength="350" style="width: 100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("search:FirstName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
<td>&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastNameError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="search_LastName"><% {out.write(localizeISText("customer.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="search_LastName"><% {out.write(localizeISText("customer.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="search_LastName" id="search_LastName" maxlength="350" style="width: 100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("search:LastName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
<td>&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LoginError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="search_Login"><% {out.write(localizeISText("customer.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="search_Login"><% {out.write(localizeISText("customer.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="search_Login" id="search_Login" maxlength="350" style="width: 100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("search:Login:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /></td>
<td>&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="search_CreationDateFrom_Date"><% {out.write(localizeISText("customer.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="search_CreationDateFrom_Date"><% {out.write(localizeISText("customer.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","search_CreationDateFrom_Date"),
new TagParameter("DateString",getObject("search:CreationDateFrom_Date:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 108); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","search_CreationDateFrom_Time"),
new TagParameter("TimeString",getObject("search:CreationDateFrom_Time:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 113); %></tr>
</table>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="search_CreationDateTo_Date"><% {out.write(localizeISText("customer.ToDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="search_CreationDateTo_Date"><% {out.write(localizeISText("customer.ToDate.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","search_CreationDateTo_Date"),
new TagParameter("DateString",getObject("search:CreationDateTo_Date:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 131); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","search_CreationDateTo_Time"),
new TagParameter("TimeString",getObject("search:CreationDateTo_Time:Value")),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 136); %></tr>
</table>
</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label
class="label label_radio label_light" for=""><% {out.write(localizeISText("CustomerSearch_52.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_radio">
<table cellspacing="0" cellpadding="0" border="0">
<td class="input_radio"><input type="radio" name="search_DisabledFlag" id="search_DisabledFlag_All" value="All"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DisabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>
checked="checked"
<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="search_DisabledFlag_All"><% {out.write(localizeISText("CustomerSearch_52.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="search_DisabledFlag" id="search_DisabledFlag_Active" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { %>
checked="checked"
<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="search_DisabledFlag_Active"><% {out.write(localizeISText("customer.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="search_DisabledFlag" id="search_DisabledFlag_Inactive" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %>
checked="checked"
<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="search_DisabledFlag_Inactive"><% {out.write(localizeISText("customer.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SearchType" value="parametric"/><input type="submit" name="parametricSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("customer.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td> 
</tr><% } %></table> 
<% printFooter(out); %>