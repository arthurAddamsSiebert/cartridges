/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.order;

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

public final class LineItemDelivery_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("LineItemDelivery_52.Delivery.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-ShowLineItemDetail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("historyStatus",null),context.getFormattedValue(getObject("historyStatus"),null))).addURLParameter(context.getFormattedValue("LineItemUUID",null),context.getFormattedValue(getObject("LineItemUUID"),null)).addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null)).addURLParameter(context.getFormattedValue("OrderDocumentNo",null),context.getFormattedValue(getObject("Order:DocumentNo"),null)).addURLParameter(context.getFormattedValue("ChannelID1",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("id",getObject("LineItemUUID")),
new TagParameter("text",getObject("LineItem:ProductName"))}, 4); 

getPipelineDictionary().put("SelectedTab", "Delivery");

 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderLineItemDetailsTabs_52.isml", null, "8");} 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ProductName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("LineItemDelivery_52.DeliveryInformationOfThisLineItem.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(".</td>\n</tr>\n</table>\n<!-- EO Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<colgroup>\n<col width=\"15%\" />\n<col width=\"85%\" />\n</colgroup>\n<tr>\n<td class=\"table_title2 s\" nowrap=\"nowrap\" colspan=\"2\">");
 {out.write(localizeISText("LineItemDelivery_52.ShippingAddress.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LineItem:ShipToAddressBO")))).booleanValue() && ((Boolean) ((((context.getFormattedValue("EmailAddress",null).equals(context.getFormattedValue(getObject("LineItem:ShipToAddressBO:AddressName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"label_text\" nowrap=\"nowrap\"><label class=\"label label_text\">");
 {out.write(localizeISText("LineItemDelivery_52.Recipient.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\" width=\"90%\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ShipToAddressBO:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ShipToAddressBO:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>\n<tr>\n<td class=\"label_text\" nowrap=\"nowrap\"><label class=\"label label_text\">");
 {out.write(localizeISText("LineItemDelivery_52.EmailAddress.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LineItem:ShipToAddressBO:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } else { 
      out.write(' ');
      out.write('\n');
 context.setCustomTagTemplateName("addressinfo","inc/OrderAddressInfo_52.isml",false,new String[]{"address"},null); 
 processOpenTag(response, pageContext, "addressinfo", new TagParameter[] {
new TagParameter("address",getObject("LineItem:ShipToAddressBO"))}, 39); 
 } 
      out.write("<tr>\n<td class=\"table_title2 s\" nowrap=\"nowrap\" colspan=\"2\">");
 {out.write(localizeISText("LineItemDelivery_52.DeliveryInformation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"label_text\" nowrap=\"nowrap\"><label class=\"label label_text\">");
 {out.write(localizeISText("LineItemDelivery_52.DesiredDeliveryDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("LineItem:DesiredDeliveryDate"),"MM/dd/yyyy",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td> \n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "50");} 
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