<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<!-- TemplateName : RequisitionAWFTaskMail.isml -->
<!-- TemplateComment :  EMail form for notifying approvers for new tasks in their list -->

<% %><%@ page contentType="text/html;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/html"); %><subject><% {out.write(localizeISText("RequisitionAWFTaskMail.NewRequisitionArrived",null,null,null,null,null,null,null,null,null,null,null,null));} %></subject>
<html>
<body>
<h2><u><% {out.write(localizeISText("RequisitionAWFTaskMail.ThereIsANewRequisitionToBeApprovedInYour","",null,null,null,null,null,null,null,null,null,null,null));} %></u></h2>
<p>
<table>
<tr>
<td colspan="2">
<b><% {out.write(localizeISText("RequisitionAWFTaskMail.RequisitionDetails","",null,null,null,null,null,null,null,null,null,null,null));} %><br>&nbsp;</b>
</td>
</tr>
<tr>
<td><% {out.write(localizeISText("RequisitionAWFTaskMail.Id","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("RequisitionAWFTaskMail.Buyer","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:User:Profile:DataSheet:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:User:Profile:DataSheet:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("RequisitionAWFTaskMail.Department","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:DepartmentDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("RequisitionAWFTaskMail.LineItems","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:ProductLineItemsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("RequisitionAWFTaskMail.RequisitionTotal","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:GrandTotalGrossPriceLC"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("RequisitionAWFTaskMail.CreationDate","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:CreationDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>, <% {String value = null;try{value=context.getFormattedValue(getObject("Requisition:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</p>
</body>
</html><% printFooter(out); %>