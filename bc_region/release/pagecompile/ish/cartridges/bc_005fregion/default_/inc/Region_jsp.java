/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:10:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fregion.default_.inc;

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
import com.intershop.component.region.capi.geoobject.*;
import com.intershop.component.region.capi.region.RegionRepository;
import com.intershop.component.region.internal.region.RegionRepositoryImpl;
import com.intershop.component.region.capi.region.*;

public final class Region_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "9");} 
      out.write('\n');
 context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); 
      out.write('\n');

	Region regionObj = (Region) getObject("region");
	RegionRepository repository=repository = new RegionRepositoryImpl();
	repository.setDomain(regionObj.getDomain().getSite());

      out.write('\n');
      out.write('	');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("regionassign")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("regionassign"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("\t\n  <region>\n      <id>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</id>\n\t  <address-type>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:AddressType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</address-type>\n      <active>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</active>\n\t  ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("region:DefaultRegion"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<default>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:DefaultRegion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</default>");
 } 
      out.write("\n\t  ");

            getPipelineDictionary().put("regionCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(regionObj.createCustomAttributesIterator(), regionObj));
	   
      out.write("\n        ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("regionCustomAttributes"))}, 28); 
      out.write("\t\n\t  ");

		if(regionObj.getExcludedRegions()!=null && !regionObj.getExcludedRegions().isEmpty())
                {
                    
      out.write("<exclusion>");

					for(Region excludedRegion:(List<Region>)regionObj.getExcludedRegions())
                    {
						 getPipelineDictionary().put("ExcludedRegion",excludedRegion);
					
      out.write("\n\t\t\t\t\t\t<region-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</region-id>\n\t\t\t\t\t");

					}
					
      out.write("</exclusion>");

                }
	  
      out.write("\n  </region>\n");
 } else { 
      out.write("\t\t\t\n\t\t\t");

			Iterator geoobj=repository.getGeoObjectsByRegion(regionObj).iterator();
                if(geoobj.hasNext())
                {
                    while(geoobj.hasNext())
                    {
						
      out.write("\n\t\t\t\t\t\t<region-geo-assignment>\n\t\t\t\t\t\t");

							GeoObject geoObj= (GeoObject)geoobj.next();
						   if(geoObj instanceof Country)
						   {
							  Country country= (Country)geoObj;
							  getPipelineDictionary().put("country",country);
							  
      out.write("\n\t\t\t\t\t\t\t\t\t<region-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</region-id>\n\t\t\t\t\t\t\t\t\t<country-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</country-id>\n\t\t\t\t\t\t\t  ");

						   }
						   if(geoObj instanceof StateProvince) 
						   {
							   StateProvince stateProvince= (StateProvince)geoObj;
							   getPipelineDictionary().put("stateProvince",stateProvince);
							   
      out.write("\n\t\t\t\t\t\t\t\t\t<region-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</region-id>\n\t\t\t\t\t\t\t\t\t<country-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("stateProvince:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</country-id>\n\t\t\t\t\t\t\t\t\t<state-province-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("stateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</state-province-id>\n\t\t\t\t\t\t\t   ");

						   }
						   if(geoObj instanceof Location) 
						   {
							   Location location= (Location)geoObj;
							   getPipelineDictionary().put("location",location);
							   
      out.write("\n\t\t\t\t\t\t\t\t\t<region-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("region:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</region-id>\n\t\t\t\t\t\t\t\t\t<country-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("location:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</country-id>\n\t\t\t\t\t\t\t\t\t<state-province-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("location:StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</state-province-id>\n\t\t\t\t\t\t\t\t\t<location-id>");
 {String value = null;try{value=context.getFormattedValue(getObject("location:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</location-id>\n\t\t\t\t\t\t\t   ");

						   }
						   
      out.write("\n\t\t\t\t\t\t</region-geo-assignment>\n\t\t\t\t\t\t");

					}
                }
				
      out.write('\n');
 } 
      out.write("\n\t\n\t\t\n\t\n\t\n\t\n\t\n");
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