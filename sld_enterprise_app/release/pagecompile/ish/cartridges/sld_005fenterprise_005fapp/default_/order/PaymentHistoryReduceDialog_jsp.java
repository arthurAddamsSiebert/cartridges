/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.order;

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

public final class PaymentHistoryReduceDialog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Reduce_Success"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<script type=\"text/javascript\">\nparent.location.reload();\n</script>");
 } 
      out.write(' ');
      out.write('\n');
 URLPipelineAction action652 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentHistory-Dispatch",null)))),null));String site652 = null;String serverGroup652 = null;String actionValue652 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentHistory-Dispatch",null)))),null);if (site652 == null){  site652 = action652.getDomain();  if (site652 == null)  {      site652 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup652 == null){  serverGroup652 = action652.getServerGroup();  if (serverGroup652 == null)  {      serverGroup652 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPaymentHistory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("paymentHistoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue652, site652, serverGroup652,true)); 
      out.write("<input name=\"webform_id\" type=\"hidden\" value=\"paymentHistoryForm\"/>\n<input name=\"ChannelID\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input name=\"OrderID\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input name=\"historyStatus\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("historyStatus"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input name=\"PaymentTransactionUUID\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentTransactionBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<div class=\"dialog-content\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ReduceAmountErrorCode")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ReduceError"),null).equals(context.getFormattedValue("AmountExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("<div class=\"error\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ReduceAmountErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 {out.write(localizeISText("PaymentHistory.PleaseEnterAValidAmount.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ReduceAmountErrorCode"),null).equals(context.getFormattedValue("InvalidReduceByAmount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {out.write(localizeISText("PaymentHistoryReduceDialog.error.reduce_amount",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PaymentHistory.UnknownProblem.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }} 
      out.write("</div>");
 } 
      out.write("<table width=\"100%\">\n<tr>\n<td class=\"table_detail\" colspan=\"2\">");
 {out.write(localizeISText("PaymentHistory.ReducesTheAuthorizedAmountForThisTransactionYouNee.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("PaymentHistory.Amount.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_detail bold w100\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PaymentTransactionBO:MaxCaptureAmount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"label\">\n<label class=\"label");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ReduceAmountErrorCode")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ReduceError"),null).equals(context.getFormattedValue("AmountExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write(" label_error");
 } 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("PaymentHistory.AmountToReduce0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("PaymentTransactionBO:Amount:CurrencyMnemonic"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</label> \n</td>\n<td class=\"table_detail\"><input type=\"text\" name=\"AmountToReduce\" size=\"6\" class=\"inputfield_en\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("AmountToReduce"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write(" value=\"");
      out.print(context.getFormattedValue(getObject("AmountToReduce"),null));
      out.write('"');
 } 
      out.write(" /></td>\n</tr>\n<tr>\n<td class=\"fielditem2\">");
 {out.write(localizeISText("PaymentHistory.ReduceReason.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_detail\"><input type=\"text\" name=\"ReduceReason\" class=\"inputfield_en w100\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ReduceReason"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write(" value=\"");
      out.print(context.getFormattedValue(getObject("ReduceReason"),null));
      out.write('"');
 } 
      out.write(" /></td>\n</tr>\n<tr>\n<td class=\"table_detail\">&nbsp;</td>\n</tr>\n</table>\n</div>\n<div class=\"dialog-buttons\">\n<input type=\"submit\" class=\"button\" name=\"reduce\" value=\"");
 {out.write(localizeISText("PaymentHistoryReduceDialog.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ReduceAmountErrorCode")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ReduceAmountErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ReduceError"),null).equals(context.getFormattedValue("AmountExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("<input type=\"button\" class=\"button\" name=\"cancel\" value=\"");
 {out.write(localizeISText("PaymentHistoryReduceDialog.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" onclick=\"parent.location.reload();\" />");
 } else { 
      out.write("<input type=\"button\" class=\"button\" name=\"cancel\" value=\"");
 {out.write(localizeISText("PaymentHistoryReduceDialog.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" data-action=\"dialog-close\" />");
 } 
      out.write("</div>");
 out.print("</form>"); 
      out.write(' ');
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
