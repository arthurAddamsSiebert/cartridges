/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.category.link;

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

public final class CategoryLinkNavTableModule_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n<table border=\"0\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\">\n\t<tr>\n\t\t");
 while (loop("linktypes","LinkType",null)) { 
      out.write("\n\t\t\t\n\t\t\t");
 {Object temp_obj = (getObject("linkboctnr:LinkBOsCnt(categorygroup,direction,LinkType)")); getPipelineDictionary().put("CatLinkCnt", temp_obj);} 
      out.write("\n\t\t\t");
 {Object temp_obj = (getObject("linkboctnr:LinkBOsCnt(productgroup,direction,LinkType)")); getPipelineDictionary().put("ProdLinkCnt", temp_obj);} 
      out.write("\n\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("LinkType:Applicable(categorygroup)")).booleanValue() || ((Boolean) getObject("LinkType:Applicable(productgroup)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\n\n\t\t\t\t\n\t\t\t\t<td class=\"input_checkbox\">\n\t\t\t\t\t\n\t\t\t\t\t");
 {Object temp_obj = (context.getFormattedValue("select_",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("direction"),null)); getPipelineDictionary().put("CheckBoxID", temp_obj);} 
      out.write("\n\t\t\t\t\t\n\t\t\t\t\t\n\t\t\t\t\t");
getPipelineDictionary().put("CheckBoxUserSelected", getPipelineDictionary().get("selected_" + getPipelineDictionary().get("CheckBoxID"))); 
      out.write("\n\t\t\t\t\t<input class=\"product_check\"\n\t\t\t\t\t\ttype=\"checkbox\"\n\t\t\t\t\t\tid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CheckBoxID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \n\t\t\t\t\t\tname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CheckBoxID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CheckBoxUserSelected")))).booleanValue() || ((Boolean) (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("user_selection")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((( ((Number) ((new Double( ((Number) getObject("CatLinkCnt")).doubleValue() +((Number) getObject("ProdLinkCnt")).doubleValue())))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\tchecked=\"checked\"\n\t\t\t\t\t\t\t");
 } 
      out.write(" \n\t\t\t\t\t/>\n\t\t\t\t</td>\n\t\t\t\t\n\n\t\t\t\t\n\t\t\t\t<td class=\"label_checkbox_text\">\n\t\t\t\t\t\n\t\t\t\t\t<label class=\"label label_checkbox_text group-of-types\"\n\t\t\t\t\tfor=\"select_");
 {String value = null;try{value=context.getFormattedValue(getObject("LinkType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_category_links\">\n\t\t\t\t\t\t\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Incoming"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryLinkList.Is.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("\n\t\t\t\t\t\t\t");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.CatalogCategoryLink.",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Incoming"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryLinkList.Of.label","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("\t\t\n\t\t\t\t\t</label>\n\t\t\t\t</td>\n\t\t\t\t\n\n\t\t\t\t\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(productgroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"label_checkbox_text\"><label\n\t\t\t\t\t\tclass=\"label label_checkbox_text label_light\"\n\t\t\t\t\t\tfor=\"select_");
 {String value = null;try{value=context.getFormattedValue(getObject("LinkType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_category_links\">\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProdLinkCnt")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<strong>");
 {String value = null;try{value=context.getFormattedValue(getObject("ProdLinkCnt"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</strong>&nbsp;\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0&nbsp;\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProdLinkCnt")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</label></td>\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t<td>&nbsp;</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\n\n\t\t\t\t\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(categorygroup)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"label_checkbox_text\"><label\n\t\t\t\t\t\tclass=\"label label_checkbox_text label_light\"\n\t\t\t\t\t\tfor=\"select_");
 {String value = null;try{value=context.getFormattedValue(getObject("LinkType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_outgoing_category_links\">\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatLinkCnt")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<strong>");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkCnt"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</strong>&nbsp;\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0&nbsp;\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatLinkCnt")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</label></td>\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t<td>&nbsp;</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\n\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\n\t\t\t\t<td class=\"label_checkbox_text\" colspan=\"4\">\n\t\t\t\t\t<label class=\"label label_checkbox_text group-of-types\" for=\"empty\">&nbsp;</label>\n\t\t\t\t</td>\n\t\t\t");
 } 
      out.write("\n\t\t\t\t<td width=\"80%\">&nbsp;</td>\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("LinkType") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t</tr>\n\t\t\t\t<tr>\n\t\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write("\n\t</tr>\n</table>");
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
