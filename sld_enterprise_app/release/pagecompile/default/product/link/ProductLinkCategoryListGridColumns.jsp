<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[{
id: 'uuid',
type: 'select',
dataKey: 'linkID',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID',
}, {
id: 'categoryName',
type: 'text',
dataKey: 'displayName',
title: '<% {out.write(localizeISText("sld_enterprise_app.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %> ',
sortable: false,
render: function(args) {
var result = [];
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
result.push('<a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCategoryLinks-CategoryDetails",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'
+ '?DetailCategoryUUID=' + args.row.uuid
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
+ '&ChannelID=<% {String value = null;try{value=context.getFormattedValue(getObject("params:ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'
<% } %>
+ '&ProductID=<% {String value = null;try{value=context.getFormattedValue(getObject("params:Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'
+ '&SelectedLinkTypePC=<% {String value = null;try{value=context.getFormattedValue(getObject("params:SelectedLinkTypePC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'
+ '&SelectedMenuItem=<% {String value = null;try{value=context.getFormattedValue(getObject("params:SelectedMenuItem"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>' 
+ '" class="table_detail_link">' + args.row.displayName + '</a>');
<% } else { %>
result.push(args.row.displayName);
<% } %>
result.push('&nbsp;');
if (args.row.isOnline) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="Online" border="0"/>');
}
if (args.row.isImplicitProductBinding) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="Implicit Product Binding" border="0"/>');
}
return result.join('');
}
}, {
id: 'categoryId',
type: 'text',
dataKey: 'name',
title: '<% {out.write(localizeISText("sld_enterprise_app.ID.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
width: 160,
maxWidth: 160,
sortable: false,
render: function(args) {
var result = [];
result.push(args.row.name);
result.push('&nbsp');
if (args.row.isOnline) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_online.gif" alt="Online" border="0"/>');
}
if (args.row.isImplicitProductBinding) {
result.push('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_implicitly_bound.gif" alt="Implicit Product Binding" border="0"/>');
}
return result.join('');
}
}, {
id: 'categoryDescription',
type: 'text',
dataKey: 'description',
title: '<% {out.write(localizeISText("sld_enterprise_app.Description.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 180,
maxWidth: 180,
}, {
id: 'type',
type: 'text',
dataKey: 'type',
title: '<% {out.write(localizeISText("sld_enterprise_app.Type.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false,
width: 80,
maxWidth: 150,
render: function (args) {
var result = [];
if (args.row.isLinkLocal && args.row.isLinkShared) {
result.push('Local Link, Shared Link');
}
else if (args.row.isLinkLocal) {
result.push('Local Link');
}
else if (args.row.isLinkShared) {
result.push('Shared Link');
}
return result.join('');
}
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("params:LinkDirection"),null).equals(context.getFormattedValue("Outgoing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("params:PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
}, {
id: 'sorting',
// This column type shouldn't be used outside of the product/category links.
// A standard column that can be used for sorting will be provided with the implementation of ENFINITY-34988. 
type: 'sorting',
dataKey: 'sorting',
title: '<% {out.write(localizeISText("sld_enterprise_app.Sorting.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %>',
moveUpLinkButtonName: 'moveUpCategoryLink',
moveDownLinkButtonName: 'moveDownCategoryLink',
webRoot: '<% {String value = null;try{value=context.getFormattedValue(context.webRoot(),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
sortedElementsCount: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
allElementsCount: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
pageSize: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
pageNumber: <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
width: 50,
maxWidth: 50
<% } %>
}]
<% printFooter(out); %>