/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fbmecat.default_.inc;

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

public final class CatalogStructure_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Category:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
      out.write("\t\n\t<CATALOG_STRUCTURE type=\"root\">\n\t\t<GROUP_ID>1</GROUP_ID>\n\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:DisplayName"),
new TagParameter("localized","true"),
new TagParameter("element","GROUP_NAME")}, 5); 
      out.write("\n\t\t<PARENT_ID>0</PARENT_ID>\n\t</CATALOG_STRUCTURE>\t\n");
 } else { 
      out.write('\n');
      out.write('	');
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Category:Parent")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("Category:Parent:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("\n\t<CATALOG_STRUCTURE type=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Category:SubCategoriesCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("leaf");
 } else { 
      out.write("node");
 } 
      out.write("\">\n\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:Name"),
new TagParameter("localized","false"),
new TagParameter("element","GROUP_ID")}, 15); 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category:DisplayName(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:DisplayName"),
new TagParameter("localized","true"),
new TagParameter("element","GROUP_NAME")}, 17); 
      out.write('\n');
      out.write('	');
      out.write('	');
 } else { 
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:Name"),
new TagParameter("localized","false"),
new TagParameter("element","GROUP_NAME")}, 19); 
      out.write("\n\t\t\t");

			  Logger.warn(this, "Category:DisplayName is null. Used Category:Name instead.");
			 
      out.write("\t\t\t\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Category:Parent:isRootCategory"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<PARENT_ID>1</PARENT_ID>\n\t\t");
 } else { 
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Category:Parent:Name"),
new TagParameter("localized","false"),
new TagParameter("element","PARENT_ID")}, 27); 
      out.write("\t\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("objectpath","Category:Position"),
new TagParameter("localized","false"),
new TagParameter("optional","true"),
new TagParameter("style","integer"),
new TagParameter("element","GROUP_ORDER")}, 29); 
      out.write("\n\t</CATALOG_STRUCTURE>\n\t");
 } 
      out.write('\n');
 } 
      out.write('\n');
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
