/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fpreview.default_.editing;

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

public final class GetApplicationURL_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("previewWebform"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("previewWebform:getParameter(\"PreviewApplication\"):Value:SelectedValue:ValueObject:UrlIdentifier")); getPipelineDictionary().put("AppUrlIdentifier", temp_obj);} 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("previewWebform:getParameter(\"PreviewCurrency\"):Value:SelectedValue:ValueObject:Mnemonic")); getPipelineDictionary().put("Currency", temp_obj);} 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("previewWebform:getParameter(\"PreviewLocale\"):Value:SelectedValue:ValueObject:LocaleID")); getPipelineDictionary().put("Locale", temp_obj);} 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("Default-Start",null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("targetSite:DomainName"),null),context.getFormattedValue(getObject("Locale"),null),context.getFormattedValue(getObject("Currency"),null),context.getFormattedValue(getObject("AppUrlIdentifier"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceSite",null),context.getFormattedValue(getObject("sourceSite:DomainName"),null))).addURLParameter(context.getFormattedValue("rerender",null),context.getFormattedValue("true",null)))); getPipelineDictionary().put("ApplicationURL", temp_obj);} 
      out.write('\n');
 } else { 
      out.write('\n');
      out.write('	');
 {try{executePipeline("EditView-GetStorefrontEditingParameters",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentRepositoryUUID",getObject("contentRepositoryUUID"))))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 11.",e);}} 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (url(true,(new URLPipelineAction(context.getFormattedValue("Default-DefaultBackOfficeView",null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("targetSite:DomainName"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue(getObject("null"),null),context.getFormattedValue("-",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SourceSite",null),context.getFormattedValue(getObject("sourceSite:DomainName"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("contentRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("BackofficeUserID",null),context.getFormattedValue(getObject("Result:BackofficeUserID"),null)).addURLParameter(context.getFormattedValue("SecureURL",null),context.getFormattedValue(getObject("SecureURL"),null)).addURLParameter(context.getFormattedValue("InsecureURL",null),context.getFormattedValue(getObject("InsecureURL"),null)).addURLParameter(context.getFormattedValue("rerender",null),context.getFormattedValue("true",null)))); getPipelineDictionary().put("ApplicationURL", temp_obj);} 
      out.write('\n');
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
