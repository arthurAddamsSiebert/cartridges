<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SearchType"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SearchType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><input type="hidden" name="SearchType" value="simple"/>
<table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox w e n">
<tr>
<td class="infobox_title" nowrap="nowrap"><% {out.write(localizeISText("UserSearch.SimpleUserSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</td>
<td class="right">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),null)%>" class="switch_link"><% {out.write(localizeISText("UserSearch.SwitchToAdvancedSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="2">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light" for="SearchTerm"><% {out.write(localizeISText("UserSearch.NameOrID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="SearchTerm" id="SearchTerm" maxlength="350" size="35" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchTerm"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
<td>&nbsp;</td>
<td>
<table border="0" cellspacing="2" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="simpleSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox searchbox w e n">
<tr>
<td class="infobox_title" colspan="2"><% {out.write(localizeISText("UserSearch.AdvancedUserSearch.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><input type="hidden" name="SearchType" value="parametric"/>
</td>
<td class="right" colspan="2">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserList-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("simple",null)))),null)%>" class="switch_link"><% {out.write(localizeISText("UserSearch.SwitchToSimpleSearch.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td colspan="4">
<table width="100%" border="0" cellpadding="4" cellspacing="0">
<colgroup>
<col width="15%" />
<col width="35%" />
<col width="15%" />
<col width="35%" />
</colgroup>
<tr>
<!-- Main Content -->
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("UserSearch.GeneralUserAttributes.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_subtitle" colspan="2"><% {out.write(localizeISText("UserSearch.AssignedObjects.infobox_subtitle",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="BusinessPartnerNo"><% {out.write(localizeISText("sld_enterprise_app.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="BusinessPartnerNo" id="BusinessPartnerNo" size="35" maxlength="350" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="AccessRoleID"><% {out.write(localizeISText("UserSearch.AccessPrivilege.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select name="AccessRoleID" id="AccessRoleID" class="select inputfield_en">
<option value="All" selected="selected"><% {out.write(localizeISText("sld_enterprise_app.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("AccessRoles",null,null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("AccessRoles:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AccessRoleID"),null).equals(context.getFormattedValue(getObject("AccessRoles:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("AccessRoles:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="FirstName"><% {out.write(localizeISText("sld_enterprise_app.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="FirstName" id="FirstName" size="35" maxlength="350" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="DepartmentName"><% {out.write(localizeISText("UserSearch.DepartmentName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="DepartmentName" id="DepartmentName" size="35" maxlength="350" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("DepartmentName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="LastName"><% {out.write(localizeISText("sld_enterprise_app.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="LastName" id="LastName" size="35" maxlength="350" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td colspan="2">&#160;</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="Login"><% {out.write(localizeISText("sld_enterprise_app.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" name="Login" id="Login" size="35" maxlength="350" class="inputfield_en" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
<td colspan="2">&#160;</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio label_light label_indent" for=""><% {out.write(localizeISText("UserSearch.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_radio" colspan="4">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="input_radio">
<input type=radio name="DisabledFlag" id="DisabledFlag_All" value="All"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("DisabledFlag")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_radio_text"><label for="DisabledFlag_All" class="label label_radio_text label_light"><% {out.write(localizeISText("sld_enterprise_app.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type=radio name="DisabledFlag" id="DisabledFlag_0" value="0"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_radio_text"><label for="DisabledFlag_0" class="label label_radio_text label_light"><% {out.write(localizeISText("sld_enterprise_app.Active.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type=radio name="DisabledFlag" id="DisabledFlag_1" value="1"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_radio_text"><label for="DisabledFlag_1" class="label label_radio_text label_light"><% {out.write(localizeISText("UserSearch.Inactive.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
<td class="input_radio"><input type=radio name="DisabledFlag" id="DisabledFlag_2" value="2"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisabledFlag"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="label_radio_text"><label for="DisabledFlag_2" class="label label_radio_text label_light"><% {out.write(localizeISText("UserSearch.TemporarilyDeactivated.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="parametricSearch" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Find.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr> 
</table><% } %><% printFooter(out); %>