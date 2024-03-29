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

public final class AddressCustomAttributes_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e n\">\n<tr>\n<td class=\"infobox_title\">");
 {out.write(localizeISText("AddressCustomAttributes_52.NewAttribute.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AddressCustomAttributes_52.Name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<input type=\"text\" name=\"AttributeName_");
      out.print(context.getFormattedValue(getObject("Address:UUID"),null));
      out.write("\" maxlength=\"256\" size=\"25\" value=\"\" class=\"inputfield_en\"/>&nbsp;&nbsp;&nbsp;\n</td>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AddressCustomAttributes_52.DataType",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<select name=\"AttributeType_");
      out.print(context.getFormattedValue(getObject("Address:UUID"),null));
      out.write("\" class=\"inputfield_en\">\n<option value=\"String\" selected=\"selected\">");
 {out.write(localizeISText("AddressCustomAttributes_52.String",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Integer\">");
 {out.write(localizeISText("AddressCustomAttributes_52.Integer",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Double\">");
 {out.write(localizeISText("AddressCustomAttributes_52.Double",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AddressCustomAttributes_52.Value",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<input type=\"text\" name=\"AttributeValue_");
      out.print(context.getFormattedValue(getObject("Address:UUID"),null));
      out.write("\" maxlength=\"4000\" size=\"12\" value=\"\" class=\"inputfield_en\"/>\n</td>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"UpdateCA\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AddressCustomAttributes_52.Add.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header n s e center\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AddressCustomAttributes_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("AddressCustomAttributes_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header n e s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AddressCustomAttributes_52.Name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n e s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AddressCustomAttributes_52.DataType",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header n s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AddressCustomAttributes_52.Value",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AttributeValues","av",null)) { 
      out.write("<tr>\n<td class=\"table_detail2 e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(av:Name)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("</td>\n<td class=\"table_detail2 e s left\">\n<input type=\"text\" name=\"AttributeName_");
 {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"256\" size=\"25\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n<td class=\"table_detail2 e s left\">\n<select name=\"AttributeType_");
 {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\">\n<option value=\"String\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("AddressCustomAttributes_52.String",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Integer\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("AddressCustomAttributes_52.Integer",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"Double\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("av:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {out.write(localizeISText("AddressCustomAttributes_52.Double",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n</select>\n</td>\n<td class=\"table_detail2 s left\">\n<input type=\"text\" name=\"AttributeValue_");
 {String value = null;try{value=context.getFormattedValue(getObject("av:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"4000\" size=\"12\" value=\"");
 processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("av",getObject("av"))}, 96); 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail aldi\">");
 {out.write(localizeISText("AddressCustomAttributes_52.ThisAddressCurrentlyHasNoAttributesCreateAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td align=\"right\" width=\"100%\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input class=\"button\" type=\"submit\" name=\"UpdateCA\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AddressCustomAttributes_52.Apply.button",null)),null));
      out.write("\"/></td>");
 } 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"AddressID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input class=\"button\" type=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AddressCustomAttributes_52.Reset.button",null)),null));
      out.write("\"/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeValues") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"DeleteCA\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("AddressCustomAttributes_52.Delete.button",null)),null));
      out.write("\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
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
