/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account.dashboard;

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

public final class QuoteWidget_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","User"),
new TagParameter("value0",getObject("CurrentUser")),
new TagParameter("mapname","PipelineParameters")}, 3); 
 {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(getObject("PipelineParameters"))),"BusinessObjectDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} 
 {Object temp_obj = (getObject("BusinessObjectDict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_OWN_QUOTES\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {try{executePipeline("ProcessQuote-GetQuoteStatesCount",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} 
      out.write("<div class=\"section section-seperator\">\n<h2>");
 {out.write(localizeISText("account.quotes.widget.my_quotes.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n<div class=\"row\">\n<div class=\"col-xs-6\">");
 {out.write(localizeISText("account.quotes.widget.new.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-xs-6 text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:NewCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:NewCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</div>\n<div class=\"col-xs-6\">");
 {out.write(localizeISText("account.quotes.widget.submitted.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-xs-6 text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:SubmittedCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:SubmittedCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</div>\n<div class=\"col-xs-6\">");
 {out.write(localizeISText("account.quotes.widget.accepted.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"col-xs-6 text-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:AcceptedCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:AcceptedCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</div>\n<div class=\"col-xs-6\"><p>");
 {out.write(localizeISText("account.quotes.widget.rejected.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p></div>\n<div class=\"col-xs-6 text-right\"><p>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:RejectedCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:RejectedCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</p></div>\n</div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.quotes.widget.view_all_quotes.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>");
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
