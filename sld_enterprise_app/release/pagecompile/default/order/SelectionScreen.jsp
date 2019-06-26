<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!-- Main Content -->
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="2"><% {out.write(localizeISText("SelectionScreen.Orders.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail"><a href="" class="table_detail_link "><% {out.write(localizeISText("SelectionScreen.ManageOrders.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="actionbar_right" rowspan="2"><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectionScreen.OK.button",null)),null)%>" class="button" onclick=""/></td>
</tr>
<tr>
<td class="table_detail"><% {out.write(localizeISText("SelectionScreen.CheckListOfIncomingOrdersSplitOrdersArrangeDelivery.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="2"><% {out.write(localizeISText("SelectionScreen.Customers.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail"><a href="" class="table_detail_link "><% {out.write(localizeISText("SelectionScreen.ManageCustomers.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="actionbar_right" rowspan="2"><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectionScreen.OK.button",null)),null)%>" class="button" onclick=""/></td>
</tr>
<tr>
<td class="table_detail"><% {out.write(localizeISText("SelectionScreen.CreateAndConfigureCustomerOrganizations.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="2"><% {out.write(localizeISText("SelectionScreen.IndependentBuyers.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail"><a href="" class="table_detail_link "><% {out.write(localizeISText("SelectionScreen.ManageIndependentBuyers.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="actionbar_right" rowspan="2"><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectionScreen.OK.button",null)),null)%>" class="button" onclick=""/></td>
</tr>
<tr>
<td class="table_detail">xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.</td>
</tr>
</table>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi" colspan="2"><% {out.write(localizeISText("SelectionScreen.Partners.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
<tr>
<td class="table_detail"><a href="" class="table_detail_link "><% {out.write(localizeISText("SelectionScreen.ManagePartners.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
<td class="actionbar_right" rowspan="2"><input type="submit" name="edit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SelectionScreen.OK.button",null)),null)%>" class="button" onclick=""/></td>
</tr>
<tr>
<td class="table_detail"><% {out.write(localizeISText("SelectionScreen.CreateAndConfigurePartnerOrganizationsForResellers.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>