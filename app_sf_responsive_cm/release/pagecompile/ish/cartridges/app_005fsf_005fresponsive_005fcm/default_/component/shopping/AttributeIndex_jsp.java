/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fcm.default_.component.shopping;

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

public final class AttributeIndex_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("trailtext0",getObject("PageletConfigurationParameters:Title")),
new TagParameter("showhomelink","true")}, 6); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.base.pagelet2-Slot")}, 10); 
      out.write("</div>\n<h1>");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h1>");
 {Object temp_obj = (getObject("AttributeIndexMap:KeySet")); getPipelineDictionary().put("IndexMapKeySet", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("PageletConfigurationParameters:IndexType"),null).equals(context.getFormattedValue("TabSet",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IndexMapKeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<!-- Nav tabs -->\n<ul class=\"nav nav-tabs\" role=\"tablist\">");
 while (loop("IndexMapKeySet","letter","count")) { 
      out.write("<li role=\"presentation\" class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("active");
 } 
      out.write("\"><a href=\"");
      out.print(context.getFormattedValue("#",null));
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" aria-controls=\"");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" role=\"tab\" data-toggle=\"tab\">");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></li>");
 } 
      out.write("</ul>\n<!-- Tab panes -->\n<div class=\"tab-content\">");
 while (loop("IndexMapKeySet","letter","count")) { 
      out.write("<div role=\"tabpanel\" class=\"tab-pane ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("active");
 } 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<div class=\"col-xs-1\"><h1>");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h1></div>\n<div class=\"col-xs-4 text-left brand-list-container\">");
 while (loop("AttributeIndexMap:get(letter)","IndexValue","count")) { 
      out.write("<ul class=\"brand-list\">\n<li><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewParametricSearch-SimpleOfferSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("IndexValue:Value"),null))).addURLParameter(context.getFormattedValue("SearchParameter",null),context.getFormattedValue(context.getFormattedValue("&@QueryTerm=\"",null) + context.getFormattedValue(getObject("IndexValue:Value"),null) + context.getFormattedValue("\"&@QueryAttribute=",null) + context.getFormattedValue(getObject("PageletConfigurationParameters:IndexAttribute"),null),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("IndexValue:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a></li>\n</ul>");
 } 
      out.write("</div>\n</div>");
 } 
      out.write("</div>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IndexMapKeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("<div>\n<ul class=\"brand-index row equal\">");
 while (loop("IndexMapKeySet","letter","count")) { 
      out.write("<li id=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toLowerCase()),null) + context.getFormattedValue("-section",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"brand-index-section col-xs-4\">\n<h1>");
 {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("letter"),null).toUpperCase()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h1>\n<ul class=\"brand-list\">");
 while (loop("AttributeIndexMap:get(letter)","IndexValue",null)) { 
      out.write("<li class=\"brands-list-item\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewParametricSearch-SimpleOfferSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("IndexValue:Value"),null))).addURLParameter(context.getFormattedValue("SearchParameter",null),context.getFormattedValue(context.getFormattedValue("&@QueryTerm=\"",null) + context.getFormattedValue(getObject("IndexValue:Value"),null) + context.getFormattedValue("\"&@QueryAttribute=",null) + context.getFormattedValue(getObject("PageletConfigurationParameters:IndexAttribute"),null),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("IndexValue:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</li>");
 } 
      out.write("</ul>\n</li>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("count")).doubleValue() %((Number) new Double(3)).doubleValue())))).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("</ul>\n</div>\n<div>\n<ul class=\"brand-index row equal\">");
 } 
 } 
      out.write("</ul>\n</div>");
 } 
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