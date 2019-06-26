<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("AddPromotionCondition.AddCondition.text",null)))}, 4); %>

<!-- Main Content -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td width="100%" class="table_title aldi"><% {out.write(localizeISText("AddPromotionCondition.AddCondition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<tr>
		<td width="100%" class="table_title_description e w s"><% {out.write(localizeISText("AddPromotionCondition.AddAConditionToTriggerThePromotion.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	
	<!-- errors -->
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ERROR_ConditionDescritorID"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
						<td class="error top" width="100%">
							<b><% {out.write(localizeISText("AddPromotionCondition.YouNeedToSelectAnOptionFromTheListBelow.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
</table>

<% URLPipelineAction action263 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDetails-AddCondition",null)))),null));String site263 = null;String serverGroup263 = null;String actionValue263 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDetails-AddCondition",null)))),null);if (site263 == null){  site263 = action263.getDomain();  if (site263 == null)  {      site263 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup263 == null){  serverGroup263 = action263.getServerGroup();  if (serverGroup263 == null)  {      serverGroup263 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("GET");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDetails-AddCondition",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue263, site263, serverGroup263,false)); %>

	<input type="hidden" name="PromotionUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="ChannelID",  value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="TargetConditionID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TargetConditionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<input type="hidden" name="OperatorDescriptorID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("OperatorDescriptorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	
	<table border="0" cellpadding="10" cellspacing="0" width="100%">	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConditionDescriptors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionDescriptors") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>
			
			<tr><td class="fielditem2 w e"><% {out.write(localizeISText("AddPromotionCondition.OrderConditions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
			<% while (loop("ConditionDescriptors","descriptor",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("descriptor:Type"),null).equals(context.getFormattedValue("Order",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
					<tr>
						<td class="table_detail w e">
							&nbsp;&nbsp;&nbsp;
							<input type="radio"  name="ConditionDescriptorID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</input>
						</td>
					</tr>
				<% } %>
			<% } %>

			<tr><td class="fielditem2 w e"><% {out.write(localizeISText("AddPromotionCondition.ItemConditions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
			<% while (loop("ConditionDescriptors","descriptor",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("descriptor:Type"),null).equals(context.getFormattedValue("Item",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
					<tr>
						<td class="table_detail w e">
							&nbsp;&nbsp;&nbsp;
							<input type="radio"  name="ConditionDescriptorID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</input>
						</td>
					</tr>
				<% } %>
			<% } %>
			
			<tr><td class="fielditem2 w e"><% {out.write(localizeISText("AddPromotionCondition.ShippingConditions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
			<% while (loop("ConditionDescriptors","descriptor",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("descriptor:Type"),null).equals(context.getFormattedValue("Shipping",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
					<tr>
						<td class="table_detail w e">
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="ConditionDescriptorID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</input>
						</td>
					</tr>
				<% } %>
			<% } %>

			<tr><td class="fielditem2 w e"><% {out.write(localizeISText("AddPromotionCondition.PaymentConditions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
			<% while (loop("ConditionDescriptors","descriptor",null)) { %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("descriptor:Type"),null).equals(context.getFormattedValue("Payment",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
					<tr>
						<td class="table_detail w e">
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="ConditionDescriptorID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
								<% {String value = null;try{value=context.getFormattedValue(getObject("descriptor:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</input>
						</td>
					</tr>
				<% } %>
			<% } %>

			<tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>

			<tr>
				<td class="w e s n" align="right">
					<table cellpadding="0" cellspacing="4" border="0">
						<tr>
							<td class="button"><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AddPromotionCondition.Apply.button",null)),null)%>" class="button"/></td>
							<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AddPromotionCondition.Cancel.button",null)),null)%>" class="button"/></td>
						</tr>
					</table>
				</td>
			</tr>
			
		<% } %>
	<% } else { %>
		<tr><td class="table_detail w e"><% {out.write(localizeISText("AddPromotionCondition.ThereAreNoConditionsDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
	<% } %>
	</table>
	
<% out.print("</form>"); %><% printFooter(out); %>