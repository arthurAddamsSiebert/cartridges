<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<%@page import="com.intershop.beehive.core.capi.naming.*,
	com.intershop.beehive.core.capi.currency.CurrencyMgr,
	com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.shipping_data.capi.shippingmethod.*,
	com.intershop.component.shipping_data.capi.shippingmethod.shippingchargeplan.*,
	com.intershop.component.shipping_data.capi.shippingmethod.shippingchargeplan.bracket.*,
	java.util.*" %>
	
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "10");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<%
	 ShippingMethod shippingMethodObj = (ShippingMethod) getObject("shippingmethod");
%>	
	
  <shipping-method>
      <id><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
      <active><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></active>
      <sequence-number><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:SequenceNumber"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></sequence-number>
	  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingmethod:ShippingTimeMin")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:ShippingTimeMin"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:ShippingTimeMin"),null).equals(context.getFormattedValue("-1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
	      <ship-time-lower><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:ShippingTimeMin"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></ship-time-lower>
	  <% } %>
	  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingmethod:ShippingTimeMax")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:ShippingTimeMax"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:ShippingTimeMax"),null).equals(context.getFormattedValue("-1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>	  
	      <ship-time-upper><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:ShippingTimeMax"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></ship-time-upper>
      <% } %>
      <instruction-support><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:InstructionSupported"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></instruction-support>
      <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingmethod:StartDate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:StartDate"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
		  <start-date><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:StartDate"),"yyyy-MM-dd",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></start-date>
	  <% } %>
	  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingmethod:EndDate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:EndDate"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
	  	  <end-date><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:EndDate"),"yyyy-MM-dd",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></end-date>
	  <% } %>
	  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingmethod:ShippingChargePlan")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingmethod:ShippingChargePlan"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
		  <shipping-charge-plan-type><% {String value = null;try{value=context.getFormattedValue(getObject("shippingmethod:ShippingChargePlan:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></shipping-charge-plan-type>
	  <% } %>
	  <%
            getPipelineDictionary().put("ShippingMethodCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(shippingMethodObj.createCustomAttributesIterator(), shippingMethodObj));
	   %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("ShippingMethodCustomAttributes"))}, 41); %>
		
		<%
		if(shippingMethodObj.getShippingChargePlan()!=null)
		{
			ShippingChargePlan chargePlan=shippingMethodObj.getShippingChargePlan();
			if(chargePlan!=null)
			{
					getPipelineDictionary().put("chargePlan",chargePlan);
					getPipelineDictionary().put("chargePlanCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(chargePlan.createCustomAttributesIterator(), chargePlan));
					%>
						<shipping-charge-plan>
							<id><% {String value = null;try{value=context.getFormattedValue(getObject("chargePlan:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
							<tax-class><% {String value = null;try{value=context.getFormattedValue(getObject("chargePlan:TaxClassCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></tax-class>
							
								<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("chargePlan:Brackets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
									<% while (loop("chargePlan:Brackets","Bracket",null)) { %>
										<bracket>
										<currency><% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></currency>
										<%
											ShippingChargePlanBracket bracket = (ShippingChargePlanBracket) getObject("Bracket");
											getPipelineDictionary().put("bracketCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(bracket.createCustomAttributesIterator(), bracket));
										%>
										<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("bracketCustomAttributes"))}, 64); %>	
										</bracket>
									<% } %>
								<% } %>
							<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("chargePlanCustomAttributes"))}, 68); %>	
						</shipping-charge-plan>
					<%
					if(chargePlan.getType().name() == "FLEXSHIPPING")
					{
				
					%>
						<% while (loop("chargePlan:AssignedShippingChargePlans:KeySet","SelectorID",null)) { %>
							<% {Object temp_obj = (getObject("chargePlan:AssignedShippingChargePlan(SelectorID)")); getPipelineDictionary().put("flexChargePlan", temp_obj);} %>
						<%
							ShippingChargePlan flexChargePlan=(ShippingChargePlan)getObject("flexChargePlan");
							getPipelineDictionary().put("chargePlanCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(flexChargePlan.createCustomAttributesIterator(), flexChargePlan));
						%>
							<shipping-charge-plan>
								<id><% {String value = null;try{value=context.getFormattedValue(getObject("flexChargePlan:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
								<tax-class><% {String value = null;try{value=context.getFormattedValue(getObject("flexChargePlan:TaxClassCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></tax-class>
								
									<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("flexChargePlan:Brackets") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
										<% while (loop("flexChargePlan:Brackets","Bracket",null)) { %>
											<bracket>
											<currency><% {String value = null;try{value=context.getFormattedValue(getObject("Bracket:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></currency>
											<%
												ShippingChargePlanBracket bracket = (ShippingChargePlanBracket) getObject("Bracket");
												getPipelineDictionary().put("bracketCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(bracket.createCustomAttributesIterator(), bracket));
											%>
											<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("bracketCustomAttributes"))}, 93); %>	
											</bracket>
										<% } %>
									<% } %>
								<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("chargePlanCustomAttributes"))}, 97); %>	
							</shipping-charge-plan>
						<% } %>
					<%
				}
			} 
		}		
		%>
</shipping-method>
	
<% printFooter(out); %>