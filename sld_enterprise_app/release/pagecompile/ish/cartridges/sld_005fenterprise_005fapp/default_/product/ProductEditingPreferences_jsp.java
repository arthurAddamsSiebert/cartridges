/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.product;

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

public final class ProductEditingPreferences_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigator -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PreferencesBreadcrumb", null, "4");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductEditingPreferences-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ProductEditing.text",null)))}, 5); 
      out.write("<!-- EO Page Navigator -->\n<!-- Working Area -->");
 URLPipelineAction action120 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductEditingPreferences-Update",null)))),null));String site120 = null;String serverGroup120 = null;String actionValue120 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductEditingPreferences-Update",null)))),null);if (site120 == null){  site120 = action120.getDomain();  if (site120 == null)  {      site120 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup120 == null){  serverGroup120 = action120.getServerGroup();  if (serverGroup120 == null)  {      serverGroup120 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductEditingPreferences-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductEditingForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue120, site120, serverGroup120,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<input name=\"webform-id\" type=\"hidden\" value=\"ProductEditingForm\"/>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s n\">");
 {out.write(localizeISText("sld_enterprise_app.ProductEditing.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.PleaseSpecifiyIfProductDescriptionsAreEditedAsPlai.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } else { 
 {out.write(localizeISText("sld_enterprise_app.DefineIfProductDescriptionsAreEditedAsPlainTextOrH.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" border=\"0\" alt=\"\"/>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td nowrap=\"nowrap\" class=\"label_checkbox\"><label class=\"label label_checkbox\">");
 {out.write(localizeISText("sld_enterprise_app.ShortDescription.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"input_checkbox\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("ProductEditingForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductEditingForm:ProductShortDescriptionEditMode:Value"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductShortDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductShortDescriptionEditMode\" id=\"ProductEditingForm_ProductShortDescriptionEditMode\" value=\"HTML\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductShortDescriptionEditMode\" id=\"ProductEditingForm_ProductShortDescriptionEditMode\" value=\"HTML\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("ProductEditingForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductEditingForm:ProductShortDescriptionEditMode:Value"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductShortDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductShortDescriptionEditMode\" id=\"ProductEditingForm_ProductShortDescriptionEditMode\" value=\"HTML\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductShortDescriptionEditMode\" id=\"ProductEditingForm_ProductShortDescriptionEditMode\" value=\"HTML\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" width=\"100%\"><label class=\"label label_checkbox_text label_light\" for=\"ProductEditingForm_ProductShortDescriptionEditMode\">");
 {out.write(localizeISText("sld_enterprise_app.EnableHTMLEditing.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_checkbox\"><label class=\"label label_checkbox\">");
 {out.write(localizeISText("sld_enterprise_app.LongDescription.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"input_checkbox\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("ProductEditingForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductEditingForm:ProductLongDescriptionEditMode:Value"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductLongDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductLongDescriptionEditMode\" id=\"ProductEditingForm_ProductLongDescriptionEditMode\" value=\"HTML\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductLongDescriptionEditMode\" id=\"ProductEditingForm_ProductLongDescriptionEditMode\" value=\"HTML\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) getObject("ProductEditingForm:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductEditingForm:ProductLongDescriptionEditMode:Value"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductLongDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductLongDescriptionEditMode\" id=\"ProductEditingForm_ProductLongDescriptionEditMode\" value=\"HTML\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"ProductEditingForm_ProductLongDescriptionEditMode\" id=\"ProductEditingForm_ProductLongDescriptionEditMode\" value=\"HTML\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_checkbox_text\" width=\"100%\"><label class=\"label label_checkbox_text label_light\" for=\"ProductEditingForm_ProductLongDescriptionEditMode\">");
 {out.write(localizeISText("sld_enterprise_app.EnableHTMLEditing.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td colspan=\"3\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "104");} 
      out.write("<!-- EO Working Area -->");
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
