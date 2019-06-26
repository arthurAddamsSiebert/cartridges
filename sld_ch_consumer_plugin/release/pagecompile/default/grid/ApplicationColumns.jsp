<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("configuration")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("currentapplication")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("config"),null) + context.getFormattedValue(".columns",null)); getPipelineDictionary().put("configColumns", temp_obj);} %><% {Object temp_obj = (context.getFormattedValue("\'",null) + context.getFormattedValue(replace(context.getFormattedValue(getObject("currentapplication:Configuration:String(configColumns)"),null),(String)(" "),(String)("\', \'")),null) + context.getFormattedValue("\'",null)); getPipelineDictionary().put("columns", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("columns"),null).equals(context.getFormattedValue("\'\'",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("columns", temp_obj);} %><% } %><% } %>
(function () {
var allColumns = {
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:UserPermissionForEdit"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
select: {
type: 'select',
dataKey: 'uuid',
selectedItemsName: '<% {String value = null;try{value=context.getFormattedValue(getObject("params:SelectedItemsName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
availableItemsName: '<% {String value = null;try{value=context.getFormattedValue(getObject("params:AvailableItemsName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
<% } %>
name: {
type: 'text',
dataKey: 'name',
title: '<% {out.write(localizeISText("ApplicationColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
typecode: {
type: 'text',
dataKey: 'typeCode',
title: '<% {out.write(localizeISText("ApplicationColumns.Type",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
urlidentifier: {
type: 'text',
dataKey: 'urlIdentifier',
title: '<% {out.write(localizeISText("ApplicationColumns.URLIdentifier",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
description: {
type: 'text',
dataKey: 'description',
title: '<% {out.write(localizeISText("ApplicationColumns.Description",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
enabled: {
type: 'status',
dataKey: 'enabled',
title: '<% {out.write(localizeISText("Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 120,
maxWidth: 120,
render: function render(args) {
var result = [], row = args.row;
if (row.isEnabled) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/check.png" alt="<% {out.write(localizeISText("Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>" title="<% {out.write(localizeISText("Enabled",null,null,null,null,null,null,null,null,null,null,null,null));} %>" border="0" />&nbsp;');
}
return result.join('');
}
}
},
names = [<% {String value = null;try{value=context.getFormattedValue(getObject("columns"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";out.write(value);} %>],
useAll = names.length === 0,
columns = [],
name, column;
function indexOf(list, element) {
if (list.indexOf) {
return list.indexOf(element);
}
for (var i = 0, len = list.length; i < len; i++) {
if (list[i] === element) {
return i;
}
}
return -1;
}
for (name in allColumns) {
if (!allColumns.hasOwnProperty(name)) continue;
var column = allColumns[name];
column.id = name;
// check if column configuration is provided
if (useAll) {
// no column configuration
columns.push(column);
} else {
// check if column is needed
if (indexOf(names, name) !== -1) {
columns.push(column);
}
}
}
return columns;
})()
<% printFooter(out); %>