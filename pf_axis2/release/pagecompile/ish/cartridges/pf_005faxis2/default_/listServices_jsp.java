/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:11:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.pf_005faxis2.default_;

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
import org.apache.axis2.Constants;
import org.apache.axis2.description.AxisOperation;
import org.apache.axis2.description.AxisService;
import org.apache.axis2.description.Parameter;
import org.apache.axis2.engine.AxisConfiguration;
import org.apache.axis2.util.JavaUtils;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;

public final class listServices_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
setEncodingType("text/html"); 
      out.write("\n\n\n\n\n\n\n\n\n\n\n\n<html>\n<head>");
 insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); 
      out.write("<title>");
 {out.write(localizeISText("templates.listServices.ListServices.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n</head>\n\n<body>\n<h1>");
 {out.write(localizeISText("templates.listServices.AvailableServices","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>\n");

    HashMap serviceMap = (HashMap) getRequest().getSession().getObject(Constants.SERVICE_MAP);
    getRequest().getSession().removeObject(Constants.SERVICE_MAP);
    Hashtable errornessservice = (Hashtable) getRequest().getSession().getObject(Constants.ERROR_SERVICE_MAP);
    boolean status = false;
    if (serviceMap != null && !serviceMap.isEmpty()) {
        Iterator opItr;
        //HashMap operations;
        String serviceName;
        Collection servicecol = serviceMap.values();
        // Collection operationsList;
        for (Iterator iterator = servicecol.iterator(); iterator.hasNext();) {
            AxisService axisService = (AxisService) iterator.next();
            opItr = axisService.getOperations();
            //operationsList = operations.values();
            serviceName = axisService.getName();

      out.write("<h2><font color=\"blue\"><a href=\"");
      out.print(axisService.getName());
      out.write("?wsdl\">");
      out.print(serviceName);
      out.write("</a></font></h2>\n<font color=\"blue\">");
 {out.write(localizeISText("templates.listServices.ServiceEPR","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </font><font color=\"black\">");
      out.print(axisService.getName());
      out.write("</font><br>\n");

    boolean disableREST = false;
    AxisConfiguration axisConfiguration = axisService.getAxisConfiguration();
    Parameter parameter;
    // do we need to completely disable REST support
    parameter = axisConfiguration.getParameter(Constants.Configuration.DISABLE_REST);
    if (parameter != null) {
        disableREST = !JavaUtils.isFalseExplicitly(parameter.getValue());
    }
    if (!disableREST ) {

      out.write('\n');

    }

    String serviceDescription = axisService.getDocumentation();
    if (serviceDescription == null || "".equals(serviceDescription)) {
        serviceDescription = "No description available for this service";
    }

      out.write("\n<h4>");
 {out.write(localizeISText("templates.listServices.ServiceDescription","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <font color=\"black\">");
      out.print(serviceDescription);
      out.write("</font></h4>\n<i><font color=\"blue\">");
 {out.write(localizeISText("templates.listServices.ServiceStatus","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.print(axisService.isActive() ? "Active" : "InActive");
      out.write("</font></i><br>\n");

    if (opItr.hasNext()) {

      out.write('<');
      out.write('i');
      out.write('>');
 {out.write(localizeISText("templates.listServices.AvailableOperations","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</i>");

} else {

      out.write("<i> ");
 {out.write(localizeISText("templates.listServices.ThereAreNoOperationsSpecified","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</i>");

    }
    opItr = axisService.getOperations();

      out.write("<ul>");

    while (opItr.hasNext()) {
        AxisOperation axisOperation = (AxisOperation) opItr.next();

      out.write("<li>");
      out.print(axisOperation.getName().getLocalPart());
      out.write("</li>\n    ");
      out.write("\n    ");

        }
    
      out.write("</ul>\n");

            status = true;
        }
    }
    if (errornessservice != null) {
        if (errornessservice.size() > 0) {
            getRequest().getSession().putObject(Constants.IS_FAULTY, Constants.IS_FAULTY);

      out.write("\n<hr>\n\n<h3><font color=\"blue\">Faulty Services</font></h3>\n");

    Enumeration faultyservices = errornessservice.keys();
    while (faultyservices.hasMoreElements()) {
        String faultyserviceName = (String) faultyservices.nextElement();

      out.write("<h3><font color=\"blue\"><a href=\"ListFaultyServices?serviceName=");
      out.print(faultyserviceName);
      out.write("\">\n    ");
      out.print(faultyserviceName);
      out.write("</a></font></h3>\n");

            }
            
	        status = true;
        }
    }
    if (!status) {

      out.write(" No services available for this site! ");

    }

      out.write("\n</body>\n</html>");
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