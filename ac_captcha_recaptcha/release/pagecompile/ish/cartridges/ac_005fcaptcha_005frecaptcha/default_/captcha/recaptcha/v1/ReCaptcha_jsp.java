/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:10:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fcaptcha_005frecaptcha.default_.captcha.recaptcha.v1;

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

public final class ReCaptcha_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n\n\n<script type=\"text/javascript\">\nvar RecaptchaOptions = {\n\tcustom_translations : {\n\t    instructions_visual : \"");
 {out.write(localizeISText("recaptcha.instruction.visual",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    instructions_audio : \"");
 {out.write(localizeISText("recaptcha.instruction.audio",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    play_again : \"");
 {out.write(localizeISText("recaptcha.play.again",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    cant_hear_this : \"");
 {out.write(localizeISText("recaptcha.cantHear",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    visual_challenge : \"");
 {out.write(localizeISText("recaptcha.challenge.visual",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    audio_challenge : \"");
 {out.write(localizeISText("recaptcha.challenge.audio",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    refresh_btn : \"");
 {out.write(localizeISText("recaptcha.btn.refresh",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    help_btn : \"");
 {out.write(localizeISText("recaptcha.btn.help",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n\t    incorrect_try_again : \"");
 {out.write(localizeISText("recaptcha.incorrect",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\",\n    },\n\ttheme: \"white\",\n\tlang: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n};\t\t\t        \t\n</script>\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("captchaFormData"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("captchaFormData:HTMLSnippet"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {String value = null;try{value=context.getFormattedValue(getObject("captchaFormData:HTMLSnippet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";out.write(value);} 
      out.write('\n');
 } 
      out.write('\n');
      out.write('\n');
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","CaptchaID")}, 26); 
      out.write("\n<div id=\"");
      out.print(context.getFormattedValue(context.getFormattedValue("captcha-",null) + context.getFormattedValue(getObject("CaptchaID"),null),null));
      out.write("\" class=\"captcha\"></div>\n\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("formField:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\n\t<small class=\"help-block\">");
 {out.write(localizeISText("recaptcha.incorrect.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</small>\n");
 } 
      out.write("\n\n\n<input type=\"hidden\" name=\"");
      out.print(context.getFormattedValue(getObject("formField:QualifiedName"),null));
      out.write("\" value=\"");
      out.print(context.getFormattedValue(getObject("formField:QualifiedName"),null));
      out.write('"');
      out.write('/');
      out.write('>');
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
