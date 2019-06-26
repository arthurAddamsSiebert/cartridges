<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailConfig", null, "5");} %><subject><% {out.write(localizeISText("email.quote.update.heading",null,null,encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null,null));} %></subject><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailHeader", null, "9");} %><p><% {out.write(localizeISText("email.hello.label.firstname_lastname","",null,getObject("QuoteBO:UserBO:FirstName"),getObject("QuoteBO:UserBO:LastName"),null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.quote.update.info",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAccount-Start",null)))),null)),null,null,null,null,null,null,null,null,null));} %></p>
<table cellpadding="0" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600">
<table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr>
<td width="30%"><% {out.write(localizeISText("email.quote.details.label.id","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("QuoteBO:Number"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td><% {out.write(localizeISText("email.quote.details.label.username","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("QuoteBO:UserBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("QuoteBO:UserBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("QuoteBO:SellerComment"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td valign="top"><% {out.write(localizeISText("email.quote.details.label.comment","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td valign="top"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("QuoteBO:SellerComment"),null),(String)("\n"),(String)("<br/>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";out.write(value);} %></td>
</tr><% } %></table>
</td>
</tr>
</table>
</br>
<table cellpadding="0" cellspacing="0" class="pattern">
<tr class="mobileTable">
<td width="600">
<table cellpadding="0" cellspacing="0" width="100%" class="dataList">
<tr class="listHeader">
<td><% {out.write(localizeISText("email.quote.update.items.header.description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td><% {out.write(localizeISText("email.quote.update.items.header.quantity","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right"><% {out.write(localizeISText("email.quote.update.items.header.price","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td align="right"><% {out.write(localizeISText("email.quote.update.items.header.total","",null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr><% {Object temp_obj = (getObject("QuoteBO:QuoteLineItemBOs")); getPipelineDictionary().put("QuoteLineItemBOs", temp_obj);} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("QuoteLineItemBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><% while (loop("QuoteLineItemBOs","LineItem",null)) { %><% {Object temp_obj = (getObject("LineItem:ProductBO")); getPipelineDictionary().put("ProductBO", temp_obj);} %><tr class="item"> 
<td>
<img alt="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" src="<% {String value = null;try{value=context.getFormattedValue(context.contentURL(context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue("",null),context.getFormattedValue(getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:PrimaryImageBO(\"S\"):ContentRef"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("LineItem:SKU"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></br><% {out.write(localizeISText("email.quote.update.item.sku","",null,getObject("LineItem:SKU"),null,null,null,null,null,null,null,null,null));} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:OriginQuantity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td align="right">
<span class="text-nowrap"><% {out.write(localizeISText("email.quote.update.item.price.original","",null,null,null,null,null,null,null,null,null,null,null));} %></span> <span class="text-nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:OriginSinglePrice"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></br>
<span class="text-nowrap"><% {out.write(localizeISText("email.quote.update.item.price.suggested","",null,null,null,null,null,null,null,null,null,null,null));} %></span> <span class="text-nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:SinglePrice"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</td>
<td align="right">
<span class="text-nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:OriginTotalPrice"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span></br>
<span class="text-nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:TotalPrice"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</td> 
</tr><% } %><% } %><tr>
<td align="right" colspan="4">
<span class="text-nowrap"><% {out.write(localizeISText("email.quote.update.items.total","",null,null,null,null,null,null,null,null,null,null,null));} %></span> <span class="text-nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("QuoteBO:Total"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
</td>
</tr>
</table>
</td>
</tr>
</table>
<p><% {out.write(localizeISText("email.questions",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue("systempage.helpdesk.index.pagelet2-Page",null)))),null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("email.best_regards.label","",null,null,null,null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText("email.user_services.label",null,null,encodeString(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewHomepage-Start",null)))),null)),encodeString(context.getFormattedValue(getObject("ChannelName"),null)),null,null,null,null,null,null,null,null));} %></p><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"email/mailTemplate/MailFooter", null, "109");} %><% printFooter(out); %>