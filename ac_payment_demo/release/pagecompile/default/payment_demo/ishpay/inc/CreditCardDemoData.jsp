<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table class="table-condensed">
<thead>
<tr>
<th><% {out.write(localizeISText("CreditCardDemoData.CardType","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("CreditCardDemoData.ValidNumbers","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("CreditCardDemoData.ExpirationDate","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("CreditCardDemoData.CSC","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("CreditCardDemoData.3DSecureCode","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
</tr>
</thead>
<tbody>
<tr>
<td><% {out.write(localizeISText("CreditCardDemoData.Visa","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>4111 1111 1111 1111</td>
<td>12/20</td>
<td>123</td>
<td>1111</td>
</tr>
<tr>
<td class="text-danger">&nbsp;</td>
<td class="text-danger">4012 8888 8888 1881</td>
<td class="text-danger">12/20</td>
<td class="text-danger">123</td>
<td class="text-danger">1111</td>
</tr>
<tr>
<td><% {out.write(localizeISText("CreditCardDemoData.MasterCard","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>5555 5555 5555 4444</td>
<td>12/20</td>
<td>123</td>
<td>1111</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>5105 1051 0510 5100</td>
<td>12/20</td>
<td>123</td>
<td>-</td>
</tr>
<tr>
<td><% {out.write(localizeISText("CreditCardDemoData.Discover","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>6011 1111 1111 1117</td>
<td>12/20</td>
<td>123</td>
<td>-</td>
</tr>
<tr>
<td class="text-danger">&nbsp;</td>
<td class="text-danger">6011 0009 9013 9424</td>
<td class="text-danger">12/20</td>
<td class="text-danger">123</td>
<td class="text-danger">-</td>
</tr>
<tr>
<td><% {out.write(localizeISText("CreditCardDemoData.AmericanExpress","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td>378 2822 4631 0005</td>
<td>12/20</td>
<td>1234</td>
<td>-</td>
</tr>
</tbody> 
</table><% printFooter(out); %>