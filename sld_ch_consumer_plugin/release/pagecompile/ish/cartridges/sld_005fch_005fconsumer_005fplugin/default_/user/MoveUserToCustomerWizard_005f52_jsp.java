/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.user;

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

public final class MoveUserToCustomerWizard_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 {Object temp_obj = ("Users"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
      out.write('\n');
 {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
      out.write('\n');
 } 
      out.write('\n');
 {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} 
      out.write('\n');
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "10");} 
      out.write('\n');
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null) + context.getFormattedValue("MoveUserToCustomer",null)),
new TagParameter("text",localizeText(context.getFormattedValue("customer.breadcrumb.moveuser",null)))}, 12); 
      out.write("\n<!-- Main Content -->\n");
 URLPipelineAction action293 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Dispatch",null)))),null));String site293 = null;String serverGroup293 = null;String actionValue293 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Dispatch",null)))),null);if (site293 == null){  site293 = action293.getDomain();  if (site293 == null)  {      site293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup293 == null){  serverGroup293 = action293.getServerGroup();  if (serverGroup293 == null)  {      serverGroup293 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("customerList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue293, site293, serverGroup293,true)); 
      out.write("\n\t<input type=\"hidden\" name=\"CustomerID\" value=\"");
      out.print(context.getFormattedValue(getObject("CustomerBO:ID"),null));
      out.write("\" />\n\t<input type=\"hidden\" name=\"SortBy\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortBy"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t<input type=\"hidden\" name=\"SortDirection\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SortDirection"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\n\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"table_title aldi\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(") - ");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t</tr>\n\t\t\n\t\t<!-- move error if nothing is selected-->\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("move")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("CustomerUUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<tr>\n\t\t\t\t<td>\n\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t\t\t\t\t<td class=\"error top\" width=\"100%\">\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("customer.users.missing.selection.line1","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t\t\t\t\t\t\t");
 {out.write(localizeISText("customer.users.missing.selection.line2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t");
 } 
      out.write("\n\t\t\n\t\t<tr>\n\t\t\t<td class=\"table_title_description w e s\">\n\t\t\t\t");
 {out.write(localizeISText("customer.users.general.description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t\n\t");
 {Object temp_obj = ("false"); getPipelineDictionary().put("isCustomersAdvancedSearchAvailable", temp_obj);} 
      out.write('\n');
      out.write('	');
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomersSearchForm", null, "49");} 
      out.write("\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("\t\n\t\t");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","UserPermissionForEdit"),
new TagParameter("value6",getObject("SortDirection")),
new TagParameter("key2","Clipboard"),
new TagParameter("value5",getObject("SortBy")),
new TagParameter("value7",url(true,(new URLPipelineAction(context.getFormattedValue("ViewMoveUserToCustomerWizard_52-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("value2",getObject("CustomerClipboard")),
new TagParameter("key5","SortBy"),
new TagParameter("value1",getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS")),
new TagParameter("key6","SortDirection"),
new TagParameter("key3","CurrentChannel"),
new TagParameter("value4",getObject("CustomerBO")),
new TagParameter("value3",getObject("CurrentChannel")),
new TagParameter("key4","CustomerBO"),
new TagParameter("key7","SortingUrl"),
new TagParameter("mapname","params")}, 52); 
      out.write("\n\t\t   \n\t\t");
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","user/MoveUserCustomerListColumns_52.isml"),
new TagParameter("configuration","CustomerList"),
new TagParameter("datatemplate","user/MoveUserCustomerListData_52.isml"),
new TagParameter("pageable",getObject("CustomerBOs")),
new TagParameter("id","CustomerList"),
new TagParameter("pageablename","CustomerBOs"),
new TagParameter("rowcsstemplate","user/MoveUserCustomerListRowCss_52.isml"),
new TagParameter("params",getObject("params"))}, 61); 
      out.write('\n');
      out.write('	');
 } else { 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("search"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\t\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"table_detail w e s\">\n\t\t\t\t\t\t");
 {out.write(localizeISText("customer.search.no.result","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t");
 } else { 
      out.write("\t\n\t\t\n\t\t\t<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"table_detail w e s\">");
 {out.write(localizeISText("customers.list.empty-list","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t</tr>\n\t\t\t</table>\t\n\t\t");
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr>\n\t\t\t<td align=\"right\">\n\t\t\t\t<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"move\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("customer.users.buttons.move",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("customer.users.buttons.cancel",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t\n");
 out.print("</form>"); 
      out.write('\n');
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