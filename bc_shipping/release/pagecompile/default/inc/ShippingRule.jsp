<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="com.intershop.component.shipping.capi.shippingrule.*"%>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "5");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<% context.setCustomTagTemplateName("shippingcondition","inc/ShippingCondition",false,new String[]{"shippingcondition"},null); %>
<%
	ShippingRule shippingRuleObj = (ShippingRule) getObject("shippingrule");
	
%>	
	
 <shipping-rule>
      <id><% {String value = null;try{value=context.getFormattedValue(getObject("shippingrule:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
      <active><% {String value = null;try{value=context.getFormattedValue(getObject("shippingrule:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></active>
      <%
            getPipelineDictionary().put("shippingRuleCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(shippingRuleObj.createCustomAttributesIterator(), shippingRuleObj));
	   %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("shippingRuleCustomAttributes"))}, 21); %>	 
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingrule:Condition")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingrule:Condition"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>		
			<% processOpenTag(response, pageContext, "shippingcondition", new TagParameter[] {
new TagParameter("shippingcondition",getObject("shippingrule:Condition"))}, 24); %>
		<% } %>
		
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingrule:getAction")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingrule:getAction"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
		<shipping-action>
			<type><% {String value = null;try{value=context.getFormattedValue(getObject("shippingrule:getAction:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></type>
			<%
			ShippingAction shippingActionObj = shippingRuleObj.getAction();
            getPipelineDictionary().put("shippingActionCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(shippingActionObj.createCustomAttributesIterator(), shippingActionObj));
			%>
			<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("shippingActionCustomAttributes"))}, 34); %>	
		</shipping-action>
		<% } %>
</shipping-rule>
	
		
	
	
	
	
<% printFooter(out); %>