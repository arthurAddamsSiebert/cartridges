/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.attributegroup;

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

public final class ProductAttributeGroupTabs_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Tabs -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tr>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupTabs.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupTabs.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ProductAttributeGroupTabs", null, "9");} 
      out.write("<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tr>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupTabs.General.table_tabs_en_background1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ProductAttributeGroupTabs.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ProductAttributeGroupTabs", null, "19");} 
      out.write("<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w100\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\"><a class=\"table_tabs_dis\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ProductAttributeGroupTabs.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupTabs.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ProductAttributeGroupTabs", null, "28");} 
      out.write("<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>");
 } 
 } 
      out.write("<!-- EO Tabs -->");
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
