/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.category;

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

public final class CategoryLinkProductLinkTable_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
      out.write("<div id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_table\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("itemIsVisible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("\nstyle=\"display: block\"\n");
 } else { 
      out.write("\nstyle=\"display: none\"\n");
 } 
      out.write('\n');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:ProductLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:ProductLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" >\n<tr>\n<td class=\"table_title2 s\">");
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td valign=\"top\" class=\"table_title_description s\">");
 {out.write(localizeISText("CategoryLinkProductLinkTable.ClickAssignToEstablishANewLinkBetweenTheProductAnd.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br />\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:ProductLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:ProductLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_product_links_table\" class=\"product_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\">\n<tr> \n<td class=\"table_title4\">");
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.For0.table_title4",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinkTypeSummary:ProductLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Products.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"n\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryLinkProductList", null, "35");} 
      out.write("</td>\n</tr> \n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_category_links_table\" class=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\">\n<tr>\n<td class=\"table_title4\">");
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.For0.table_title4",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinkTypeSummary:CategoryLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Categories.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"n\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryLinkCategoryList", null, "54");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:ProductLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:ProductLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_incoming_product_links_table\" class=\"product_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\">\n<tr>\n<td class=\"table_title4\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Is.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Of.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryIncomingProductLinksCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Products.table_title41",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"n\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/IncomingCategoryLinkProductList", null, "74");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_incoming_category_links_table\" class=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\">\n<tr>\n<td class=\"table_title4\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Is.table_title41",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Of.table_title41",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryIncomingLinksCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductLinkTable.Categories.table_title41",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"n\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/IncomingCategoryLinkCategoryList", null, "93");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 } 
      out.write("</div>");
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
