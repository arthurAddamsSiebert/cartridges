<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/javascript;charset=utf-8" %><%setEncodingType("text/javascript"); %>
[
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
{
id: 'select',
type: 'select',
dataKey: 'uuid',
selectedItemsName: 'SelectedObjectUUID',
availableItemsName: 'ObjectUUID'
},
<% } %> 
{
id: 'name',
type: 'link',
dataKey: 'name',
title: '<% {out.write(localizeISText("contract.ContractsColumns.Name",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null) + context.getFormattedValue("?ContractID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: true
},
{
id: 'contractid',
type: 'link',
dataKey: 'contractid',
title: '<% {out.write(localizeISText("contract.ContractsColumns.ContractID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
url: '<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContract-Edit",null)))),null) + context.getFormattedValue("?ContractID={uuid}",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
params: ['uuid'],
sortable: true
},
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("params:CustomerBO")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
{
id: 'customer',
type: 'text',
dataKey: 'customer',
title: '<% {out.write(localizeISText("contract.ContractsColumns.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
{
id: 'customerid',
type: 'text',
dataKey: 'customerid',
title: '<% {out.write(localizeISText("contract.ContractsColumns.CustomerID",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
}, 
<% } %> 
{
id: 'startdate',
type: 'text',
dataKey: 'startdate',
title: '<% {out.write(localizeISText("contract.ContractsColumns.StartDate",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
{
id: 'enddate',
type: 'text',
dataKey: 'enddate',
title: '<% {out.write(localizeISText("contract.ContractsColumns.EndDate",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: true
},
{
id: 'salestarget',
type: 'money',
dataKey: 'salestarget',
title: '<% {out.write(localizeISText("contract.ContractsColumns.SalesTarget",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
{
id: 'progress',
type: 'progress',
dataKey: 'progress',
title: '<% {out.write(localizeISText("contract.ContractsColumns.Progress",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
},
{
id: 'exceedance',
type: 'text',
dataKey: 'exceedance',
title: '<% {out.write(localizeISText("contract.ContractsColumns.Exceedance",null,null,null,null,null,null,null,null,null,null,null,null));} %>',
sortable: false
}
]
<% printFooter(out); %>