/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.pagelet;

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

public final class PageletExport_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("Page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageletExport.ExportPages.value",null))); getPipelineDictionary().put("HeaderText", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("PageFlag", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("Include",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageletExport.ExportIncludes.value",null))); getPipelineDictionary().put("HeaderText", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("PageFlag", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageletExport.ExportPageVariants.value",null))); getPipelineDictionary().put("HeaderText", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("PageFlag", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("TemplateFlag", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("Component",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageletExport.ExportComponents.value",null))); getPipelineDictionary().put("HeaderText", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("PageFlag", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("TemplateFlag", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("PageVariantTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageletExport.ExportPageTemplates.value",null))); getPipelineDictionary().put("HeaderText", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("PageFlag", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("TemplateFlag", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("ComponentTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageletExport.ExportComponentTemplates.value",null))); getPipelineDictionary().put("HeaderText", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("PageFlag", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("TemplateFlag", temp_obj);} 
 }}}}}} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletExport-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))).addURLParameter(context.getFormattedValue("PageletType",null),context.getFormattedValue(getObject("PageletType"),null)).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue(getObject("SearchType"),null)))),
new TagParameter("id",context.getFormattedValue("Export",null) + context.getFormattedValue(getObject("PageletType"),null)),
new TagParameter("text",getObject("HeaderText"))}, 27); 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PageletType"),
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value1",getObject("PageletType")),
new TagParameter("value0",getObject("ContentRepositoryUUID")),
new TagParameter("mapname","TargetPipelineParameters")}, 29); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("Page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("Include",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pageletentrypointsearch", new TagParameter[] {
new TagParameter("submitbuttonstemplate","content/pagelet/PageletExportButtons"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("hideselection","false"),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("page",getObject("PageFlag")),
new TagParameter("extendedheadingtemplate","content/pagelet/PageletExportHeader"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("disableselection","false"),
new TagParameter("notfoundtemplate","content/pagelet/PageletExportEmptyList"),
new TagParameter("targetpageletviewpipeline","ViewPageletExport-Dispatch"),
new TagParameter("uniqueid",context.getFormattedValue(getObject("PageletType"),null) + context.getFormattedValue("Export",null))}, 35); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("Component",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("PageVariantTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletType"),null).equals(context.getFormattedValue("ComponentTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pageletsearch", new TagParameter[] {
new TagParameter("template",getObject("TemplateFlag")),
new TagParameter("confirmpreview",getObject("confirmPreview")),
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("extendedheadingtemplate","content/pagelet/PageletExportHeader"),
new TagParameter("radiobuttons","false"),
new TagParameter("submitbuttonstemplate","content/pagelet/PageletExportButtons"),
new TagParameter("page",getObject("PageFlag")),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("notfoundtemplate","content/pagelet/PageletExportEmptyList"),
new TagParameter("targetpageletviewpipeline","ViewPageletExport-Dispatch"),
new TagParameter("uniqueid",context.getFormattedValue(getObject("PageletType"),null) + context.getFormattedValue("Export",null))}, 49); 
 }} 
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