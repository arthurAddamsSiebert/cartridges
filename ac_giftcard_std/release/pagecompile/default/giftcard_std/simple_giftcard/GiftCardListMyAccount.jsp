<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {Object temp_obj = (getObject("GiftCardsResult:get(\"GiftCardDTOs\")")); getPipelineDictionary().put("GiftCards", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GiftCards") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<table>
		<tbody>
			
		<tr>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.txt","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.type","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.from","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.receivedon","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.amount","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.amountremaining","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
			<th>
			   <% {out.write(localizeISText("account.gift_certificate.giftcards.status.txt","",null,null,null,null,null,null,null,null,null,null,null));} %>
			</th>
		</tr>
		
		
		<% while (loop("GiftCards","GiftCard",null)) { %>
			<tr>
				<td><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Number"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td class="ish-cellNowrap">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.type.digital","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("PHYSICAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.type.physical","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						<% {out.write(localizeISText("account.gift_certificate.type.unknown","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% }} %>	
				</td>
				<td><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Owner"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td class="ish-cellNowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:CreationDate"),"MMM d, yyyy",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:StartAmount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Amount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("REDEEMED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.status.redeemed","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("PENDING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.status.pending","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						<% {out.write(localizeISText("account.gift_certificate.status.partially_redeemed","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% }} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("GiftCard:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
						<br/>
					<% {out.write(localizeISText("account.gift_certificate.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</td>
			</tr>
		<% } %>
	</tbody>
</table>
<% } else { %>
   <% {out.write(localizeISText("account.gift_certificate.notused","",null,null,null,null,null,null,null,null,null,null,null));} %>
<% } %><% printFooter(out); %>