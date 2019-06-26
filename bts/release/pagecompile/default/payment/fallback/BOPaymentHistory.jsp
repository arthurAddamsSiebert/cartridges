<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("BOPaymentHistory.ThisIsAGenericViewToThePaymentHistoryOfT.table_title_description","",null,getObject("PaymentTransaction:PaymentService:ID"),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
</table>
<table id="tablePaymentHistory" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<th class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("BOPaymentHistory.Time.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("BOPaymentHistory.Event.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s" nowrap="nowrap" ><% {out.write(localizeISText("BOPaymentHistory.HistoryData.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("PaymentTransaction:SortedPaymentHistory","PH",null)) { %><tr>
<td class="table_detail w e s " nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PH:EventTime"),new Integer(DATE_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("PH:EventTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s " nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("PH:EventID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="e ">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<th class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("BOPaymentHistory.Name.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header s" nowrap="nowrap"><% {out.write(localizeISText("BOPaymentHistory.Value.table_header","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr><% while (loop("PH:AttributeValues","AV",null)) { %><tr>
<td class="table_detail e s " nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AV:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail s "><% {String value = null;try{value=context.getFormattedValue(getObject("AV:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %></table>
</td>
</tr><% } %></table><% printFooter(out); %>