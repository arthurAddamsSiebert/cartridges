/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.grid;

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

public final class ProductData_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      response.setContentType("text/javascript;charset=utf-8");
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
 

setEncodingType("text/javascript"); 
      out.write("\nfunction(args) {\nvar data = [];\n");
 while (loop("pageable","Product",null)) { 
      out.write("\ndata.push({\nselected: ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Product:UUID"),null).equals(context.getFormattedValue(getObject("params:Clipboard:ObjectUUID(Product:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("true");
 } else { 
      out.write("false");
 } 
      out.write(",\nuuid: \"");
 {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\",\nimage: \"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-ProductThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("Width",null),context.getFormattedValue("30",null)).addURLParameter(context.getFormattedValue("Height",null),context.getFormattedValue("30",null))),null));
      out.write("\",\nname: \"");
 {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:Name"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\",\nsku: \"");
 {String value = null;try{value=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:SKU"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\",\nsupplier: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:SupplierName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\",\nvalue: \"");
 processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Product",getObject("Product"))}, 16); 
      out.write("\",\ntypeCode: \"");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductTypeCode", null, "17");} 
      out.write("\",\nisOnline: ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("true");
 } else { 
      out.write("false");
 } 
      out.write(",\nisAvailable: ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:isAvailable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("true");
 } else { 
      out.write("false");
 } 
      out.write(",\nisCategorized: ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:hasCatalogCategories"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("true");
 } else { 
      out.write("false");
 } 
      out.write(",\nisOffered: ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Product:getOffersCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("true");
 } else { 
      out.write("false");
 } 
      out.write(",\nisShared: ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:hasDerivedProducts"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("true");
 } else { 
      out.write("false");
 } 
      out.write("\n});\n");
 } 
      out.write("\nargs.callback({\norderColumnId: ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("params:SortBy"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("params:SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\".toLowerCase()");
 } else { 
      out.write("\"name\"");
 } 
      out.write(",\norder: ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("params:SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\"desc\"");
 } else { 
      out.write("\"asc\"");
 } 
      out.write(",\noffset: ");
 {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:PageStart")).doubleValue() -((Number) new Double(1)).doubleValue())),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(",\ntotal: ");
 {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(",\nitems: data\n});\n}\n");
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
