/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:10:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005ffoundation.default_;

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
import com.intershop.beehive.core.capi.pipeline.PipelineDictionary;

public final class LinkCSVConvert_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n<!-- generated by the ASCIIConvert pipelet using LinkCSVConvert.isml - DO NOT EDIT!-->\n<enfinity \n\txsi:schemaLocation=\"http://www.intershop.com/xml/ns/enfinity/6.3/bc_foundation/impex bc_foundation.xsd\"\n\txmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n\txmlns=\"http://www.intershop.com/xml/ns/enfinity/6.3/bc_foundation/impex\" \n\txmlns:xml=\"http://www.w3.org/XML/1998/namespace\" \n\txmlns:dt=\"http://www.intershop.com/xml/ns/enfinity/6.5/core/impex-dt\" \n>\n");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "11");} 
      out.write('\n');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\n    ");
 while (loop("data",null,null)) { 
      out.write("\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:ShortURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<link ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:Enabled"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("data:Enabled"),null).equals(context.getFormattedValue("TRUE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Enabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Enabled"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Enabled"),null).equals(context.getFormattedValue("YES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Enabled"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("enabled=\"true\"");
 } else { 
      out.write("enabled=\"false\"");
 } 
 } else { 
      out.write("enabled=\"true\"");
 } 
      out.write(" \n\t\t\t\t      ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:Default"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("data:Default"),null).equals(context.getFormattedValue("TRUE",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Default"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Default"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Default"),null).equals(context.getFormattedValue("YES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("data:Default"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("default=\"true\"");
 } else { 
      out.write("default=\"false\"");
 } 
 } else { 
 } 
      out.write(" \n\t\t\t\t      ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("data:StatusCode")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("data:StatusCode"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("data:StatusCode"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("status-code=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("data:StatusCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
 } 
      out.write(" \n\t\t\t\t>\n\t\t\t\t\t<short-url>");
 {String value = null;try{value=context.getFormattedValue(getObject("data:ShortURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</short-url>\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:TargetURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<target-url>");
 {String value = null;try{value=context.getFormattedValue(getObject("data:TargetURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</target-url>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:ValidFrom"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<valid-from>");
 processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("data:ValidFrom"))}, 24); 
      out.write("</valid-from>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:ValidTo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<valid-to>");
 processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("data:ValidTo"))}, 27); 
      out.write("</valid-to>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:Description"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<description>");
 {String value = null;try{value=context.getFormattedValue(getObject("data:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</description>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("data:LinkGroupIDs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t ");
 {Object temp_obj = (getObject("data:LinkGroupIDs")); getPipelineDictionary().put("LinkGroupIDs", temp_obj);} 
      out.write("\n\t\t\t\t\t <link-groups>\n\t\t\t\t\t\t");
 
							PipelineDictionary dict = getPipelineDictionary();
							String linkGroupIDs = dict.get("LinkGroupIDs");

							for(String linkGroupID : linkGroupIDs.split("\\|"))
							{
								dict.put("LinkGroupID", linkGroupID);
						
      out.write("\n\t\t\t\t\t\t<link-group id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LinkGroupID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t\t");

							}
						
      out.write("\n\t\t\t\t\t </link-groups>\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t</link>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n</enfinity>");
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