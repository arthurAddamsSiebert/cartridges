/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-14 11:34:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fch_005fsales_005fb2b.default_.contract;

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

public final class ContractOrdersList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"progress/Modules", null, "3");} 
 {Object temp_obj = (getObject("Contract:CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 {Object temp_obj = (context.getFormattedValue("Contract-",null) + context.getFormattedValue(getObject("Contract:ID"),null)); getPipelineDictionary().put("ContractDetailsBreadcrumbID", temp_obj);} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("contract.ContractTabsInc.orders.title",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContractID",null),context.getFormattedValue(getObject("Contract:ID"),null))))),
new TagParameter("id",getObject("ContractDetailsBreadcrumbID")),
new TagParameter("text",getObject("Contract:Name"))}, 8); 
      out.write("<!-- Tabs -->");
 {Object temp_obj = ("Orders"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"contract/ContractTabsInc", null, "13");} 
      out.write("<!-- EO Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Contract:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td> \n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label\" for=\"TargetRevenue\">");
 {out.write(localizeISText("contract.order.revenue.target.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n</td>\n<td class=\"table_detail\" colspan=\"2\" width=\"100%\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Contract:SalesTarget:Target"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label\" for=\"CurrentRevenue\">");
 {out.write(localizeISText("contract.order.revenue.current.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n</td>\n<td class=\"table_detail\" colspan=\"2\" width=\"100%\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Contract:SalesTarget:Actual"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\">\n<label class=\"label\" for=\"currentProgress\">");
 {out.write(localizeISText("contract.order.revenue.progress.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":\n</label>\n</td>\n<td class=\"table_detail\" width=\"25%\">");
 {Object temp_obj = ("0"); getPipelineDictionary().put("ContractProgress", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget:Actual")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() <((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue(((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue()))),"0")); getPipelineDictionary().put("ContractProgress", temp_obj);} 
 } else { 
 {Object temp_obj = ("100"); getPipelineDictionary().put("ContractProgress", temp_obj);} 
 } 
 } 
 processOpenTag(response, pageContext, "progress", new TagParameter[] {
new TagParameter("value",getObject("ContractProgress"))}, 52); 
      out.write("</td>\n<td class=\"table_detail\" width=\"75%\">\n&nbsp;\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label\" for=\"RevenueExceedance\">");
 {out.write(localizeISText("contract.order.revenue.exceedance.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n</td>\n<td class=\"table_detail\" colspan=\"2\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Contract:SalesTarget:Actual")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() *((Number) new Double(100)).doubleValue())))).doubleValue() >((Number)(new Double(100))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(((new Double( ((Number) getObject("Contract:SalesTarget:Actual:Value")).doubleValue() / ((Number) getObject("Contract:SalesTarget:TargetAmount")).doubleValue() * ((Number) new Double(100)).doubleValue() -((Number) new Double(100)).doubleValue()))),"0"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('%');
      out.write('\n');
 } else { 
 } 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<img width=\"1\" height=\"6\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\">\n</td>\n</tr> \n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ContractOrderBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
 URLPipelineAction action3 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-Dispatch",null)))),null));String site3 = null;String serverGroup3 = null;String actionValue3 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-Dispatch",null)))),null);if (site3 == null){  site3 = action3.getDomain();  if (site3 == null)  {      site3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup3 == null){  serverGroup3 = action3.getServerGroup();  if (serverGroup3 == null)  {      serverGroup3 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContractOrders-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ContractOrdersForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue3, site3, serverGroup3,true)); 
      out.write("<input type=\"hidden\" name=\"ContractID\" value=\"");
      out.print(context.getFormattedValue(getObject("Contract:ID"),null));
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentChannelPermissionMap"),
new TagParameter("key2","Clipboard"),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("value1",getObject("CurrentChannelPermissionMap")),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("Contract")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","Contract"),
new TagParameter("value0",getObject("CurrentApplication")),
new TagParameter("mapname","params")}, 84); 
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ContractOrdersColumns.isml"),
new TagParameter("configuration","contractorderslist"),
new TagParameter("datatemplate","grid/ContractOrdersData.isml"),
new TagParameter("pageable",getObject("ContractOrderBOsPageable")),
new TagParameter("id","ContractsGrid"),
new TagParameter("pageablename","ContractOrderBOs"),
new TagParameter("params",getObject("params"))}, 91); 
 out.print("</form>"); 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "103");} 
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
