/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.marketing;

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

public final class DeletePromotionsActionConfirmation_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n<!-- Page Navigator -->\n");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Step2Confirmation.text",null)))}, 4); 
      out.write("\n<!-- EO Page Navigator -->\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td class=\"table_title aldi\">");
 {out.write(localizeISText("DeletePromotionsActionConfirmation_52.Step2DeletePromotionsConfirmation.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t</tr>\n</table>\t\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"w e s confirm_box\">\n\t<tr>\n\t\t<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t<td class=\"confirm\" width=\"100%\">\n\t\t\t");
 {out.write(localizeISText("DeletePromotionsActionConfirmation_52.ThisPromotionProcessingActionWillDeleteAllPromotion.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\n</table>\n\n");
 URLPipelineAction action554 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null));String site554 = null;String serverGroup554 = null;String actionValue554 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null);if (site554 == null){  site554 = action554.getDomain();  if (site554 == null)  {      site554 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup554 == null){  serverGroup554 = action554.getServerGroup();  if (serverGroup554 == null)  {      serverGroup554 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionProcessingWizard_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("DeletePromotionsConfirmation");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue554, site554, serverGroup554,true)); 
      out.write("\n\t<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"SelectedMenuItem\" value=\"OnlineMarketing\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ActionID\" value=\"DeletePromotions\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"PageableName\" value=\"Objects\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"deletePromotions\" value=\"true\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ProcessDescription\" value=\"Deleting Promotions\"/>\n\t\t\t\t\t\t\t<input type=\"submit\" name=\"actionList\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t\t<td align=\"right\">\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"finish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Finish.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("DeletePromotionsActionConfirmation_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
      out.write("\n<!-- EO Main Content -->\n<!-- EO Working Area -->");
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