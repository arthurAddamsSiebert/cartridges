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

public final class LocationList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("<!-- TEMPLATENAME: region/LocationList.isml -->\n");
 
setEncodingType("text/html"); 
      out.write("\n\n<td nowrap=\"nowrap\" class=\"top\">\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t<tr><td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("LocationList.Include.PostalCodes_Destinations.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td></tr>\t\n\t\t<tr>\n\t\t\t<td class=\"table_detail\">\t\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("\t\n\t\t\t\t\t<SELECT NAME=\"SelectedLocationUUID\" MULTIPLE SIZE=10\n\t\t\t\t\tstyle=\"width: 300px;\" class=\"dropdown inputfield_en\" >\n\t\t\t\t\t\t ");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocationsDic:Locations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t");
 while (loop("LocationsDic:Locations","Location",null)) { 
      out.write("\n\t\t\t\t\t\t\t\t<OPTION value=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Location:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Location:Country:Id"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Location:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Location:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</OPTION>\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</SELECT>\t\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t<SELECT NAME=\"SelectedLocationUUID\" MULTIPLE SIZE=10\n\t\t\t\t\tstyle=\"width: 300px;\" class=\"dropdown inputfield_en\" disabled=\"disabled\">\n\t\t\t\t\t\t ");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("LocationsDic:Locations") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t");
 while (loop("LocationsDic:Locations","Location",null)) { 
      out.write("\n\t\t\t\t\t\t\t\t<OPTION value=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Location:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Location:Country:Id"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Location:Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Location:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</OPTION>\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</SELECT>\t\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</td>\n\t\t</tr>\t\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("\t\t\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_detail\">\n\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t    <td class=\"button\">\t\n\t\t\t\t\t\t    \t<input type=\"submit\" name=\"manageLocations\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("LocationList.Manage.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t    </td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t");
 } 
      out.write("\t\n\t</table>\n</td>");
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
