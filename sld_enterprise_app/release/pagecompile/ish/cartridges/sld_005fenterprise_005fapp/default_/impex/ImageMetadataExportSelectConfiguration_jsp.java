/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.impex;

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

public final class ImageMetadataExportSelectConfiguration_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removewizard","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Validate",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ImageMetadataExportSelectConfiguration.ImageViewsImageTypesAndImageSetsExport.text",null)))}, 3); 
      out.write('\n');
      out.write('\n');
 URLPipelineAction action634 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Dispatch",null)))),null));String site634 = null;String serverGroup634 = null;String actionValue634 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Dispatch",null)))),null);if (site634 == null){  site634 = action634.getDomain();  if (site634 == null)  {      site634 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup634 == null){  serverGroup634 = action634.getServerGroup();  if (serverGroup634 == null)  {      serverGroup634 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewImageMetadataExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageMetadataExportConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue634, site634, serverGroup634,true)); 
      out.write("\t\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ImageViewsImageTypesAndImageSetsExport.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t</tr>\n\t</table>\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ImageMetadataExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isMissing")).booleanValue() || ((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t\t\t<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("BMEcatExportSelectCatalog.ExportCouldNotBeExecutedValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ImageMetadataExportConfiguration:ImageViews:isMissing")).booleanValue() && ((Boolean) getObject("ImageMetadataExportConfiguration:ImageTypes:isMissing")).booleanValue() && ((Boolean) getObject("ImageMetadataExportConfiguration:ImageSets:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n\t\t\t\t<tr>\n\t\t\t\t\t<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t\t\t<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ExportCouldNotBeExecuted.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t</tr>\n\t\t\t</table>\n\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FILENAME_ALREADY_IN_USE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("\n\t\t\t");
 {Object temp_obj = (getObject("ImageMetadataExportConfiguration:SelectedFile:Value")); getPipelineDictionary().put("ExportFileName", temp_obj);} 
      out.write("\n\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/inc/OverwriteExportFileConfirmation", null, "28");} 
      out.write('\n');
      out.write('	');
      out.write('	');
 }}} 
      out.write('\n');
      out.write('	');
 } 
      out.write("\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr>\n\t\t\t<td class=\"table_title_description\">");
 {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ExportImageViewsImageTypesAndImageSets.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t</tr>\n\t</table>\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr>\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ImageMetadataExportConfiguration:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isMissing")).booleanValue() || ((Boolean) getObject("ImageMetadataExportConfiguration:SelectedFile:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td nowrap=\"nowrap\" class=\"label\" width=\"1%\"><label class=\"label label_error\" for=\"ImageMetadataExportConfiguration_SelectedFile\">");
 {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t<td nowrap=\"nowrap\" class=\"label\" width=\"1%\"><label class=\"label\" for=\"ImageMetadataExportConfiguration_SelectedFile\">");
 {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t<td class=\"table_detail\"><input type=\"text\" name=\"ImageMetadataExportConfiguration_SelectedFile\" id=\"ImageMetadataExportConfiguration_SelectedFile\" size=\"40\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageMetadataExportConfiguration:SelectedFile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></td>\n\t\t\t");
 } else { 
      out.write("\n\t\t\t\t<td nowrap=\"nowrap\" class=\"label\" width=\"1%\"><label class=\"label\" for=\"ImageMetadataExportConfiguration_SelectedFile\">");
 {out.write(localizeISText("ViewContextExportHeader.ExportFile.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n\t\t\t\t<td class=\"table_detail\"><input type=\"text\" name=\"ImageMetadataExportConfiguration_SelectedFile\" id=\"ImageMetadataExportConfiguration_SelectedFile\" size=\"40\" class=\"inputfield_en\"/></td>\n\t\t\t");
 } 
      out.write("\n\t\t</tr>\n\t\t\n\t\t<tr>\n\t\t\t<td class=\"\">&nbsp;</td>\n\t\t\t<td>\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"input_checkbox\" >\n\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"ImageMetadataExportConfiguration_ImageViews\" id=\"ImageMetadataExportConfiguration_ImageViews\" value=\"true\"\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageViews:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>&nbsp;\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ImageMetadataExportConfiguration_ImageViews\">");
 {out.write(localizeISText("sld_enterprise_app.ImageView.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t\t\n\t\t<tr>\n\t\t\t<td class=\"\">&nbsp;</td>\n\t\t\t<td>\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td  class=\"input_checkbox\" >\n\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"ImageMetadataExportConfiguration_ImageTypes\" id=\"ImageMetadataExportConfiguration_ImageTypes\" value=\"true\"\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageTypes:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>&nbsp;\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td  class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ImageMetadataExportConfiguration_ImageTypes\">");
 {out.write(localizeISText("sld_enterprise_app.ImageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t\t\n\t\t<tr>\n\t\t\t<td class=\"\">&nbsp;</td>\n\t\t\t<td>\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td  class=\"input_checkbox\" >\n\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"ImageMetadataExportConfiguration_ImageSets\" id=\"ImageMetadataExportConfiguration_ImageSets\" value=\"true\"\n\t\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageMetadataExportConfiguration:ImageSets:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/>&nbsp;\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td  class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ImageMetadataExportConfiguration_ImageSets\">");
 {out.write(localizeISText("ImageMetadataExportSelectConfiguration.ImageSet.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t\t\n\t</table>\n\t<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n\t\t<tr>\n\t\t\t<td align=\"right\">\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"JobDescription\" value=\"Export Image Views, Image Types and Image Sets\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ExportDirectory\" value=\"catalog\"/>\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"DefaultButton\" value=\"Export\"/>\n\t\t\t\t\t\t\t<input type=\"submit\" name=\"Export\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletContentExport.Export.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t\n");
 out.print("</form>"); 
      out.write('\n');
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