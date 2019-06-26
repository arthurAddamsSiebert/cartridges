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

public final class CustomerContractList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = ("Contracts"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 } 
 {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null)),
new TagParameter("text",context.getFormattedValue(getObject("CustomerDetails:Name"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null)),null))}, 10); 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "12");} 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(") - ");
 {out.write(localizeISText("contract.list.contracts.title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("contract.list.contracts.description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- Delete Confirmation -->\n<tr>");
 URLPipelineAction action5 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));String site5 = null;String serverGroup5 = null;String actionValue5 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null);if (site5 == null){  site5 = action5.getDomain();  if (site5 == null)  {      site5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup5 == null){  serverGroup5 = action5.getServerGroup();  if (serverGroup5 == null)  {      serverGroup5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("page-bo-customer-contracts-delete-channel");out.print("\"");out.print(" name=\"");out.print("ContractsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue5, site5, serverGroup5,true)); 
      out.write("<input type=\"hidden\" name=\"CustomerID\" value=\"");
      out.print(context.getFormattedValue(getObject("CustomerBO:ID"),null));
      out.write("\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","contracts"),
new TagParameter("cancelbtnname","cancel"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("contract.list.message.delete.confirmation",null)))}, 27); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","contracts"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("contract.list.message.delete.noItemSelected",null)))}, 31); 
 } 
      out.write(' ');
      out.write('\n');
 } 
 out.print("</form>"); 
      out.write("</tr> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("ContractBOsPageable") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("contract.list.noContracts.text",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</tr>");
 } 
      out.write("</table>");
 URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerContracts-Dispatch",null)))),null));out.print("\"");out.print(" data-testing-id=\"");out.print("page-bo-customer-contracts-list-channel");out.print("\"");out.print(" name=\"");out.print("ContractsForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); 
      out.write("<input type=\"hidden\" name=\"CustomerID\" value=\"");
      out.print(context.getFormattedValue(getObject("CustomerBO:ID"),null));
      out.write("\" />\n<input type=\"hidden\" name=\"SortBy\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"SortDirection\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("forbidden"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td align=\"left\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Users:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<td class=\"button\">\n<input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("contract.list.button.new",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ContractBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("contract.list.button.delete",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ContractBOsPageable") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CurrentChannelPermissionMap"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("key0","Application"),
new TagParameter("value2",getObject("Clipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerBO"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 73); 
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","grid/ContractsColumns.isml"),
new TagParameter("configuration","contractslist"),
new TagParameter("datatemplate","grid/ContractsData.isml"),
new TagParameter("pageable",getObject("ContractBOsPageable")),
new TagParameter("id","ContractsGrid"),
new TagParameter("pageablename","ContractBOsPageable"),
new TagParameter("params",getObject("params"))}, 83); 
 } 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "96");} 
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
