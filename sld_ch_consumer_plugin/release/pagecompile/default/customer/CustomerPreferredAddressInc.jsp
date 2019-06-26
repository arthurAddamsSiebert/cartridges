<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>&nbsp;</td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="input_checkbox">
<input type="checkbox" disabled="disabled" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Address:ID"),null).equals(context.getFormattedValue(getObject("CustomerBO:PreferredInvoiceToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text"><% {out.write(localizeISText("CustomerPreferredAddressInc.PreferredInvoiceAddress.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="input_checkbox">
<input type="checkbox" disabled="disabled" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Address:ID"),null).equals(context.getFormattedValue(getObject("CustomerBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td nowrap="nowrap" class="label_checkbox_text"><label class="label label_checkbox_text"><% {out.write(localizeISText("CustomerPreferredAddressInc.PreferredShippingAddress.text",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr><td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td></tr>
</table>
</td>
</tr><% printFooter(out); %>