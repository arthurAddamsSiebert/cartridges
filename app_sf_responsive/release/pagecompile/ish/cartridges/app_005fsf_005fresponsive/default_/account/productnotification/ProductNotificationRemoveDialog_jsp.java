/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.account.productnotification;

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

public final class ProductNotificationRemoveDialog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<div class=\"modal-dialog\">\n<div class=\"modal-content\">\n<div class=\"modal-header\">\n<button type=\"button\" class=\"close\" data-dismiss=\"modal\" title=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" aria-label=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"><span aria-hidden=\"true\">&times;</span></button>\n<h2 class=\"modal-title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h2>\n</div>");
 URLPipelineAction action26 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-RemoveAlert",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AlertUUID",null),context.getFormattedValue(getObject("Alert:UUID"),null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))),null));String site26 = null;String serverGroup26 = null;String actionValue26 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-RemoveAlert",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AlertUUID",null),context.getFormattedValue(getObject("Alert:UUID"),null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))),null);if (site26 == null){  site26 = action26.getDomain();  if (site26 == null)  {      site26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup26 == null){  serverGroup26 = action26.getServerGroup();  if (serverGroup26 == null)  {      serverGroup26 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-RemoveAlert",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AlertUUID",null),context.getFormattedValue(getObject("Alert:UUID"),null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null))),null));out.print("\"");out.print(" name=\"");out.print("formRemoveProductNotification");out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue26, site26, serverGroup26,true)); 
      out.write("<div class=\"modal-body\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ALERT_NOT_FOUND"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("<div role=\"alert\" class=\"kor-form-error-message\">\n<div class=\"kor-form-error-message-contents\">");
 {out.write(localizeISText("account.productnotification.remove_dialog.cannot_deleted.error","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n</div>");
 } 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("account.productnotification.remove_dialog.message_line1","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<p>");
 {out.write(localizeISText("account.productnotification.remove_dialog.message_line2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n</div>\n<div class=\"modal-footer\">\n<input type=\"hidden\" data-form-action=\"true\"/>\n<button type=\"submit\" class=\"btn btn-primary\" name=\"delete\" value=\"delete\">");
 {out.write(localizeISText("account.productnotification.remove_dialog.label_yes","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<a class=\"btn btn-default\" name=\"cancel\" data-dismiss=\"modal\">");
 {out.write(localizeISText("account.productnotification.remove_dialog.label_no","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>");
 out.print("</form>"); 
      out.write("</div>\n</div>");
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
