<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>

<%@page import="java.util.*,
	java.sql.*,
	com.intershop.beehive.core.capi.naming.*,
	com.intershop.beehive.core.capi.environment.ORMMgr,
	com.intershop.component.shipping.internal.shippingeligibility.ShippingEligibilityRepositoryImpl,
	com.intershop.component.shipping.capi.shippingeligibility.ShippingEligibility,
	com.intershop.component.shipping.capi.shippingeligibility.ShippingEligibilityAssignment,
	com.intershop.component.shipping.capi.freightclass.FreightClass,
	com.intershop.component.shipping.internal.freightclass.*"%>

<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "13");} %>
<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); %>
<%
	ShippingEligibilityRepositoryImpl eligibilityRepository=new ShippingEligibilityRepositoryImpl();
	FreightClass freightClassObj = (FreightClass) getObject("freightclass");
	eligibilityRepository.setSite(freightClassObj.getDomain().getSite());
%>	
	
  <freight-class>
      <id><% {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></id>
	  <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("freightclass:DefaultFreightClass")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("freightclass:DefaultFreightClass"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
	  <default-freight-class><% {String value = null;try{value=context.getFormattedValue(getObject("freightclass:DefaultFreightClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></default-freight-class>
	  <% } %>
      <active><% {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></active>
      <ship-alone><% {String value = null;try{value=context.getFormattedValue(getObject("freightclass:ShipAlone"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></ship-alone>
      <service><% {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Service"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></service>
      <digital><% {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Digital"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></digital>
	  <%
            getPipelineDictionary().put("freightClassCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(freightClassObj.createCustomAttributesIterator(), freightClassObj));
	   %>
        <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("freightClassCustomAttributes"))}, 35); %>	 
		<%
			ShippingEligibility eligibility=eligibilityRepository.getEligibilityByFreightClass(freightClassObj);
			if(eligibility!=null)
			{
				getPipelineDictionary().put("eligibilityCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(eligibility.createCustomAttributesIterator(), eligibility));
				%><shipping-eligibilities>
				  <% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("eligibilityCustomAttributes"))}, 42); %>	
				<%
					Iterator eligibilityAssignItr=eligibility.createAssignmentIterator();
					if(eligibilityAssignItr!= null && eligibilityAssignItr.hasNext())
					{
						while(eligibilityAssignItr.hasNext())
						{
							ShippingEligibilityAssignment eligibilityAssign=(ShippingEligibilityAssignment)eligibilityAssignItr.next();
							 getPipelineDictionary().put("eligibilityAssign", eligibilityAssign);
							%>
								<shipping-eligibility>
									<shipping-method-id><% {String value = null;try{value=context.getFormattedValue(getObject("eligibilityAssign:ShippingMethodID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></shipping-method-id>
									<region-id><% {String value = null;try{value=context.getFormattedValue(getObject("eligibilityAssign:RegionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></region-id> 
									<%
										getPipelineDictionary().put("eligibilityAssignCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(eligibilityAssign.createCustomAttributesIterator(), eligibilityAssign));
									%>
									<% processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("eligibilityAssignCustomAttributes"))}, 58); %>	
								</shipping-eligibility>
								
							<%
						}
					}
				%></shipping-eligibilities><%
			}
		%>
  </freight-class>
	
		
	
	
	
	
<% printFooter(out); %>