/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.completeness;

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

public final class ContentSummary_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentRepository:TypeCode"),null).equals(context.getFormattedValue("21",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("MasterChannel", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("MasterChannel", temp_obj);} 
 } 
 {try{executePipeline("ViewContentSummary-GetStatistics",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentRepositoryUUID",getObject("ContentRepository:UUID")))).addParameter(new ParameterEntry("ContextPipeline",getObject("ContextPipeline")))))),"ObjectStatistics");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 17.",e);}} 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td colspan=\"5\" class=\"table_title aldi\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.title")}, 21); 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ObjectStatistics:UpdateInProgress"))))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ObjectStatistics:refresh"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 26); 
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(getObject("URLUtils:URLFromMap(ContextPipeline,ContextPipelineMap)"),null));
      out.write("'\", 5000)\n</script>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td colspan=\"5\" class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.statistics.inprogress")}, 32); 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatistics:ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"5\" class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.statistics.lastupdate")}, 39); 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ObjectStatistics:ObjectStatisticsGroup:LastModified"),"dd.MM.yy hh:mm aaa",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(".\n</td>\n</tr>\n<tr>\n<td colspan=\"5\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"5\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.statistics.elementcount")}, 46); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr> \n<td valign=\"top\" width=\"45%\" class=\"w\">\n<table border=\"0\" cellspacing=\"5\" cellpadding=\"0\" width=\"100%\">");
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Pages.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPages"))}, 54); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MasterChannel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPages-ViewSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.PageVariants.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPageVariants"))}, 57); 
 } else { 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPages-ViewSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.PageVariants.text1",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPageVariants"))}, 60); 
 } 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.PageTemplates.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfPageTemplates"))}, 64); 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContexts-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.ViewContexts.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfViewContexts"))}, 66); 
      out.write("</table>\n</td>\n<td width=\"2%\">\n</td>\n<td width=\"1\" class=\"overview_vertical_line\">\n<img width=\"1\" height=\"100%\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/>\n</td>\n<td width=\"2%\">\n</td>\n<td valign=\"top\" class=\"e\">\n<table border=\"0\" cellspacing=\"5\" cellpadding=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("MasterChannel"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageComponents-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Components.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfComponents"))}, 81); 
 } else { 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPageComponents-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Components.text1",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfComponents"))}, 84); 
 } 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletTemplatesTree-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageFlag",null),context.getFormattedValue("false",null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.ComponentTemplates.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfComponentTemplates"))}, 87); 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentIncludes-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ContentSummary.Includes.text",null))),
new TagParameter("attribute",getObject("ObjectStatistics:ObjectStatisticsGroup:NumberOfIncludes"))}, 89); 
      out.write("</table>\n</td>\n</tr>\n<tr>\n<td class=\"s\" colspan=\"5\"><img width=\"1\" height=\"0\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td>\n</tr>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ObjectStatistics:StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"5\" class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.description.staging.editing")}, 100); 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td colspan=\"5\" class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","content.contentoverview.contentsummary.description")}, 104); 
      out.write("</td>\n</tr>");
 } 
 } 
      out.write("</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContextPipelineMap:SLD_MANAGE_CONTENT")))).booleanValue() && ((Boolean) (((!((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ObjectStatistics:UpdateInProgress")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ObjectStatistics:refresh")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ObjectStatistics:StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 112); 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContextPipeline"),
new TagParameter("key2","ContextPipeline_"),
new TagParameter("key0","ContentRepositoryUUID"),
new TagParameter("value2",getObject("ContextPipelineMap")),
new TagParameter("value1",getObject("ContextPipeline")),
new TagParameter("value0",getObject("ContentRepository:UUID")),
new TagParameter("mapname","URLParameters")}, 113); 
      out.write(' ');
      out.write('\n');
 URLPipelineAction action424 = new URLPipelineAction(context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentSummary-Refresh\",URLParameters)"),null));String site424 = null;String serverGroup424 = null;String actionValue424 = context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentSummary-Refresh\",URLParameters)"),null);if (site424 == null){  site424 = action424.getDomain();  if (site424 == null)  {      site424 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup424 == null){  serverGroup424 = action424.getServerGroup();  if (serverGroup424 == null)  {      serverGroup424 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewContentSummary-Refresh\",URLParameters)"),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue424, site424, serverGroup424,true)); 
      out.write("<table class=\"w e s\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"5\" cellpadding=\"0\" align= \"right\" >\n<tr>\n<td class=\"button\" >\n<input type=\"submit\" name=\"refresh\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentSummary.Update.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
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