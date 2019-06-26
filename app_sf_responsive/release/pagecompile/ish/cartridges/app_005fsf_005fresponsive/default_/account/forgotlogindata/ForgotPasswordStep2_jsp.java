/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.forgotlogindata;

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

public final class ForgotPasswordStep2_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
      out.write("<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 5); 
      out.write("</div>\n<h1>");
 {out.write(localizeISText("account.forgotdata.password_retrieval.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"account/forgotlogindata/ForgotPasswordHint", null, "10");} 
      out.write("<h3>");
 {out.write(localizeISText("account.forgotdata.password_retrieval_step2.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h3>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UserBO:SecurityQuestion")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("UserBO:SecurityQuestion"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 URLPipelineAction action34 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewForgotLoginData-Dispatch",null)))),null));String site34 = null;String serverGroup34 = null;String actionValue34 = context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewForgotLoginData-Dispatch",null)))),null);if (site34 == null){  site34 = action34.getDomain();  if (site34 == null)  {      site34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup34 == null){  serverGroup34 = action34.getServerGroup();  if (serverGroup34 == null)  {      serverGroup34 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue("https",null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewForgotLoginData-Dispatch",null)))),null));out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue34, site34, serverGroup34,true)); 
      out.write("<input type=\"hidden\" name=\"UserID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<div class=\"form-group\">\n<label class=\"col-md-2 control-label\">");
 {out.write(localizeISText("account.security_question.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("UserBO:SecurityQuestion"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<div class=\"control-label col-md-3\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UserBO:SecurityQuestion"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</div>");
 } 
      out.write("</div>\n<div class=\"form-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ForgotPasswordFormStep2:Answer:Errors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("server-error");
 } 
      out.write("\">\n<label class=\"col-md-2 control-label\" for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ForgotPasswordFormStep2:Answer:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.forgotdata.security_answer.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<div class=\"col-md-3\">\n<input type=\"password\" class=\"form-control\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ForgotPasswordFormStep2:Answer:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ForgotPasswordFormStep2:Answer:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ForgotPasswordFormStep2:Answer:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nrequired\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.forgotdata.security_answer.empty.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ForgotPasswordFormStep2:Answer:Errors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ERROR_User"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("<small class=\"help-block\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ForgotPasswordFormStep2:Answer:isError(\"error.string\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 {out.write(localizeISText("account.forgotdata.security_answer.invalid.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ForgotPasswordFormStep2:Answer:isError(\"error.required\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {out.write(localizeISText("account.forgotdata.security_answer.missing.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_User")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_User"),null).equals(context.getFormattedValue("ERROR_Answer",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 {out.write(localizeISText("account.forgotdata.security_answer.wrong.error","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</small>");
 } 
      out.write("</div>\n</div>\n<div class=\"form-group\">\n<div class=\"col-sm-offset-2 col-sm-8\">\n<button class=\"btn btn-primary\" type=\"submit\" value=\"SUBMIT\" name=\"SendPassword\">");
 {out.write(localizeISText("account.submit.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>");
 out.print("</form>"); 
 } else { 
      out.write("<div>");
 {out.write(localizeISText("account.forgotdata.no_security_question.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
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