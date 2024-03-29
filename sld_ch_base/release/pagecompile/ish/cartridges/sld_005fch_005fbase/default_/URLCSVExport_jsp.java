/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_;

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
import com.intershop.beehive.xcs.capi.catalog.CatalogCategory;
import com.intershop.component.product.capi.ProductBO;
import com.intershop.component.catalog.capi.CatalogCategoryBO;
import com.intershop.component.catalog.capi.CatalogBO;
import com.intershop.component.catalog.capi.CatalogBORepository;
import com.intershop.component.application.capi.ApplicationBO;
import com.intershop.component.catalog.capi.CatalogBORepositoryExtension;
import com.intershop.beehive.core.capi.app.AppContextUtil;
import com.intershop.beehive.app.capi.AppContext;

public final class URLCSVExport_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/plain;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 


setEncodingType("text/plain"); 
 
     AppContext appContext = AppContextUtil.getCurrentAppContext();

 {Object temp_obj = ("ViewStandardCatalog-Browse"); getPipelineDictionary().put("CategoryViewingPipelineName", temp_obj);} 
      out.write("LinkType;UUID;DisplayName;URL");
out.println();
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Categories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 while (loop("Categories","Category",null)) { 

        CatalogCategory category = (CatalogCategory) getObject("Category");
        ApplicationBO applicationBO = appContext.getVariable(ApplicationBO.CURRENT);        
	    CatalogBORepository catalogBORepository = applicationBO.getRepository(CatalogBORepositoryExtension.EXTENSION_ID);
        CatalogBO catalogBO = catalogBORepository.getCatalogBOByCatalogRepositoryBOID(category.getDomain().getUUID());
        getPipelineDictionary().put("CategoryBO", catalogBO.getCatalogCategoryBOByID(category.getUUID()));

      out.write("Category;");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(';');
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("CategoryViewingPipelineName"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("Category:Name"),null))).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("CategoryBO:DomainName"),null))),null));
out.println();
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Products") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 
Object objects = getObject("Products");
if(objects instanceof com.intershop.beehive.foundation.util.ResettableIterator)
{
 	getPipelineDictionary().put("Products", ((com.intershop.beehive.foundation.util.ResettableIterator)objects).toSequence());
}

 while (loop("Products","ProductBO",null)) { 

    ProductBO productBO = (ProductBO) getObject("ProductBO");
	getPipelineDictionary().put("ProductBO", productBO);
 
      out.write("Product;");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(';');
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("ProductBO:DefaultCatalogCategory:DomainName"),null))).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("ProductBO:DefaultCatalogCategory:Name"),null)).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))),null));
out.println();
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
