<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {Object temp_obj = (getObject("GiftCardsResult:get(\"GiftCardDTOs\")")); getPipelineDictionary().put("GiftCards", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GiftCards") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<div class="list-header">
		<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.gift_certificate.giftcards.txt","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
		<div class="list-header-item col-sm-3"><% {out.write(localizeISText("account.gift_certificate.giftcards.receivedon","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
		<div class="list-header-item col-sm-2 text-right"><% {out.write(localizeISText("account.gift_certificate.giftcards.amount","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
		<div class="list-header-item col-sm-3 text-center"><% {out.write(localizeISText("account.gift_certificate.giftcards.amountremaining","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
		<div class="list-header-item col-sm-2"><% {out.write(localizeISText("account.gift_certificate.giftcards.status.txt","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
	</div>
	<div class="list-body">
		
		<% while (loop("GiftCards","GiftCard",null)) { %>
			<div class="list-item-row">
				
				<div class="col-xs-6 col-sm-2 list-item">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.type.digital","",null,null,null,null,null,null,null,null,null,null,null));} %><br />
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("PHYSICAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.type.physical","",null,null,null,null,null,null,null,null,null,null,null));} %><br />
					<% } else { %>
						<% {out.write(localizeISText("account.gift_certificate.type.unknown","",null,null,null,null,null,null,null,null,null,null,null));} %><br />
					<% }} %>	
					<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Number"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</div>
				
				
				<div class="col-xs-3 col-sm-2 text-right col-sm-push-3 list-item">
					<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:StartAmount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</div>
				
				
				<div class="col-xs-3 col-sm-2 col-sm-push-6 list-item">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("REDEEMED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.status.redeemed","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("PENDING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.status.pending","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
						<% {out.write(localizeISText("account.gift_certificate.status.partially_redeemed","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% }} %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("GiftCard:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %>
						<br/>
					<% {out.write(localizeISText("account.gift_certificate.disabled","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
				</div>
				
				
				<div class="clearfix visible-xs-block"></div>
				<div class="col-sm-3 col-sm-pull-4 list-item">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("account.gift_certificate.giftcards.from.label","",null,null,null,null,null,null,null,null,null,null,null));} %> 
						<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:SenderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:SenderEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br />
					<% } %>
					<% {out.write(localizeISText("account.gift_certificate.giftcards.on.label","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:CreationDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				</div>
				
				
				<div class="col-sm-3 col-sm-pull-2 text-center list-item">
					<div class="text-left visible-xs">
						<label><% {out.write(localizeISText("account.gift_certificate.giftcards.amountremaining","",null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
						<span class="label label-info"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Amount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>
					</div>
					<div class="hidden-xs label label-info"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Amount"),new Integer(MONEY_LONG),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
				</div>
				
				<div class="list-item"></div>
			</div>
		<% } %>
	</div>
<% } else { %>
	<p><% {out.write(localizeISText("account.gift_certificate.notused","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
<% } %><% printFooter(out); %>