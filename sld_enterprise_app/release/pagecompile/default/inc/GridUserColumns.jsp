<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".columns",null)); getPipelineDictionary().put("configColumns", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("\'",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configColumns)"),null),(String)(" "),(String)("\', \'")),null) + context.getFormattedValue("\'",null)); getPipelineDictionary().put("columns", temp_obj);} %><% } %>
(function () {
var allColumns = {
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:CurrentUserPermissionMap:SLD_MANAGE_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
select: {
type: 'select',
dataKey: 'uuid',
selectedItemsName: '<% {String value = null;try{value=context.getFormattedValue(getObject("params:SelectedItemsName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
availableItemsName: '<% {String value = null;try{value=context.getFormattedValue(getObject("params:AvailableItemsName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
<% } %>
lastname: {
type: 'text',
dataKey: 'lastname',
title: '<% {out.write(localizeISText("GridUserColumns.LastName",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
lastnameLink: {
type: 'link',
dataKey: 'lastname',
title: '<% {out.write(localizeISText("GridUserColumns.LastName",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Show",null)))),null) + context.getFormattedValue("?USER_UUID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: false
},
firstname: {
type: 'text',
dataKey: 'firstname',
title: '<% {out.write(localizeISText("GridUserColumns.FirstName",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
firstnameLink: {
type: 'link',
dataKey: 'firstname',
title: '<% {out.write(localizeISText("GridUserColumns.FirstName",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Show",null)))),null) + context.getFormattedValue("?USER_UUID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: false
},
userid: {
type: 'text',
dataKey: 'userid',
title: '<% {out.write(localizeISText("GridUserColumns.UserID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
useridLink: {
type: 'link',
dataKey: 'userid',
title: '<% {out.write(localizeISText("GridUserColumns.UserID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Show",null)))),null) + context.getFormattedValue("?USER_UUID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: false
},
login: {
type: 'text',
dataKey: 'login',
title: '<% {out.write(localizeISText("GridUserColumns.Login",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
loginLink: {
type: 'link',
dataKey: 'login',
title: '<% {out.write(localizeISText("GridUserColumns.Login",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUser-Show",null)))),null) + context.getFormattedValue("?USER_UUID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: false
},
status: {
type: 'text',
dataKey: 'status',
title: '<% {out.write(localizeISText("GridUserColumns.Status",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 180,
maxWidth: 180
},
roles: {
type: 'text',
dataKey: 'roles',
title: '<% {out.write(localizeISText("GridUserColumns.Roles",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 180,
maxWidth: 180
}
},
names = [<% {String value = null;try{value=context.getFormattedValue(getObject("columns"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";out.write(value);} %>],
columns = [],
len = names.length,
i, column;
// only show specified columns
for (i = 0; i < len; i++) {
if (allColumns.hasOwnProperty(names[i])) {
column = allColumns[names[i]];
// the column needs to know about its id
column.id = names[i];
columns.push(column);
}
}
// show all columns if no columns are specified 
if (columns.length === 0) return allColumns;
return columns;
})()
<% printFooter(out); %>