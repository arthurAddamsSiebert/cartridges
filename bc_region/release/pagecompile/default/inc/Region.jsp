<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="java.util.*,
	com.intershop.component.region.capi.geoobject.*,
	com.intershop.component.region.capi.region.RegionRepository,
	com.intershop.component.region.internal.region.RegionRepositoryImpl,
	com.intershop.component.region.capi.region.*"%>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "9");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<%
	Region regionObj = (Region) getObject("region");
	RegionRepository repository=repository = new RegionRepositoryImpl();
	repository.setDomain(regionObj.getDomain().getSite());
%>
	
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("regionassign")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("regionassign"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>	
  <region>
      <id><% {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
	  <address-type><% {String value = null;try{value=context.getFormattedValue(getObject("region:AddressType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></address-type>
      <active><% {String value = null;try{value=context.getFormattedValue(getObject("region:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></active>
	  <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("region:DefaultRegion"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><default><% {String value = null;try{value=context.getFormattedValue(getObject("region:DefaultRegion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></default><% } %>
	  <%
            getPipelineDictionary().put("regionCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(regionObj.createCustomAttributesIterator(), regionObj));
	   %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("regionCustomAttributes"))}, 28); %>	
	  <%
		if(regionObj.getExcludedRegions()!=null && !regionObj.getExcludedRegions().isEmpty())
                {
                    %><exclusion><%
					for(Region excludedRegion:(List<Region>)regionObj.getExcludedRegions())
                    {
						 getPipelineDictionary().put("ExcludedRegion",excludedRegion);
					%>
						<region-id><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></region-id>
					<%
					}
					%></exclusion><%
                }
	  %>
  </region>
<% } else { %>			
			<%
			Iterator geoobj=repository.getGeoObjectsByRegion(regionObj).iterator();
                if(geoobj.hasNext())
                {
                    while(geoobj.hasNext())
                    {
						%>
						<region-geo-assignment>
						<%
							GeoObject geoObj= (GeoObject)geoobj.next();
						   if(geoObj instanceof Country)
						   {
							  Country country= (Country)geoObj;
							  getPipelineDictionary().put("country",country);
							  %>
									<region-id><% {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></region-id>
									<country-id><% {String value = null;try{value=context.getFormattedValue(getObject("country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></country-id>
							  <%
						   }
						   if(geoObj instanceof StateProvince) 
						   {
							   StateProvince stateProvince= (StateProvince)geoObj;
							   getPipelineDictionary().put("stateProvince",stateProvince);
							   %>
									<region-id><% {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></region-id>
									<country-id><% {String value = null;try{value=context.getFormattedValue(getObject("stateProvince:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></country-id>
									<state-province-id><% {String value = null;try{value=context.getFormattedValue(getObject("stateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></state-province-id>
							   <%
						   }
						   if(geoObj instanceof Location) 
						   {
							   Location location= (Location)geoObj;
							   getPipelineDictionary().put("location",location);
							   %>
									<region-id><% {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></region-id>
									<country-id><% {String value = null;try{value=context.getFormattedValue(getObject("location:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></country-id>
									<state-province-id><% {String value = null;try{value=context.getFormattedValue(getObject("location:StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></state-province-id>
									<location-id><% {String value = null;try{value=context.getFormattedValue(getObject("location:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></location-id>
							   <%
						   }
						   %>
						</region-geo-assignment>
						<%
					}
                }
				%>
<% } %>
	
		
	
	
	
	
<% printFooter(out); %>