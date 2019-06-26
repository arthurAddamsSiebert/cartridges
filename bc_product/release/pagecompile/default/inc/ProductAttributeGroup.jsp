<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>



<% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@ page import = "com.intershop.component.foundation.internal.attributegroup.AttributeDescriptorPO"%>
<%@ page import = "com.intershop.component.foundation.internal.attributegroup.AttributeDescriptorPOAttributeValuePO"%>
<%@ page import = "com.intershop.component.foundation.internal.attributegroup.AttributeGroupPO"%>
<%@ page import = "java.util.Iterator,com.intershop.beehive.core.capi.domain.AttributeValue" %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("productattributegroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>

    <product-attribute-group id="<% {String value = null;try{value=context.getFormattedValue(getObject("productattributegroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" domain-name="<% {String value = null;try{value=context.getFormattedValue(getObject("productattributegroup:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">

        <fixed-flag><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("productattributegroup:Fixed"),null)),null)%></fixed-flag>
        <type-code><%=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("productattributegroup:TypeCode"),null)),null)%></type-code>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("productattributegroup:AvailableViaREST"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
        	<available-via-rest><% {String value = null;try{value=context.getFormattedValue(getObject("productattributegroup:AvailableViaREST"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></available-via-rest>
        <% } else { %>
        	<available-via-rest>false</available-via-rest>
        <% } %>
        
        <% while (loop("productattributegroup:createAttributeValuePOsIterator","av",null)) { %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("av:StringValue"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("av:StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><display-name <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name><% } %>
        <% } %>
        <% while (loop("productattributegroup:createAttributeValuePOsIterator","av",null)) { %>
            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("description",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("av:StringValue"),null).equals(context.getFormattedValue(getObject("NULL"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("av:StringValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><description <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>xml:lang="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null)%>"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description><% } %>
        <% } %>
        <attribute-descriptors>
        	<% while (loop("productattributegroup:AttributeDescriptorPOs","attributeDescriptor",null)) { %>
        		<attribute-descriptor id="<% {String value = null;try{value=context.getFormattedValue(getObject("attributeDescriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value,"xml");out.write(value);} %>">
        		<position><% {String value = null;try{value=context.getFormattedValue(getObject("attributeDescriptor:Position"),"#0.0#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></position>
        		<% while (loop("attributeDescriptor:createAttributeValuePOsIterator","av",null)) { %>
        			<%
	        			AttributeDescriptorPOAttributeValuePO av = (AttributeDescriptorPOAttributeValuePO) getObject("av");
		        		if (av.getName().equalsIgnoreCase("displayName") && !av.getStringValueNull() && !av.getStringValue().isEmpty())
		                {
        			%>
        			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:Localized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
        				<display-name xml:lang="<% {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("av:StringValue"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></display-name>
        			<% } %>
        			<% 
	                	}
        			%>
        		<% } %>
        		</attribute-descriptor>
        	<% } %>
        </attribute-descriptors>
        
    </product-attribute-group>
<% } %>
<% printFooter(out); %>