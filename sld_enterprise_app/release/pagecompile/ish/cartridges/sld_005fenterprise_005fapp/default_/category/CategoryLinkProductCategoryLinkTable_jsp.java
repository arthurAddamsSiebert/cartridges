/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
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

public final class CategoryLinkProductCategoryLinkTable_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_table\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("itemIsVisible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("\nstyle=\"display: block\"\n");
 } else { 
      out.write("\nstyle=\"display: none\"\n");
 } 
      out.write("\n>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" id=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:ProductLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:ProductLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_product_links_table\" class=\"product_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\">\n<tr>\n<td class=\"table_title2 w e s\">");
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.For.table_title2",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4 w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinkTypeSummary:ProductLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Products.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/link/CategoryLinkProductList", null, "27");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_category_links_table\" class=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\">\n<tr>\n<td class=\"table_title2 w e s\">");
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.For.table_title2",null,null,encodeString(context.getFormattedValue(getObject("Category:DisplayName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4 w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinkTypeSummary:CategoryLinkCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Categories.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CategoryLinkCategoryList", null, "46");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:ProductLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:ProductLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_incoming_product_links_table\" class=\"product_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\"> \n<tr>\n<td class=\"table_title2 w e s\"> ");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Is.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Of.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4 w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryIncomingProductLinksCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Products.table_title4",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/IncomingCategoryLinkProductList", null, "66");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")))).booleanValue() && ((Boolean) getObject("CategoryLinkTypeSummary:CategoryLinkAllowed")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_incoming_category_links_table\" class=\"category_links_");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_list\"> \n<tr>\n<td class=\"table_title2 w e s\"> ");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Is.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Of.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title4 w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CategoryIncomingLinksCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.Categories.table_title41",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/IncomingCategoryLinkCategoryList", null, "85");} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>\n</div>");
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
