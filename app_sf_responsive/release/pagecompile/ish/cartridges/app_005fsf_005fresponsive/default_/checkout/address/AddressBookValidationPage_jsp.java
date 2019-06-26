/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.checkout.address;

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

public final class AddressBookValidationPage_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
 
 

response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/HeaderProgressBar", null, "5");} 
      out.write("<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 8); 
      out.write("</div>\n<h1>");
 {out.write(localizeISText("checkout.validate_address.header","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 URLPipelineAction action67 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddressBook-AddressValidation",null)))),null));String site67 = null;String serverGroup67 = null;String actionValue67 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddressBook-AddressValidation",null)))),null);if (site67 == null){  site67 = action67.getDomain();  if (site67 == null)  {      site67 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup67 == null){  serverGroup67 = action67.getServerGroup();  if (serverGroup67 == null)  {      serverGroup67 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCheckoutAddressBook-AddressValidation",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue67, site67, serverGroup67,true)); 
      out.write("<div class=\"row\">\n<div class=\"col-md-8\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AddressValidation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("NewBillingAddress"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EditBillingAddress"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<h2>");
 {out.write(localizeISText("checkout.validate_address.billing","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("NewShippingAddress"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EditShippingAddress"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<h2>");
 {out.write(localizeISText("checkout.validate_address.shipping","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 } 
 processOpenTag(response, pageContext, "addresssuggest", new TagParameter[] {
new TagParameter("targetaddress",getObject("AddressBO")),
new TagParameter("suggestedaddresses",getObject("SuggestedAddresses")),
new TagParameter("formprefix","address"),
new TagParameter("sourceaddress",getObject("AddressBO")),
new TagParameter("locale",getObject("CurrentSession:Locale")),
new TagParameter("validateaddressnoresultmessagekey","checkout.validate_address.no_result")}, 24); 
 } 
      out.write("<div class=\"form-group\">\n<button name=\"saveAddAnother\" class=\"btn btn-default\" type=\"submit\">");
 {out.write(localizeISText("checkout.validate_address.save_add_another","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>\n<div class=\"col-md-4\">\n<h2>");
 {out.write(localizeISText("checkout.order_details.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n<div class=\"cost-summary\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/CostSummary", null, "36");} 
      out.write("<button name=\"continue\" class=\"btn btn-lg btn-block btn-primary\" type=\"submit\">");
 {out.write(localizeISText("checkout.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/widgets/SecurityPrivacyPolicyLink.isml", null, "39");} 
      out.write("</div>\n</div>");
 out.print("</form>"); 
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
