<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="100%" class="infobox w e">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:DocumentNo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_light label_error" for="WFAdvancedSearch_DocumentNo"><% {out.write(localizeISText("quote.QuoteSimpleSearchMask.infobox_item_error.quote.number",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label label_light" for="WFAdvancedSearch_DocumentNo"><% {out.write(localizeISText("quote.QuoteSimpleSearchMask.infobox_item.quote.number",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } %> 
<td>
<input type="text" name="WFSimpleSearch_ID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="35" size="35" class="inputfield_en"/>
</td>
<td>&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFAdvancedSearch:ChannelUUID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label_select"><label class="label label_light label_select label_error" for="ChannelUUID"><% {out.write(localizeISText("quote.QuoteSimpleSearchMask.infobox_item_error.customer",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } else { %><td nowrap="nowrap" class="label_select"><label class="label label_light label_select" for="ChannelUUID"><% {out.write(localizeISText("quote.QuoteSimpleSearchMask.infobox_item.customer",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% } %> 
<td class="left"><input type="text" name="WFAdvancedSearch_CustomerName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFAdvancedSearch_CustomerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" maxlength="35" size="35" class="inputfield_en"/></td>
<td class="left" width="100%">
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>