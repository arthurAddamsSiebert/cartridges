/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fpayment_005fdemo.default_.payment_005fdemo.ishpay;

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
import com.intershop.beehive.core.capi.url.*;

public final class ApplicationFrame_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!DOCTYPE html>\n<html lang=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<head>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProgramUUID")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("PartnerUUID")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("AffiliateInclude-UpdateCount",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProgramUUID",null),context.getFormattedValue(getObject("ProgramUUID"),null))).addURLParameter(context.getFormattedValue("PartnerUUID",null),context.getFormattedValue(getObject("PartnerUUID"),null))),null), null, null, "8");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MetaTagsMap:ROBOTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<meta name=\"robots\" content=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("MetaTagsMap:ROBOTS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaRobots"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<meta name=\"robots\" content=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("metaRobots"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaTitle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<meta name=\"title\" content=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("metaTitle"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaDescription"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<meta name=\"description\" content=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("metaDescription"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("metaKeywords"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<meta name=\"keywords\" content=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("metaKeywords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
 out.print(context.prepareWAPlaceHolder("CANONICAL", null, null, null, null, "true")); 
      out.write("<title>");
 {out.write(localizeISText("ApplicationFrame.IntershopPayment.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/jquery-ui-1.10.3/jquery-ui.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/jquery-ui-1.10.3/themes/base/jquery.ui.theme.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/jquery/jquery.ui.selectmenu.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ishpay_jqueryui/jquery.ui.dialog.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ishpay_jqueryui/jquery.ui.theme.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ishpay_jqueryui/jquery.ui.selectmenu.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ishpay_reset.css\" />\n<link rel=\"STYLESHEET\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ishpay.css\" />");
 { ISFileBundle filebundle = new ISFileBundle("/bundles/js/ishpay.min.js");List<? extends Resource> resources = null;
boolean processesResources = (filebundle.isCheckSource() || !filebundle.hasCachedResources());if (processesResources) {filebundle.setDefaultProcessors(new String[]{"JSCompressor","SemicolonAppender"}); 
 }TagParameter[] parameters = new TagParameter[] {
};
CustomTag renderer = new CustomTag() {{
isStrict = true;
tagName = "FileBundleRenderer";
}
public void processOpenTag(PageContext pageContext, com.intershop.beehive.core.capi.request.ServletResponse response, AbstractTemplate template, int line) throws IOException, ServletException {
ServletContext application = pageContext.getServletContext();
ServletConfig config = pageContext.getServletConfig();
JspWriter out = pageContext.getOut();
Object page = template;
TemplateExecutionConfig context = getTemplateExecutionConfig(); 
      out.write("<script src=\"");
      out.print(context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:Name"),null)),null) + context.getFormattedValue("?lastModified=",null),null));
 {String value = null;try{value=context.getFormattedValue(getObject("File:LastModified"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"></script>");
 
}};
if (processesResources) { 
 {
String fileName = "/js/jquery.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 
 {
String fileName = "/js/jquery-migrate-1.2.1.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 
 {
String fileName = "/js/jquery-ui-1.10.3.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 
 {
String fileName = "/js/jquery/jquery.ui.selectmenu.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 
 {
String fileName = "/js/ishpay.js";
String[] processors = null;filebundle.addResource(fileName, processors);
}
 
 resources = filebundle.process();
} else {resources = filebundle.getChachedResources();
}for(Resource resource : resources) {
PipelineDictionary newDict = context.createPipelineDictionary();
newDict.put("File", resource);
for(TagParameter parameter : parameters) {newDict.put(parameter.getKey(), parameter.getValue());}context.pushPipelineDictionary(newDict);renderer.processOpenTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 46);
renderer.processCloseTag(pageContext, (com.intershop.beehive.core.capi.request.ServletResponse) response, this, 46);
context.popPipelineDictionary();}} 
      out.write("</head>\n<body>\n<div class=\"ipay_header\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/ISHPAY_logo.png\" width=\"120\" height=\"40\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ApplicationFrame.ISHPAYLogo.alt",null)),null));
      out.write("\"/>\n<div class=\"ipay-header-logoText\">");
 {out.write(localizeISText("ApplicationFrame.YourSecureDemoPaymentProvider.ipay","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("WorkingTemplate"),null), null, "54");} 
      out.write("</body>\n</html>");
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