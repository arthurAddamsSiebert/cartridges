/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.impex;

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

public final class OrderSimpleSearchMask_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFSimpleSearch:DocumentNo:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderParametricSearchMask.OrderNumber.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td>\n<input type=\"text\" name=\"WFSimpleSearch_DocumentNo\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WFSimpleSearch_DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=35 size=\"35\" class=\"inputfield_en\"/>\n</td>\n<td>&nbsp;</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("WFSimpleSearch:ChannelUUID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\">");
 {out.write(localizeISText("OrderSimpleSearchMask.Channel.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("OrderSimpleSearchMask.Channel.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td align=\"left\" colspan=\"2\">\n<select name=\"ChannelUUID\" style=\"1\" class=\"inputfield_en\" >\n<option value=\"\" selected=\"selected\">");
 {out.write(localizeISText("OrderExportConditions.AllChannels.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("Repositories","Rep",null)) { 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ChannelUUID"),null).equals(context.getFormattedValue(getObject("Rep:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(getObject("Rep:UUID"),null));
      out.write("\" selected=\"selected\"> ");
 {String value = null;try{value=context.getFormattedValue(getObject("Rep:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" </option>");
 } else { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(getObject("Rep:UUID"),null));
      out.write('"');
      out.write('>');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Rep:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" </option>");
 } 
 } 
      out.write("</select>\n</td>\n<td class=\"left\" width=\"100%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SearchType\" value=\"simple\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("OrderType"),null).equals(context.getFormattedValue("completed",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"completedOrderSearch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null));
      out.write("\" class=\"button\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"find\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSearchMask.Find.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
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
