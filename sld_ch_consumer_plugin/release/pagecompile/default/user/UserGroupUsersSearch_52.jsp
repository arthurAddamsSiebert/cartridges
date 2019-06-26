<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox n e w">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("UserGroupUsersSearch_52.FindCustomers.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="right"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroupID"),null)).addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfigurationUUID"),null))),null)%>" class="switch_link"><% {out.write(localizeISText("UserGroupUsersSearch_52.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2">
<table cellSpacing=0 cellPadding=0 border=0>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchTermError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("UserGroupUsersSearch_52.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("UserGroupUsersSearch_52.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="SearchTerm" id="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/></td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupUsersSearch_52.Find.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox searchbox n e w">
<colgroup>
<col width="15%"/>
<col width="35%"/>
<col width="50%"/>
</colgroup>
<tr>
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("UserGroupUsersSearch_52.AdvancedCustomerSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="right" colspan="2"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("SearchPipeline"),null) + context.getFormattedValue("-ListAll",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("UserGroupID",null),context.getFormattedValue(getObject("UserGroupID"),null)).addURLParameter(context.getFormattedValue("PaymentConfigurationUUID",null),context.getFormattedValue(getObject("PaymentConfigurationUUID"),null))),null)%>" class="switch_link"><% {out.write(localizeISText("UserGroupUsersSearch_52.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr> 
<tr>
<!-- Main Content -->
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("UserGroupUsersSearch_52.GeneralUserAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td colspan="2">&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BusinessPartnerNoError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light label_indent" for="BusinessPartnerNo"><% {out.write(localizeISText("UserGroupUsersSearch_52.CustomerID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="BusinessPartnerNo"><% {out.write(localizeISText("UserGroupUsersSearch_52.CustomerID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="BusinessPartnerNo" id="BusinessPartnerNo" maxlength="350" style="width:100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<script language="javascript" type="text/javascript">
<!--
document.UserListForm.BusinessPartnerNo.focus();
-->
</script>
</td> 
<td colspan="2">&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FirstNameError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light label_indent" for="FirstName"><% {out.write(localizeISText("UserGroupUsersSearch_52.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="FirstName"><% {out.write(localizeISText("UserGroupUsersSearch_52.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="FirstName" id="FirstName" maxlength="350" style="width:100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td colspan="2">&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LastNameError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light label_indent" for="LastName"><% {out.write(localizeISText("UserGroupUsersSearch_52.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="LastName"><% {out.write(localizeISText("UserGroupUsersSearch_52.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="LastName" id="LastName" maxlength="350" style="width:100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td colspan="2">&#160;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("LoginError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light label_indent" for="Login"><% {out.write(localizeISText("UserGroupUsersSearch_52.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="Login"><% {out.write(localizeISText("UserGroupUsersSearch_52.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td><input type="text" name="Login" id="Login" maxlength="350" style="width:100%" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td colspan="2">&#160;</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateFromError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light label_indent" for="CreationDateFromDateString"><% {out.write(localizeISText("UserGroupUsersSearch_52.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="CreationDateFromDateString"><% {out.write(localizeISText("UserGroupUsersSearch_52.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %></tr>
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td> 
<td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateFromDateString"),
new TagParameter("DateString",getObject("CreationDateFromDateString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 108); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateFromTimeString"),
new TagParameter("TimeString",getObject("CreationDateFromTimeString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateFromError")))))}, 114); %></tr>
</table>
</td>
</tr>
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateToError")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CreationDateError")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label label_error"><label class="label label_light label_indent" for="CreationDateToDateString"><% {out.write(localizeISText("UserGroupUsersSearch_52.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="CreationDateToDateString"><% {out.write(localizeISText("UserGroupUsersSearch_52.To.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %></tr>
<tr>
<td class="infobox_item"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="16" alt="" border="0"/></td>
</tr>
</table>
</td> 
<td align="left" colspan="2">
<table border="0" cellpadding="0" cellspacing="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateToDateString"),
new TagParameter("DateString",getObject("CreationDateToDateString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 141); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","CreationDateToTimeString"),
new TagParameter("TimeString",getObject("CreationDateToTimeString")),
new TagParameter("InputFieldLabelClass","infobox_item"),
new TagParameter("Invalid",((disableErrorMessages().isDefined(getObject("CreationDateToError")))))}, 147); %></tr>
</table>
</td>
</tr> 
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("UserGroupUsersSearch_52.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td colspan="2">
<table cellspacing="0" cellpadding="0" border="0">
<td class="input_radio"><input type="radio" name="DisabledFlag" id="DisabledFlag_All" value="All"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DisabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %>
checked="checked"
<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="DisabledFlag_All"><% {out.write(localizeISText("UserGroupUsersSearch_52.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="DisabledFlag" id="DisabledFlag_Active" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
checked="checked"
<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="DisabledFlag_Active"><% {out.write(localizeISText("UserGroupUsersSearch_52.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type="radio" name="DisabledFlag" id="DisabledFlag_Inactive" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %>
checked="checked"
<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="DisabledFlag_Inactive"><% {out.write(localizeISText("UserGroupUsersSearch_52.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="SearchType" value="parametric"/><input type="submit" name="parametricSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("UserGroupUsersSearch_52.Find.button",null)),null)%>" class="button"/></td> 
</tr>
</table>
</td>
</tr>
</table><% } %><% printFooter(out); %>