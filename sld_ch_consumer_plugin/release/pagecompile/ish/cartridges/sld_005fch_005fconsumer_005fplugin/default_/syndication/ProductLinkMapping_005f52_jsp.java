/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.syndication;

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

public final class ProductLinkMapping_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinkMapping_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductLinkMapping_52.MasterRepositoryMappingRulesLinks.text",null)))}, 5); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinkMapping_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductLinkMapping_52.ChannelRepositoryMappingRulesLinks.text",null)))}, 7); 
 } 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<!-- Tabs -->");
 {Object temp_obj = ("Links"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductMappingTabs_52", null, "16");} 
      out.write("<!-- EO Tabs -->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductLinkMapping_52.MasterRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductLinkMapping_52.ChannelRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ProductLinkMapping_52.MappingRulesLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductLinkMapping_52.ActivateTheCheckboxToPreserveLinks.table_title_description",null,null,context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif",null),"0",null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n<br/>");
 {out.write(localizeISText("ProductLinkMapping_52.AnyRelationsAreEffectiveOnlyIfTheLinkedProductAvailable",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductLinkMapping_52.TheCheckboxIsActiveIfLinksPreserved",null,null,context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif",null),"0",null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n<br/>");
 {out.write(localizeISText("ProductLinkMapping_52.AnyRelationsAreEffectiveOnlyIfTheLinkedProductAvailable",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action415 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinkMapping_52-Update",null)))),null));String site415 = null;String serverGroup415 = null;String actionValue415 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinkMapping_52-Update",null)))),null);if (site415 == null){  site415 = action415.getDomain();  if (site415 == null)  {      site415 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup415 == null){  serverGroup415 = action415.getServerGroup();  if (serverGroup415 == null)  {      serverGroup415 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinkMapping_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("productAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue415, site415, serverGroup415,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s n\">\n<tr>\n<td class=\"table_detail left\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
 while (loop("ProductDataMappingRules",null,null)) { 
      out.write("<input type=\"hidden\" name=\"ProductDataMappingRuleID\" value=\"");
      out.print(context.getFormattedValue(getObject("ProductDataMappingRules:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
 } 
      out.write("<input type=\"checkbox\" name=\"mappingEnabled\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductDataMappingRules") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n&nbsp;&nbsp;");
 {out.write(localizeISText("ProductLinkMapping_52.PreserveProductAndCategoryLinks.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"n\" nowrap=\"nowrap\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ProviderID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"TypeCode\" value=\"9\"/>\n<input type=\"hidden\" name=\"FunctionClassName\" value=\"com.intershop.component.mvc.capi.mapping.ProductLinkMappingRule\"/>\n<input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLinkMapping_52.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "76");} 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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
