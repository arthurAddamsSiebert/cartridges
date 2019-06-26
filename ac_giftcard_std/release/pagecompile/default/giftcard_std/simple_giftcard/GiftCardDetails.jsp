<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td class="table_title w e s"><% {out.write(localizeISText("GiftCardDetails.GiftCard.table_title","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Number"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<!-- delete confirmation-->
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("delete")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("allowDelete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","giftcard"),
new TagParameter("okbtnname","deleteConfirm"),
new TagParameter("type","sdc"),
new TagParameter("class","w e s")}, 7); %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("allowDelete")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("delete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
<tr>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">	
		<tr>
			<td colspan="3">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="confirm_box s">
					<tr>
						<td class=""><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error" width="100%"><% {out.write(localizeISText("GiftCardDetails.EnabledGiftCertificatesCannotBeDeleted.error","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
					</tr>	
				</table>
			</td>
		</tr>
	</table>
</tr>
<% } %>
<tr>
	<td class="table_title_description w e s"><% {out.write(localizeISText("GiftCardDetails.ViewDetailsOfThisGiftCardEnableDisableTh.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>

<tr>
	<td>
		<table border="0" cellspacing="0" cellpadding="0" width="100%" class="form_bg w e s">
			<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" /></td></tr>
			<tr>
				<td class="fielditem" width="15%" nowrap="nowrap">
					<input type="hidden" name="GiftCardID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<input type="hidden" name="GiftCardCode" value="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
					<% {out.write(localizeISText("GiftCardDetails.InitialValue.input","",null,null,null,null,null,null,null,null,null,null,null));} %>
				</td>
				<td class="table_detail" width="30%"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:StartAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td width="10%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td class="table_detail">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCardDetailsForm:GiftCard_Enabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
										<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardDetailsForm:GiftCard_Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked" />
									<% } else { %>
										<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardDetailsForm:GiftCard_Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked" disabled="disabled" />
									<% } %>
								<% } else { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
										<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardDetailsForm:GiftCard_Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("GiftCardDetailsForm:GiftCard_Enabled:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled" />
									<% } %>
								<% } %>
							</td>
							<td class="fielditem" valign="middle"><% {out.write(localizeISText("GiftCardDetails.Enabled.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.RemainingValue.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Amount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.Currency.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:StartAmount:CurrencyMnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.RedemptionStatus.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("REDEEMED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("GiftCardDetails.Redeemed.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Status"),null).equals(context.getFormattedValue("PENDING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("GiftCardDetails.Pending.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } else { %>
					    <% {out.write(localizeISText("GiftCardDetails.PartiallyRedeemed.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% }} %>				
				</td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.Created.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("GiftCard:CreationDate"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("GiftCard:CreationDate"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.Type.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail">
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("GiftCardDetails.Digital.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("PHYSICAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>
						<% {out.write(localizeISText("GiftCardDetails.Physical.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} %>
					<% } %>					
				</td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>							
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("GiftCard:Type"),null).equals(context.getFormattedValue("DIGITAL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %>	
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.SenderName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:SenderName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.SenderEMail.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:SenderEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>				
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.RecipientName.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:RecipientName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.RecipientEMail.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:RecipientEmail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="fielditem" width="130" nowrap="nowrap"><% {out.write(localizeISText("GiftCardDetails.GreetingMessage.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("GiftCard:Greeting"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
				<td>&nbsp;</td>
			</tr>
			<% } %>
			<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" /></td></tr>
		</table>
	</td>
</tr><% printFooter(out); %>