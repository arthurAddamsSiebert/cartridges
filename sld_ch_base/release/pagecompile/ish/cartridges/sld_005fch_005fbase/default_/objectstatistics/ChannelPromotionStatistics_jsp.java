/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.objectstatistics;

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

public final class ChannelPromotionStatistics_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
 processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 5); 
 context.setCustomTagTemplateName("summaryline","objectstatistics/ObjectStatisticsSummaryLine.isml",false,new String[]{"attribute","text","link","hline"},null); 
 {Object temp_obj = ("ViewPromotionList-ParametricSearch"); getPipelineDictionary().put("SearchPipeline", temp_obj);} 
      out.write("<!-- start page navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewOnlineMarketing-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.title",null)))}, 19); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("marketing.promotionstatistics.title",null)))}, 20); 
      out.write("<!-- end page navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.title")}, 25); 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ObjectStatisticsGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Refresh"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\nwindow.setTimeout(\"self.location='");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),null));
      out.write("'\", 5000)\n</script>\n<tr>\n<td class=\"table_title_description w e s\" ><br/>");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.status.updating")}, 35); 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.lastupdated.message")}, 39); 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("ObjectStatisticsGroup:LastModified"),"dd.MM.yy hh:mm aaa",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(".</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"45%\">\n<table border=\"0\" cellspacing=\"5\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">");
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.NumberOfPromotions.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfPromotions"))}, 44); 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("PromotionSearchForm:Active:QualifiedName"),null),context.getFormattedValue("1",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.EnabledPromotions.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfEnabledPromotions"))}, 46); 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue(getObject("SearchPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("PromotionSearchForm:Active:QualifiedName"),null),context.getFormattedValue("0",null))).addURLParameter(context.getFormattedValue("SearchType",null),context.getFormattedValue("parametric",null)))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.DisabledPromotions.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:NumberOfDisabledPromotions"))}, 48); 
 processOpenTag(response, pageContext, "summaryline", new TagParameter[] {
new TagParameter("hline","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionCodeGroupList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelPromotionStatistics.TotalNumberOfCodes.text",null))),
new TagParameter("attribute",getObject("ObjectStatisticsGroup:TotalNumberOfPromotionCodes"))}, 50); 
      out.write("<tr>\n<td><img width=\"1\" height=\"0\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 processOpenTag(response, pageContext, "apptext", new TagParameter[] {
new TagParameter("key","marketing.promotionstatistics.description")}, 87); 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("Refresh")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StagingSystemType"),null).equals(context.getFormattedValue("EDITING",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
 URLPipelineAction action32 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-StartUpdate",null)))),null));String site32 = null;String serverGroup32 = null;String actionValue32 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-StartUpdate",null)))),null);if (site32 == null){  site32 = action32.getDomain();  if (site32 == null)  {      site32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup32 == null){  serverGroup32 = action32.getServerGroup();  if (serverGroup32 == null)  {      serverGroup32 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelPromotionStatistics-StartUpdate",null)))),null));out.print("\"");out.print(" name=\"");out.print("refresh");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue32, site32, serverGroup32,true)); 
      out.write("<table class=\"w e s\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\" width=\"100%\">\n<tr>\n<td>\n<table cellspacing=\"4\" cellpadding=\"0\" align=\"right\">\n<tr>\n<td class=\"button\" >\n<input type=\"hidden\" name=\"GroupName\" value=\"Promotion\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelPromotionStatistics.Update.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
      out.write(' ');
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
