/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account.dashboard;

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

public final class ApprovalWidgetInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = (getObject("CustomerBO:Extension(\"OrderApprovalManagement\")")); getPipelineDictionary().put("OrderApprovalManagementServiceExtension", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderApprovalManagementServiceExtension:Enabled"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","User"),
new TagParameter("value0",getObject("CurrentUser")),
new TagParameter("mapname","PipelineParameters")}, 7); 
 {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(getObject("PipelineParameters"))),"BusinessObjectDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 10.",e);}} 
 processOpenTag(response, pageContext, "userpermissionmap", new TagParameter[] {
new TagParameter("User",getObject("BusinessObjectDict:UserBO")),
new TagParameter("UserPermissionMap","UserPermissionMap")}, 12); 
 processOpenTag(response, pageContext, "getpreference", new TagParameter[] {
new TagParameter("domainname",getObject("CurrentDomain:DefaultApplication:Domain:DomainName")),
new TagParameter("preferencekey","EnableRecurringOrders"),
new TagParameter("type","String"),
new TagParameter("return","EnableRecurringOrders")}, 13); 
 {Object temp_obj = (getObject("BusinessObjectDict:UserBO:Extension(\"UserBOOrderApprovalExtension\")")); getPipelineDictionary().put("UserApproval", temp_obj);} 
 {Object temp_obj = (getObject("BusinessObjectDict:UserBO:Extension(\"CostCenter\")")); getPipelineDictionary().put("CostCenterExtension", temp_obj);} 
      out.write("<div class=\"section\" data-testing-id=\"my-approvals-section\">\n<h2>");
 {out.write(localizeISText("approval.widget.my_approvals.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n<div class=\"row account-dashboard bubble-section\">\n<div class=\"col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-6 col-sm-6\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null));
      out.write("\" class=\"circle-icon show\">\n<span>");
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllOpenOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n</a>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("approval.widget.link.orders_waiting_for_approval.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n<p class=\"total\">");
 {out.write(localizeISText("approval.widget.total.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllOpenOrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>\n</div>\n<div class=\"col-xs-6 col-sm-6 item-details\">\n<div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllApproved",null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllApprovedOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("approval.widget.link.orders_approved.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n<p>");
 {out.write(localizeISText("approval.widget.total.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllApprovedOrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>\n</div>\n<div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllRejected",null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllRejectedOrdersCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("approval.widget.link.orders_rejected.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n<p>");
 {out.write(localizeISText("approval.widget.total.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllRejectedOrdersTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</p>\n</div>\n</div>\n</div>\n</div>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EnableRecurringOrders")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EnableRecurringOrders"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<div class=\"col-sm-6\">\n<div class=\"row\">\n<div class=\"col-xs-6 col-sm-6\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null));
      out.write("\" class=\"circle-icon show\">\n<span>");
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllOpenSubscriptionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n</a>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllOpen",null)))),null));
      out.write('"');
      out.write('>');
 {out.write(localizeISText("approval.widget.link.subscriptions_waiting_for_approval.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n<div class=\"col-xs-6 col-sm-6 item-details\">\n<div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllApproved",null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllApprovedSubscriptionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("approval.widget.link.subscriptions_approved.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n<div>\n<a href=\"");
      out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewApprovals-AllRejected",null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("UserApproval:AllRejectedSubscriptionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {out.write(localizeISText("approval.widget.link.subscriptions_rejected.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n</div>\n</div>\n</div>");
 } 
      out.write("</div>\n</div>");
 } 
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
