/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.customer;

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

public final class CustomerAddressList_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- TEMPLATENAME: customer/CustomerAddressList_52.isml -->\n<!-- Working Area -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "5");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/GlobalJavaScript", null, "6");} 
 {Object temp_obj = (getObject("CustomerBO:AddressBOs")); getPipelineDictionary().put("CustomerAddressBOs", temp_obj);} 
 {Object temp_obj = ("Addresses"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"CompanyCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerDetails")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CustomerBO:Extension(\"PrivateCustomer\")")); getPipelineDictionary().put("CustomerDetails", temp_obj);} 
 } 
 {Object temp_obj = (getObject("CustomerBO:CustomerType:CustomerTypeID")); getPipelineDictionary().put("CustomerTypeID", temp_obj);} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddressList_52-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null)))),
new TagParameter("id",context.getFormattedValue("Customer-",null) + context.getFormattedValue(getObject("CustomerBO:ID"),null)),
new TagParameter("text",context.getFormattedValue(getObject("CustomerDetails:Name"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue(context.getFormattedValue("customer.tabs.",null) + context.getFormattedValue(getObject("SelectedTab"),null),null)),null))}, 16); 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CustomerTabs", null, "20");} 
 URLPipelineAction action334 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddressList_52-Dispatch",null)))),null));String site334 = null;String serverGroup334 = null;String actionValue334 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddressList_52-Dispatch",null)))),null);if (site334 == null){  site334 = action334.getDomain();  if (site334 == null)  {      site334 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup334 == null){  serverGroup334 = action334.getServerGroup();  if (serverGroup334 == null)  {      serverGroup334 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddressList_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddressList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue334, site334, serverGroup334,true)); 
      out.write("<input type=\"hidden\" name=\"OrganizationUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Organization:UUID"),null));
      out.write("\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerDetails:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('(');
 {out.write(localizeISText(context.getFormattedValue(getObject("CustomerBO:CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(") - ");
 {out.write(localizeISText("CustomerAddressList_52.Addresses.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) (hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","addresse"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mdc")}, 29); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDelete")))).booleanValue() && ((Boolean) ((((Boolean) ((hasLoopElements("PrefixIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","addresse"),
new TagParameter("type","mde")}, 32); 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AddressDeletionResult")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("AddressDeletionResult:FailureCode"),null).equals(context.getFormattedValue("LastAddress",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("message",localizeText(context.getFormattedValue("CustomerAddressList_52.lastaddress.error",null))),
new TagParameter("type","mde")}, 35); 
 } 
      out.write("</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CustomerAddressBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" width=\"1\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center\">\n<tr>\n<td nowrap=\"nowrap\">\n<input type=\"checkbox\" onclick=\"javascript:selectAll('AddressList','DeleteAddress','A','B');this.checked = false;\" title=\"");
 {out.write(localizeISText("customers.list.select-all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\" width=\"1\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center\">\n<tr>\n<td nowrap=\"nowrap\">\n<input type=\"checkbox\" onclick=\"javascript:selectAll('AddressList','DeleteAddress','A','B');this.checked = true;\" title=\"");
 {out.write(localizeISText("customers.list.clear-all","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" checked=\"checked\"/>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header s\">");
 {out.write(localizeISText("CustomerAddressList_52.Address.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s w100\">&nbsp;</td>\n</tr>");
 while (loop("CustomerAddressBOs","aAddress","Counter")) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Counter")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((hasNext("aAddress") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" disabled=\"disabled\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"DeleteAddress\" value=\"");
      out.print(context.getFormattedValue(getObject("aAddress:ID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PrefixIterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 while (loop("PrefixIterator","Selected",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Selected"),null).equals(context.getFormattedValue(getObject("aAddress:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",73);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
      out.write('/');
      out.write('>');
 } 
      out.write("</td>");
 } 
      out.write("<td class=\"table_detail s\" nowrap=\"nowrap\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCustomerAddress_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationUUID",null),context.getFormattedValue(getObject("Organization:UUID"),null))).addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("aAddress:ID"),null)).addURLParameter(context.getFormattedValue("CustomerID",null),context.getFormattedValue(getObject("CustomerBO:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {Object temp_obj = (getObject("CustomerBO:Extension(\"GroupCustomer\")")); getPipelineDictionary().put("GroupCustomer", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GroupCustomer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aAddress:CompanyName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("aAddress:CompanyName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:CompanyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" <br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aAddress:CompanyName2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("aAddress:CompanyName2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/><br/>");
 } else { 
      out.write("<br/> \n");
 } 
 } 
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:AddressLine1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aAddress:AddressLine2")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("aAddress:AddressLine2"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:AddressLine2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aAddress:AddressLine3")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("aAddress:AddressLine3"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:AddressLine3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 } 
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("aAddress:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("aAddress:MainDivision")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("aAddress:MainDivision"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
 {try{executePipeline("ProcessRegion-GetState",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CountryCode",getObject("aAddress:CountryCode")))).addParameter(new ParameterEntry("StateID",getObject("aAddress:MainDivision")))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 100.",e);}} 
 {String value = null;try{value=context.getFormattedValue(getObject("Result:StateProvince:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<br/>");
 } 
 processOpenTag(response, pageContext, "countryname", new TagParameter[] {
new TagParameter("countrycode",getObject("aAddress:CountryCode")),
new TagParameter("locale",getObject("CurrentSession:Locale"))}, 104); 
      out.write("</a>\n</td>\n<td class=\"table_detail e s top\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("aAddress:isInvoiceToAddress")).booleanValue() && ((Boolean) getObject("aAddress:isShipToAddress")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 {out.write(localizeISText("CustomerAddressList_52.ThisIsAnInvoiceAndShippingAddress.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("aAddress:isInvoiceToAddress"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
 {out.write(localizeISText("CustomerAddressList_52.ThisIsAnInvoiceAddress.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("aAddress:isShipToAddress"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 {out.write(localizeISText("CustomerAddressList_52.ThisIsAShippingAddress.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 }}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("aAddress:ID"),null).equals(context.getFormattedValue(getObject("CustomerBO:PreferredInvoiceToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("CustomerAddressList_52.ThisIsThePreferredInvoiceAddress.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("aAddress:ID"),null).equals(context.getFormattedValue(getObject("CustomerBO:PreferredShipToAddressBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("CustomerAddressList_52.ThisIsThePreferredShippingAddress.text","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"e s\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"CustomerID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("customer.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"confirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("customer.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail e s\">");
 {out.write(localizeISText("CustomerAddressList_52.ThereAreCurrentlyNoAddressesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
      out.write("<br/><br/>");
 {out.write(localizeISText("CustomerAddressList_52.ClickNewToCreateANewAddress.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CONSUMERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"e s\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"CustomerID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"submit\" name=\"new\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("customer.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
      out.write("</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "156");} 
      out.write("<!-- EO Main Content -->");
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
