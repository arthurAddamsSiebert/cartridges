<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="com.intershop.component.shipping.capi.shippingrule.*,
				com.intershop.component.shipping.internal.shippingrule.*,
				java.util.*"%>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "7");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<% context.setCustomTagTemplateName("shippingcondition","inc/ShippingCondition",false,new String[]{"shippingcondition"},null); %>
	
 <shipping-condition>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingcondition:ParentCondition")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingcondition:ParentCondition"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
		<position><% {String value = null;try{value=context.getFormattedValue(getObject("shippingcondition:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></position>
	<% } %>
	<condition-descriptor-id><% {String value = null;try{value=context.getFormattedValue(getObject("shippingcondition:ConditionDescriptorID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></condition-descriptor-id>
	<operator><% {String value = null;try{value=context.getFormattedValue(getObject("shippingcondition:Operator"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></operator>
	<grouping><% {String value = null;try{value=context.getFormattedValue(getObject("shippingcondition:GroupingOperator"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></grouping>
	<%
			ShippingConditionPO shippingConditionObj = (ShippingConditionPO) getObject("shippingcondition");
			getPipelineDictionary().put("shippingConditionCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(shippingConditionObj.createCustomAttributesIterator(), shippingConditionObj));
	%>
	<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("shippingConditionCustomAttributes"))}, 25); %>
	<%
		Iterator conditionsItr=shippingConditionObj.getSortedSubConditions().iterator();
		if(conditionsItr.hasNext())
        {
            while(conditionsItr.hasNext())
            {
                ShippingConditionPO shippingSubCondition=(ShippingConditionPO)conditionsItr.next();
                getPipelineDictionary().put("ShippingSubCondition", shippingSubCondition);
				%>
				<% processOpenTag(response, pageContext, "shippingcondition", new TagParameter[] {
new TagParameter("shippingcondition",getObject("ShippingSubCondition"))}, 35); %>
				<%
            }
        }
	
	%>
</shipping-condition>
	
		
	
	
	
	
<% printFooter(out); %>