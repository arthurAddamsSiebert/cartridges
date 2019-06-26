<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@ page import="com.intershop.component.rest.capi.auth.Token" %>
<%@ page import="com.intershop.component.rest.internal.auth.TokenImpl" %>
<%@ page import="com.intershop.beehive.core.capi.user.User" %>
<% 
	getPipelineDictionary().put("HeaderParameterName" , Token.PARAMETER_NAME);
	User user = (User)getPipelineDictionary().get("params:CurrentUser");
	String token = new TokenImpl(user).getToken();
	getPipelineDictionary().put("HeaderParameterValue" , token);
%>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
(function () {
// construct channel part of the url e.g. "/inTronics/"
var channelPart = "/".concat('<% {String value = null;try{value=context.getFormattedValue(getObject("params:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>','/'),
// add user locale to the channel part of the url e.g. "/inTronics;loc=de_DE/"
localePart = "/".concat("<% {String value = null;try{value=context.getFormattedValue(getObject("params:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>",';loc=','<% {String value = null;try{value=context.getFormattedValue(getObject("params:Locale"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',"/") 
var restBase = '<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(url(true,(new URLServletAction(context.getFormattedValue("",null)))),null),(String)("servlet"),(String)("rest")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
restStart = "<% {String value = null;try{value=context.getFormattedValue(getObject("params:RestStartUri"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
.replace(channelPart, localePart )
.replace('{key of item}', '<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("params:SearchIndexId"),null)),null)%>')
.replace('{key of item}', '<% {String value = null;try{value=context.getFormattedValue(getObject("params:SearchIndexAttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value,"url,url");out.write(value);} %>');
// Fixes ignored crossDomain=true for $.ajax
jQuery.support.cors = true;
/**
* Maps REST data to tree nodes
* @param {Array} data Data retrieved from REST
*/
function TreeRestData(data) {
this.data = data || [];
}
/**
* Iterate over data and map each item as tree node
* @return {Array} Tree nodes
*/
TreeRestData.prototype.map = function map() {
return $.map(this.data, this._mapNode);
};
/**
* Creates tree node from REST item
* @param {Object} item Item retrieved from rest
* @return {Object} Tree node
*/
TreeRestData.prototype._mapNode = function mapNode(item) {
return {
title: item.displayName || item.name,
data: {
checkbox: {
value: item.domainId + '/' + item.name,
checked: !! item.assigned,
undetermined: !! item.hasAssignedDescendants
}
},
liAttr: {
'data-uri': item.uri.replace(channelPart, localePart )
},
children: !! item.hasChildren
};
};
/**
* Sorts array by given attribute and order
* @param {String} attribute Name of the attribute
* @param {Boolean} ascending Ascending order
* @return {Array} Sorted Array of Objects
*/
TreeRestData.prototype.sort = function sort(attribute, ascending) {
var SMALLER = ascending === false ? 1 : -1,
BIGGER = ascending === false ? -1 : 1;
this.data.sort(function compare(a, b) {
if (a[attribute] < b[attribute]) return SMALLER;
if (a[attribute] > b[attribute]) return BIGGER;
return 0;
});
return this;
};
return function getData(node, callback) {
var uri = node !== -1 ? node.data('uri') : restStart;
function onSuccess(response) {
var data, tree;
if (!response.assignableCategoriesHierarchy) return onError();
if (response.assignableCategoriesHierarchy.length === 0) {
return callback({
title: 'There are currently no categories to show here.'
});
}
data = new TreeRestData(response.assignableCategoriesHierarchy);
tree = data.sort('displayName').map();
callback(tree);
}
function onError() {
callback({
title: 'Error'
});
}
$.ajax(restBase + uri, {
headers: {
'<% {String value = null;try{value=context.getFormattedValue(getObject("HeaderParameterName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>': '<% {String value = null;try{value=context.getFormattedValue(getObject("HeaderParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
},
timeout: 15000,
crossDomain: true,
success: onSuccess,
error: onError
});
};
})()
<% printFooter(out); %>