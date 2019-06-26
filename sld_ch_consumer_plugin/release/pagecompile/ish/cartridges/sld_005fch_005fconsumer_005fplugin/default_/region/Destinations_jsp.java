/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.region;

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

public final class Destinations_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

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
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
      out.write("<!-- TEMPLATENAME: region/Destinations.isml -->\n");
 
setEncodingType("text/html"); 
      out.write("\n<tr>\n\t<td colspan=\"2\">\n\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_title2 s n\">");
 {out.write(localizeISText("Destinations.Include.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t</tr>\n\t\t</table>\n\t</td>\n</tr>\n<tr>\n\t<td>\n\t\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n\t\t\t<tr>\n\t\t\t\t<td colspan=\"2\">\n\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t\t\t\t\t");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Region"),
new TagParameter("key2","Locale"),
new TagParameter("key0","Domain"),
new TagParameter("value2",getObject("CurrentRequest:Locale")),
new TagParameter("value1",getObject("Region")),
new TagParameter("value0",getObject("RegionRepository:GeoObjectsDomain")),
new TagParameter("mapname","RegionParams")}, 18); 
      out.write("\n\t\t\t\t\t\t");
 {try{executePipeline("ProcessRegion-GetCountriesByRegion",((java.util.Map)(getObject("RegionParams"))),"CountriesDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 22.",e);}} 
      out.write("\n\t\t\t\t\t\t");
 {try{executePipeline("ProcessRegion-GetStatesProvincesByRegion",((java.util.Map)(getObject("RegionParams"))),"StatesProvincesDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 23.",e);}} 
      out.write("\n\t\t\t\t\t\t");
 {try{executePipeline("ProcessRegion-GetLocationsByRegion",((java.util.Map)(getObject("RegionParams"))),"LocationsDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} 
      out.write("  \n\t\t\t\t\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/CountryList", null, "28");} 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/StateProvinceList", null, "29");} 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/LocationList", null, "30");} 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t</table>\n\t</td>\n</tr>\n");
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
