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

public final class ProductApprovalInformation_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("bridge/bridge.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("EditingReasonDialogBehavior.js");
 out.print("</waplacement>"); 
      out.write("<td width=\"100%\">");
 {Object temp_obj = (getObject("SelectedTab")); getPipelineDictionary().put("SelectedTab", temp_obj);} 
      out.write("<input type=\"hidden\" name=\"SelectedTab\" value=\"");
      out.print(context.getFormattedValue(getObject("SelectedTab"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"");
      out.print(context.getFormattedValue(getObject("SelectedTab"),null));
      out.write("\" value=\"Target\"/>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"infobox_title\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductList_52.ApprovalStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("ProductList_52.review.label",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("ProductList_52.approved.label",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("ProductList_52.editing.label",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 }} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_PREPARE_PRODUCTS_FOR_APPROVE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalBO:ApprovalStatus:Code")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue("2",null).equals(context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"review\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductList_52.SendReview.button",null)),null));
      out.write("\" class=\"button\" ");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductButtonsDisabledAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("/>\n</td>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_APPROVE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("1",null).equals(context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"approve\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductList_52.Approve.button",null)),null));
      out.write("\" class=\"button\" ");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductButtonsDisabledAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("/>\n</td>");
 } 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductApprovalBO:ApprovalStatus:Code")))).booleanValue() && ((Boolean) (((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_PREPARE_PRODUCTS_FOR_APPROVE")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue("2",null).equals(context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_APPROVE_PRODUCTS")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue("2",null).equals(context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"button\" name=\"edit\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductList_52.Edit.button",null)),null));
      out.write("\" class=\"button\" ");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductButtonsDisabledAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n<td>\n<div id=\"EditingReasonDialog\" class=\"js-dialog\" width=\"640\" height=\"400\" data-title=\"");
 {out.write(localizeISText("sld_ch_consumer_plugin.ReasonProductApproval.dialog.title","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\">\n<iframe src=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-AddEditingReason",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("ProductID"),null)))),null));
      out.write("\" class=\"dialog-iframe\" name=\"EditingReasonDialog\"></iframe>\n</div>\n</td>\n<script type=\"text/javascript\">\naddEditingReason('");
      out.print(context.getFormattedValue("#",null));
      out.write("EditingReasonDialog', 'input[name=\"edit\"]');\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue("2",null).equals(context.getFormattedValue(getObject("ProductApprovalBO:ApprovalStatus:Code"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("\n// If approval status is editing then remove publish to live system artefacts from the UI.\nvar parentTD = $(\"input[name^='selectStagingTarget']\").parent();\nparentTD.prev().not('.button').remove();\nparentTD.remove(); \n");
 } 
      out.write("</script>");
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