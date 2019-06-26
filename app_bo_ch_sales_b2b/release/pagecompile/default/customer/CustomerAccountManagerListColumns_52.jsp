<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
{
id: 'select',
type: 'select',
dataKey: 'ID',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID'
},
<% } %>
{
id: 'type',
type: 'text',
dataKey: 'type',
sortable: false,
width: 40,
title: '<% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.type",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
{
id: 'name',
type: 'text',
dataKey: 'displayName',
title: '<a class="tableheader" href="<% {String value = null;try{value=context.getFormattedValue(getObject("nameTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.user",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>',
sortable: false
},
{
id: 'businessPartnerNo',
type: 'text',
dataKey: 'businessPartnerNumber',
title: '<a class="tableheader" href="<% {String value = null;try{value=context.getFormattedValue(getObject("idTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.id",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>',
sortable: false
},
{
id: 'disabledflag',
type: 'status',
dataKey: 'isActive',
sortable: true,
title: '<a class="tableheader" href="<% {String value = null;try{value=context.getFormattedValue(getObject("disabledFlagTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.status",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>',
width: 70,
sortable: false,
render: function(params) {
var isActive = params.row.isActive,
isCustomerActive = params.row.isCustomerActive,
showActive = isActive && isCustomerActive,
src = showActive ? 'online.png' : 'offline.png',
title = '';
if (!isCustomerActive) {
title = '<% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.customer.is.deactiva",null,null,null,null,null,null,null,null,null,null,null,null));} %>';
} else if (isActive) {
title = '<% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.user.and.customer.ar",null,null,null,null,null,null,null,null,null,null,null,null));} %>';
} else {
title = '<% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.user.is.deactivated",null,null,null,null,null,null,null,null,null,null,null,null));} %>';
} 
return '<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/' + src + '" alt="' + title + '" title="' + title + '" border="0" />&nbsp;';
}
},
{
id: 'creationdate',
type: 'text',
dataKey: 'creationDate',
title: '<a class="tableheader" href="<% {String value = null;try{value=context.getFormattedValue(getObject("creationDateTitleUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("customer.CustomerAccountManagerListColumns_52.creation.date",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>',
sortable: false
}
]
<% printFooter(out); %>