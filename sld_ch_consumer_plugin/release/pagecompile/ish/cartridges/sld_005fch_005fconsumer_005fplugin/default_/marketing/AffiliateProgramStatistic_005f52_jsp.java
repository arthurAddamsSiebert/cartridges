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

public final class AffiliateProgramStatistic_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Main Content -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("AffiliateProgram:DisplayName"),null).trim()),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AffiliateProgramStatistic_52.Statistics.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliateProgram:UUID"),null))))),
new TagParameter("id",getObject("AffiliateProgram:UUID")),
new TagParameter("text",getObject("AffiliateProgram:DisplayName"))}, 5); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("AffiliateProgramStatistic_52.Statistics.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliateProgram:UUID"),null))))),
new TagParameter("id",getObject("AffiliateProgram:UUID")),
new TagParameter("text",getObject("AffiliateProgram:Id"))}, 7); 
 } 
 URLPipelineAction action595 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Dispatch",null)))),null));String site595 = null;String serverGroup595 = null;String actionValue595 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Dispatch",null)))),null);if (site595 == null){  site595 = action595.getDomain();  if (site595 == null)  {      site595 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup595 == null){  serverGroup595 = action595.getServerGroup();  if (serverGroup595 == null)  {      serverGroup595 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgramStatistic_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("StatisticForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue595, site595, serverGroup595,true)); 
      out.write("<input type=\"hidden\" name=\"AffiliatePartnerUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AffiliateProgram:AffiliatePartner:UUID"),null));
      out.write("\"/>\n<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n s table_tabs_dis_background\" nowrap=\"nowrap\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AffiliateProgramUUID",null),context.getFormattedValue(getObject("AffiliateProgram:UUID"),null))).addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliateProgram:AffiliatePartner:UUID"),null))),null));
      out.write("\" class=\"table_tabs_dis\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n<td class=\"e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.Statistics.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>\n<!-- /Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\"> \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("AffiliateProgram:DisplayName"),null).trim()),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.StatisticsForTheAffiliateProgram.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"aldi\">\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.ProgramStart.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgram:ProgramStart"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:ProgramStart"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {out.write(localizeISText("AffiliateProgramStatistic_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.ProgramEnd.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgram:ProgramEnd"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgram:ProgramEnd"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {out.write(localizeISText("AffiliateProgramStatistic_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AffiliateProgramAccountBalances") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 {Object temp_obj = ("1"); getPipelineDictionary().put("first", temp_obj);} 
 while (loop("AffiliateProgramAccountBalances",null,null)) { 
      out.write("<tr>\n<td class=\"fielditem\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("first"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 {out.write(localizeISText("AffiliateProgramStatistic_52.TotalRevenue.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(':');
 {Object temp_obj = ("0"); getPipelineDictionary().put("first", temp_obj);} 
 } else { 
      out.write("\n&nbsp;\n");
 } 
      out.write("</td>\n<td class=\"table_detail\" id=\"revenue\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramAccountBalances"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.TotalRevenue.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" id=\"revenue\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.NA.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.TotalOfOrders.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" id=\"ordersCount\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramAccount:TransactionsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.RegisteredUser.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" id=\"usersCount\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgramStatistic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramStatistic:ProfileCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem\">");
 {out.write(localizeISText("AffiliateProgramStatistic_52.NumberOfSessions.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" id=\"sessionsCount\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AffiliateProgramStatistic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AffiliateProgramStatistic:SessionCount"),new Integer(INTEGER),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('\n');
      out.write('0');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "111");} 
      out.write("<!-- EO Main Content -->");
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