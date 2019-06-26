<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<?xml version="1.0" encoding="UTF-8"?>
<%@page import="com.intershop.beehive.core.capi.domain.*,
	com.intershop.component.region.capi.geoobject.*,
	com.intershop.beehive.foundation.util.*,
	java.util.*" %>
	
<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "8");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
	
	
<enfinity 
	xmlns="http://www.intershop.com/xml/ns/enfinity/6.5/bc_region/impex" 
	xmlns:dt="http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt" 
	xmlns:xml="http://www.w3.org/XML/1998/namespace" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xsi:schemaLocation="http://www.intershop.com/xml/ns/enfinity/6.5/bc_region/impex bc_region.xsd ">

	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AllCountries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>
		<%
			Iterator countriesItr = (Iterator)getObject("AllCountries");
						
			if(countriesItr.hasNext())
			{
				while (countriesItr.hasNext())
				{
					Country country = (Country)countriesItr.next();
					getPipelineDictionary().put("country", country);
					getPipelineDictionary().put("countryCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(country.createCustomAttributesIterator(), country));
					%>
					<country>
					<id><% {String value = null;try{value=context.getFormattedValue(getObject("country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
					<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("countryCustomAttributes"))}, 35); %>
					</country>
					<%
				}
			}
		%>
	<% } %>
	
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StatesProvinces"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
		<%
			Iterator statesProvincesItr = (Iterator)getObject("StatesProvinces");
						
			if(statesProvincesItr.hasNext())
			{
				while (statesProvincesItr.hasNext())
				{
					StateProvince stateProvince = (StateProvince)statesProvincesItr.next();
					getPipelineDictionary().put("stateProvince", stateProvince);
					getPipelineDictionary().put("stateProvinceCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(stateProvince.createCustomAttributesIterator(), stateProvince));
					%>
					<state-province>
					<id><% {String value = null;try{value=context.getFormattedValue(getObject("stateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
					<country-id><% {String value = null;try{value=context.getFormattedValue(getObject("stateProvince:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></country-id>
					<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("stateProvinceCustomAttributes"))}, 58); %>
					</state-province>
					<%
				}
			}
		%>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Locations"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
		<%
			Iterator locationsItr = (Iterator)getObject("Locations");
						
			if(locationsItr.hasNext())
			{
				while (locationsItr.hasNext())
				{
					Location location = (Location)locationsItr.next();
					getPipelineDictionary().put("location", location);
					getPipelineDictionary().put("locationCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(location.createCustomAttributesIterator(), location));
					%>
					<location>
					<id><% {String value = null;try{value=context.getFormattedValue(getObject("location:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
					<postal-code><% {String value = null;try{value=context.getFormattedValue(getObject("location:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></postal-code>
					<state-province-id><% {String value = null;try{value=context.getFormattedValue(getObject("location:StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></state-province-id>
					<country-id><% {String value = null;try{value=context.getFormattedValue(getObject("location:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></country-id>
					<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("locationCustomAttributes"))}, 82); %>
					</location>		
					<%
				}
			}
		%>
	<% } %>
	
	
	
	
	
</enfinity><% printFooter(out); %>