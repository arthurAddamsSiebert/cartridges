<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
function (args) {
<%
		getPipelineDictionary().put("now", Calendar.getInstance());
	%>
var data = [
<% while (loop("pageable","Profile",null)) { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("assigned", temp_obj);} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("params:AssignedUsers") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% while (loop("params:AssignedUsers","DeptUser",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Profile:UUID"),null).equals(context.getFormattedValue(getObject("DeptUser:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("assigned", temp_obj);} %><% } %><% } %><% } %>
{
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("params:CurrentUser")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("params:CurrentUser:ID"),null).equals(context.getFormattedValue(getObject("Profile:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("assigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>disabled: true,<% } %>
selected: <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Profile:UUID"),null).equals(context.getFormattedValue(getObject("params:Clipboard:ObjectUUID(Profile:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("assigned"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>true<% } else { %>false<% } %>,
uuid: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Profile:UUID"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
lastname: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Profile:DataSheet:LastName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
firstname: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Profile:DataSheet:FirstName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
userid: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Profile:DataSheet:BusinessPartnerNo"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
login: "<% {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Profile:Credentials:Login"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",
status: "<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Profile:Credentials:DisabledUntil:Time")).doubleValue() >((Number)(getObject("now:TimeInMillis"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.write(localizeISText("GridUserData.TemporarilyDeactivated",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Profile:Credentials:isDisabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {out.write(localizeISText("GridUserData.Inactive",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("GridUserData.Active",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %>",
roles: "<a href='<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDepartmentUsers-EditUserRoles",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("UserUUID",null),context.getFormattedValue(getObject("Profile:UUID"),null))).addURLParameter(context.getFormattedValue("DepartmentUUID",null),context.getFormattedValue(getObject("params:Department:UUID"),null))),null)%>' class='table_detail_link2'><% {String value = null;try{value=context.getFormattedValue(getObject("rolesLink"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:CurrentUserPermissionMap:SLD_MANAGE_DEPARTMENTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% {out.write(localizeISText("GridUserData.Edit",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("GridUserData.View",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></a>"
}<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Profile") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>,<% } %><% } %>
];
args.callback({
orderColumnId: "",
order: "asc",
offset: <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:PageStart")).doubleValue() -((Number) new Double(1)).doubleValue())),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
total: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
items: data
});
}
<% printFooter(out); %>