/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.htmleditor;

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

public final class Catalogs_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      response.setContentType("text/xml;charset=utf-8");
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
 
 

setEncodingType("text/xml"); 
      out.write("<collection id=\"GetCatalogs_");
 {String value = null;try{value=context.getFormattedValue(getObject("OrganizationDomainId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('_');
 {String value = null;try{value=context.getFormattedValue(getObject("LocaleId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" version=\"2\">\n<uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetCatalogs",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/ic_folder.gif</icon>\n<title>");
 {out.write(localizeISText("Catalogs.ProductImages.title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n<description2></description2>\n<src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetCatalogs",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n<readonly>true</readonly>\n<items>");
 while (loop("StandardCatalogs","Catalog",null)) { 
      out.write("<collection id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('[');
 {String value = null;try{value=context.getFormattedValue(getObject("ShowCategoryLinks"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(']');
      out.write('[');
 {String value = null;try{value=context.getFormattedValue(getObject("ShowProductLinks"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("]\">\n<uri>category://");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('@');
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Root:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/icon_shared_folder.gif</icon>");
 } else { 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/ic_folder.gif</icon>");
 } 
      out.write("<title>");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n<description>");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</description>\n<description2>");
 {out.write(localizeISText("Catalogs.Catalog.description2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</description2>\n<src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetCategories",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null)).addURLParameter(context.getFormattedValue("ShowCategoryLinks",null),context.getFormattedValue(getObject("ShowCategoryLinks"),null)).addURLParameter(context.getFormattedValue("CategoryLinkPipeline",null),context.getFormattedValue(getObject("CategoryLinkPipeline"),null)).addURLParameter(context.getFormattedValue("CategoryLinkSite",null),context.getFormattedValue(getObject("CategoryLinkSite"),null)).addURLParameter(context.getFormattedValue("ShowProductLinks",null),context.getFormattedValue(getObject("ShowProductLinks"),null)).addURLParameter(context.getFormattedValue("ProductLinkPipeline",null),context.getFormattedValue(getObject("ProductLinkPipeline"),null)).addURLParameter(context.getFormattedValue("ProductLinkSite",null),context.getFormattedValue(getObject("ProductLinkSite"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n<readonly>true</readonly>\n<items></items>\n</collection> \n");
 } 
      out.write("</items>\n</collection>");
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
