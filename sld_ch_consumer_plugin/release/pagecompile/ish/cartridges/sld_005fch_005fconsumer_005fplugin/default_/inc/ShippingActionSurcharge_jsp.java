/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.inc;

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

public final class ShippingActionSurcharge_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n<div id=\"surcharge\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ShippingAction:Type"),null).equals(context.getFormattedValue("AddSurcharge",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write(" style=\"display:none\" ");
 } 
      out.write(">\n\t<table  border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" >\n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox n e w\">\n\t\t\t\t\t<tr><td class=\"infobox_title\" colspan=\"6\">");
 {out.write(localizeISText("ShippingActionSurcharge.SurchargeByCurrency",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td></tr>\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShippingActionSurcharge.Currency",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t\t\t\t\t<td class=\"infobox_item\">\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SurchargeCurrency_CurrencyMnemonic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t");
 {Object temp_obj = (getObject("SurchargeCurrency_CurrencyMnemonic")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} 
      out.write("\n\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t");
 {Object temp_obj = (getObject("CurrentSession:CurrencyCode")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} 
      out.write("\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t<select name=\"SurchargeCurrency_CurrencyMnemonic\" class=\"select\">\n\t\t\t\t\t\t\t\t");
 while (loop("Currencies",null,null)) { 
      out.write("\n\t\t\t\t\t\t\t\t\t<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \n\t\t\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedLocaleID"),null).equals(context.getFormattedValue(getObject("Currencies:Mnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write("\n\t\t\t\t\t\t\t\t\t\t>");
 {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\n\t\t\t\t\t\t\t\t\t</option>\n\t\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t\t</select>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">&nbsp;</td>\n\t\t\t\t\t\t<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ShippingActionSurcharge.Surcharge",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n\t\t\t\t\t\t<td class=\"infobox_item\"><input type=\"text\" name=\"SurchargeValue_CurrencyMnemonic\" value=\"\" maxlength=\"15\" size=\"15\" class=\"inputfield_en\"/></td>\n\t\t\t\t\t\t<td width=\"100%\">\n\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"searchByCurrency\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ShippingActionSurcharge.Add",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t\t\t\t\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"aldi left\" nowrap=\"nowrap\" width=\"80\">\n\t\t\t\t\t\t\t\t<div id=\"A\">\n\t\t\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('formMask','DeleteCostPrice','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ShippingActionSurcharge.SelectAll",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t\t\t<div id=\"B\" style=\"display:none\">\n\t\t\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n\t\t\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('formMask','DeleteCostPrice','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ShippingActionSurcharge.ClearAll",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t\t\t</div>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t<td class=\"table_header n e s\">");
 {out.write(localizeISText("ShippingActionSurcharge.Currency",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t\t\t<td class=\"table_header n s\">");
 {out.write(localizeISText("ShippingActionSurcharge.Surcharge",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t\t\t<td class=\"table_header n e s\">&nbsp;</td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n</div>\n\n");
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
