/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fshipping.default_.inc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import com.intershop.beehive.core.internal.template.*;
import com.intershop.beehive.core.internal.template.isml.*;
import com.intershop.beehive.core.capi.log.*;
import com.intershop.beehive.core.capi.resource.*;
import com.intershop.beehive.core.capi.util.UUIDMgr;
import com.intershop.beehive.core.capi.util.XMLHelper;
import com.intershop.beehive.foundation.util.*;
import com.intershop.beehive.core.internal.url.*;
import com.intershop.beehive.core.internal.resource.*;
import com.intershop.beehive.core.internal.wsrp.*;
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;
import com.intershop.beehive.core.capi.naming.NamingMgr;
import com.intershop.beehive.core.capi.pagecache.PageCacheMgr;
import com.intershop.beehive.core.capi.request.SessionMgr;
import com.intershop.beehive.core.internal.request.SessionMgrImpl;
import com.intershop.beehive.core.pipelet.PipelineConstants;
import java.util.*;
import java.sql.*;
import com.intershop.beehive.core.capi.naming.*;
import com.intershop.beehive.core.capi.environment.ORMMgr;
import com.intershop.component.shipping.internal.shippingeligibility.ShippingEligibilityRepositoryImpl;
import com.intershop.component.shipping.capi.shippingeligibility.ShippingEligibility;
import com.intershop.component.shipping.capi.shippingeligibility.ShippingEligibilityAssignment;
import com.intershop.component.shipping.capi.freightclass.FreightClass;
import com.intershop.component.shipping.internal.freightclass.*;

public final class FreightClass_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/xml;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 


setEncodingType("text/xml"); 
      out.write("\n\n\n\n");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "13");} 
      out.write('\n');
 context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); 
      out.write('\n');

	ShippingEligibilityRepositoryImpl eligibilityRepository=new ShippingEligibilityRepositoryImpl();
	FreightClass freightClassObj = (FreightClass) getObject("freightclass");
	eligibilityRepository.setSite(freightClassObj.getDomain().getSite());

      out.write("\t\n\t\n  <freight-class>\n      <id>");
 {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</id>\n\t  ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("freightclass:DefaultFreightClass")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("freightclass:DefaultFreightClass"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("\n\t  <default-freight-class>");
 {String value = null;try{value=context.getFormattedValue(getObject("freightclass:DefaultFreightClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</default-freight-class>\n\t  ");
 } 
      out.write("\n      <active>");
 {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</active>\n      <ship-alone>");
 {String value = null;try{value=context.getFormattedValue(getObject("freightclass:ShipAlone"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</ship-alone>\n      <service>");
 {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Service"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</service>\n      <digital>");
 {String value = null;try{value=context.getFormattedValue(getObject("freightclass:Digital"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</digital>\n\t  ");

            getPipelineDictionary().put("freightClassCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(freightClassObj.createCustomAttributesIterator(), freightClassObj));
	   
      out.write("\n        ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("freightClassCustomAttributes"))}, 35); 
      out.write("\t \n\t\t");

			ShippingEligibility eligibility=eligibilityRepository.getEligibilityByFreightClass(freightClassObj);
			if(eligibility!=null)
			{
				getPipelineDictionary().put("eligibilityCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(eligibility.createCustomAttributesIterator(), eligibility));
				
      out.write("<shipping-eligibilities>\n\t\t\t\t  ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("eligibilityCustomAttributes"))}, 42); 
      out.write("\t\n\t\t\t\t");

					Iterator eligibilityAssignItr=eligibility.createAssignmentIterator();
					if(eligibilityAssignItr!= null && eligibilityAssignItr.hasNext())
					{
						while(eligibilityAssignItr.hasNext())
						{
							ShippingEligibilityAssignment eligibilityAssign=(ShippingEligibilityAssignment)eligibilityAssignItr.next();
							 getPipelineDictionary().put("eligibilityAssign", eligibilityAssign);
							
      out.write("\n\t\t\t\t\t\t\t\t<shipping-eligibility>\n\t\t\t\t\t\t\t\t\t<shipping-method-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("eligibilityAssign:ShippingMethodID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</shipping-method-id>\n\t\t\t\t\t\t\t\t\t<region-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("eligibilityAssign:RegionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</region-id> \n\t\t\t\t\t\t\t\t\t");

										getPipelineDictionary().put("eligibilityAssignCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(eligibilityAssign.createCustomAttributesIterator(), eligibilityAssign));
									
      out.write("\n\t\t\t\t\t\t\t\t\t");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("eligibilityAssignCustomAttributes"))}, 58); 
      out.write("\t\n\t\t\t\t\t\t\t\t</shipping-eligibility>\n\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t");

						}
					}
				
      out.write("</shipping-eligibilities>");

			}
		
      out.write("\n  </freight-class>\n\t\n\t\t\n\t\n\t\n\t\n\t\n");
 printFooter(out); 
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
