/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.inc.product;

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

public final class DetailsTab_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} 
 {try{executePipeline("ProcessProductTabs-GetAttributeGroup",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductBO",getObject("ProductBO")))).addParameter(new ParameterEntry("AttributeGroupID","PRODUCT_DETAIL_ATTRIBUTES"))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("dict:SortedAttributeDescriptors")))).booleanValue() && ((Boolean) (hasLoopElements("dict:SortedAttributeDescriptors") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","collectionItemID")}, 9); 
      out.write("<div class=\"panel-heading\">\n<a data-toggle=\"collapse\" data-parent=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("accordion\" href=\"");
      out.print(context.getFormattedValue("#",null));
 {String value = null;try{value=context.getFormattedValue(getObject("collectionItemID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"collapsed\">");
 {out.write(localizeISText("product.details.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <span class=\"glyphicon glyphicon-plus pull-right\"></span>\n</a>\n</div>\n<div id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("collectionItemID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"panel-collapse collapse\">\n<div class=\"panel-body\">\n<dl class=\"ish-productAttributes\">");
 while (loop("dict:SortedAttributeDescriptors","AttributeDescriptorID","counter")) { 
 {Object temp_obj = (getObject("AttributeDescriptorID")); getPipelineDictionary().put("AttributeDescriptor", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("counter")).doubleValue() >=((Number)(new Double(1000))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",21);}else{getLoopStack().pop();break;} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AttributeDescriptor:DisplayName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("AttributeDescriptor:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(AttributeDescriptor:ID)")),
new TagParameter("attributeseparator",",&nbsp;"),
new TagParameter("attributelabel",getObject("AttributeDescriptor:DisplayName"))}, 24); 
 } else { 
 processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(AttributeDescriptor:ID)")),
new TagParameter("attributeseparator",",&nbsp;"),
new TagParameter("attributelabel",getObject("AttributeDescriptor:ID"))}, 26); 
 } 
 } 
      out.write("</dl>\n</div>\n</div>");
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
