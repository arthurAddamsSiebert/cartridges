/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.processchain;

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

public final class NewPipelineStep_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
 URLPipelineAction action698 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));String site698 = null;String serverGroup698 = null;String actionValue698 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null);if (site698 == null){  site698 = action698.getDomain();  if (site698 == null)  {      site698 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup698 == null){  serverGroup698 = action698.getServerGroup();  if (serverGroup698 == null)  {      serverGroup698 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessChainSteps-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddPipelineForm");out.print("\"");out.print(" id=\"");out.print("AddPipelineForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue698, site698, serverGroup698,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("add"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"add\" value=\"add\">");
 } 
      out.write("<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"editbox aldi\" >\n<tr>\n<td class=\"editbox_title\">");
 {out.write(localizeISText("process.chain.steps.pipeline.new","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("addPipelineError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"error top\" width=\"100%\">\n<b>");
 {out.write(localizeISText("process.chain.steps.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 {out.write(localizeISText("process.chain.steps.missing",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td>\n<table cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n<tr>\n<td class=\"fielditem2\" valign=\"middle\" nowrap=\"nowrap\">\n<label class=\"label\">");
 {out.write(localizeISText("process.chain.steps.domain","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<span class=\"star\">*</span>\n</label> \n</td>\n<td>\n<select name=\"AddPipelineForm_DomainUUID\" class=\"dropdown inputfield_en\">");
 while (loop("SiteDomains","Domain",null)) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(getObject("Domain:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Domain:UUID"),null).equals(context.getFormattedValue(getObject("AddPipelineForm:DomainUUID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("selected");
 } 
      out.write(' ');
      out.write('>');
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Domain:DomainName"),null)),null));
      out.write("</option> \n");
 } 
      out.write("</select> \n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" valign=\"middle\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddPipelineForm:TimeOut:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<label class=\"label label_error\">");
 } else { 
      out.write("<label class=\"label\">");
 } 
 {out.write(localizeISText("process.chain.steps.timeout","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<span class=\"star\">*</span>\n</label>\n</td>\n<td><input type=\"text\" class=\"inputfield_en\" size=\"5\" name=\"AddPipelineForm_TimeOut\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AddPipelineForm:TimeOut:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AddPipelineForm:TimeOut:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('5');
 } 
      out.write("\"/></td>\n</tr>\n<tr> \n<td class=\"fielditem2\" valign=\"middle\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddPipelineForm:PipelineName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("<label class=\"label label_error\">");
 } else { 
      out.write("<label class=\"label\">");
 } 
 {out.write(localizeISText("process.chain.steps.pipeline.name","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<span class=\"star\">*</span>\n</\n</td>\n<td><input type=\"text\" class=\"inputfield_en\" size=\"50\" name=\"AddPipelineForm_PipelineName\" value=\"");
      out.print(context.getFormattedValue(getObject("AddPipelineForm:PipelineName:Value"),null));
      out.write("\"/></td>\n</tr> \n<tr> \n<td class=\"fielditem2\" valign=\"middle\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddPipelineForm:StartnodeName:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<label class=\"label label_error\">");
 } else { 
      out.write("<label class=\"label\">");
 } 
 {out.write(localizeISText("process.chain.steps.pipeline.startnode","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n<span class=\"star\">*</span>\n</\n</td>\n<td><input type=\"text\" class=\"inputfield_en\" size=\"50\" name=\"AddPipelineForm_StartnodeName\" value=\"");
      out.print(context.getFormattedValue(getObject("AddPipelineForm:StartnodeName:Value"),null));
      out.write("\"/></td>\n</tr> \n</table>\n<table cellspacing=\"0\" cellpadding=\"5\" border=\"0\" class=\"w100\">\n<tr> \n<td align=\"right\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\">\n<input class=\"button\" type=\"submit\" value=\"Apply\" name=\"applyPipeline\">\n</td>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" value=\"Cancel\" name=\"cancelAction\" />\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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