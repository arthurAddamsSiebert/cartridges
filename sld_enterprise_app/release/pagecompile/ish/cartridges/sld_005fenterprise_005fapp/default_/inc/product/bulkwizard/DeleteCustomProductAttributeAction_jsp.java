/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc.product.bulkwizard;

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

public final class DeleteCustomProductAttributeAction_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!--DeleteCustomProductAttributeAction.isml-->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductProcessingWizard-SelectNextPageByAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ActionID",null),context.getFormattedValue("DeleteCustomProductAttribute",null))).addURLParameter(context.getFormattedValue("IsSearchFired",null),context.getFormattedValue(getObject("IsSearchFired"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("DeleteCustomProductAttributeAction.Step2DefineAttributeToDelete.text",null)))}, 7); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.Step2DeleteCustomProductAttribute.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoAttributeNameDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.AttributeNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"w e s table_title_description\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.Step2Of3EnterOrSelectValues.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action189 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));String site189 = null;String serverGroup189 = null;String actionValue189 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null);if (site189 == null){  site189 = action189.getDomain();  if (site189 == null)  {      site189 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup189 == null){  serverGroup189 = action189.getServerGroup();  if (serverGroup189 == null)  {      serverGroup189 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("FormPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue189, site189, serverGroup189,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("NoAttributeNameDefined",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(" nowrap=\"nowrap\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.AttributeName",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>&nbsp;\n</td>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"AttributeName\" maxlength=\"400\" size=\"40\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n<td width=\"100%\">\n&nbsp;\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("DeleteCustomProductAttributeAction.Locale.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;\n</td>\n<td class=\"table_detail\">\n<select name=\"AttributeLocale\" class=\"inputfield_en\" style=\"width:255px;\">\n<option value=\"\" selected=\"selected\">");
 {out.write(localizeISText("sld_enterprise_app.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("AttributeLocale"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"8\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "79");} 
      out.write("<input type=\"hidden\" name=\"ActionID\" value=\"DeleteCustomProductAttribute\"/>\n<input type=\"hidden\" name=\"IsSearchFired\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"actionList\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirm\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n");
 out.print("</form>"); 
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
