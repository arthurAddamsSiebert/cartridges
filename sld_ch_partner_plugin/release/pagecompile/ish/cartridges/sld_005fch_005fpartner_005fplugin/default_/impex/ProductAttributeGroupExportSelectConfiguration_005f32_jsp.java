/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:18 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.impex;

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

public final class ProductAttributeGroupExportSelectConfiguration_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_32-SelectConfiguration",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedObjectUUID",null),context.getFormattedValue(getObject("SelectedObjectUUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","prodAttrGrpExpSlcCfg"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttributeGroupExportSelectConfiguration_32.ProductAttributeGroupExportStep2ConfigureExport",null)))}, 3); 
 URLPipelineAction action257 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_32-Dispatch",null)))),null));String site257 = null;String serverGroup257 = null;String actionValue257 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_32-Dispatch",null)))),null);if (site257 == null){  site257 = action257.getDomain();  if (site257 == null)  {      site257 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup257 == null){  serverGroup257 = action257.getServerGroup();  if (serverGroup257 == null)  {      serverGroup257 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupExport_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttributeGroupExportForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue257, site257, serverGroup257,true)); 
      out.write("<input type=\"submit\" name=\"Export\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupExportSelectConfiguration_32.Export.input",null)),null));
      out.write("\" style=\"position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ProductAttributeGroupExportStep2ConfigureExport",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeGroupExportForm:isSubmitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("ProductAttributeGroupExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeGroupExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ExportCouldNotBeExecuted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeGroupExportForm:isSubmitted")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ProductAttributeGroupExportForm:ExportFile:Value")); getPipelineDictionary().put("ExportFileName", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "26");} 
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.Step2Of2.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.FieldsWithRedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td colspan=\"2\" width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail center s\" width=\"1%\"><input type=\"radio\" id=\"ExportSearchResult\" name=\"ExportSearchResult\" value=\"true\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>\n<td class=\"table_detail main w s\" nowrap=\"nowrap\"><label class=\"label label_radio_text label_light\" for=\"ExportSearchResult\">&nbsp;");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ExportAllProductAttributeGroups.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"table_detail center s\" width=\"1%\"><input type=\"radio\" id=\"ExportSelectedProductAttributeGroups\" name=\"ExportSearchResult\" value=\"false\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } else { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>\n<td class=\"table_detail main w s\" nowrap=\"nowrap\"><label class=\"label label_radio_text label_light\" for=\"ExportSelectedProductAttributeGroups\">&nbsp;");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ExportSelectedProductAttributeGroups.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr> \n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductAttributeGroupExportForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ProductAttributeGroupExportForm:ExportFile:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeGroupExportForm:ExportFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ExportFile",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2 s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ExportFile",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
      out.write("<td class=\"fielditem2 s\" width=\"100%\"><input type=\"text\" name=\"ProductAttributeGroupExportForm_ExportFile\" size=\"40\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupExportForm:ExportFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>");
 } else { 
      out.write("<td class=\"fielditem2 s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupExportSelectConfiguration_32.ExportFile",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"fielditem2 s\" width=\"100%\"><input type=\"text\" name=\"ProductAttributeGroupExportForm_ExportFile\" size=\"40\" class=\"inputfield_en\"/></td>");
 } 
      out.write("</tr>\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td></tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"Back\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupExportSelectConfiguration_32.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SearchType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"JobDescription\" value=\"Export Attribute Groups\"/>\n<input type=\"hidden\" name=\"ExportDirectory\" value=\"catalog\"/>\n<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"DefaultButton\" value=\"Export\"/>\n<input type=\"submit\" name=\"Export\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupExportSelectConfiguration_32.Export.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupExportSelectConfiguration_32.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n");
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
