/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.smc.default_;

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

public final class SMCPageCache_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"breadcrumb\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null),context.getFormattedValue("",null),context.getFormattedValue("SMC",null)))),null));
      out.write("\" class=\"breadcrumb\">");
 {out.write(localizeISText("smc.SiteManagement.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;&gt;&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("SMCPageCache.PageCache.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"7\" alt=\"\" border=\"0\"/></div>\n<!-- EO Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Site"))))).booleanValue() && ((Boolean) (getObject("Site:isPageCachingAllowed"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("PageCachingEnabled", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("PageCachingEnabled", temp_obj);} 
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>");
 {Object temp_obj = ("Page Cache"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"SiteManagementTabs", null, "21");} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action12 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewPageCache-Dispatch",null)))),null));String site12 = null;String serverGroup12 = null;String actionValue12 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewPageCache-Dispatch",null)))),null);if (site12 == null){  site12 = action12.getDomain();  if (site12 == null)  {      site12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup12 == null){  serverGroup12 = action12.getServerGroup();  if (serverGroup12 == null)  {      serverGroup12 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("SMCViewPageCache-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PageCacheForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue12, site12, serverGroup12,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"DomainPageCacheIndexingEnabled\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"DomainPageCacheKeywordProcessingEnabled\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e\">\n<tr>\n<td colspan=\"3\" width=\"100%\" class=\"table_title s\"><input type=\"hidden\" name=\"DomainUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Site:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("ChannelRepository:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Site:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"3\" class=\"table_title_description s\">");
 {out.write(localizeISText("SMCPageCache.MaximumAgeOfStaticContentDefinition.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" border=\"0\" alt=\"\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SMCPageCache.MaximumAgeOfStaticContent.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" width=\"100%\" colspan=\"2\"><input type=\"text\" name=\"DomainStaticContentMaxAge\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Site:StaticContentMaxAge"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" size=\"12\" />&nbsp;");
 {out.write(localizeISText("SMCPageCache.MaximumAgeOfStaticContent.comment","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SMCPageCache.PageCaching.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"2\"><input type=\"checkbox\" name=\"DomainPageCachingAllowed\" value=\"true\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>\n</tr>\n<tr>\n<td class=\"fielditem\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SMCPageCache.ExplicitKeywordProcessing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"2\"><input type=\"checkbox\" name=\"DomainPageCacheKeywordProcessingEnabled\" value=\"Enabled\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n</tr>\n<tr>\n<td class=\"fielditem\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SMCPageCache.FullTextIndexing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"2\"><input type=\"checkbox\" name=\"DomainPageCacheIndexingEnabled\" value=\"Enabled\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" border=\"0\" alt=\"\"/></td>\n</tr>\n<tr>\n<td class=\"n\" align=\"right\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class = \"button\" name=\"Ok\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("smc.Apply.button",null)),null));
      out.write("\"/></td>\n<td class=\"button\"><input type=\"reset\" class = \"button\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("smc.Reset.button",null)),null));
      out.write("\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\" class=\"table_subtitle s n\">");
 {out.write(localizeISText("SMCPageCache.PageCacheInvalidation.table_subtitle","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Invalidate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"notification s\">\n<tr valign=\"top\">\n<td class=\"e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\" alt=\"\" /></td>\n<td width=\"100%\">");
 {out.write(localizeISText("SMCPageCache.ThePageCacheInvalidationWasSuccessful.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Prefetch"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"notification s\">\n<tr valign=\"top\">\n<td class=\"e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\" alt=\"\" /></td>\n<td width=\"100%\">");
 {out.write(localizeISText("SMCPageCache.ThePrefetchingOfThePageCacheWasStarted.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StopPrefetch"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"notification s\">\n<tr valign=\"top\">\n<td class=\"e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\" alt=\"\" /></td>\n<td width=\"100%\">");
 {out.write(localizeISText("SMCPageCache.ThePrefetchingOfThePageCacheWasStopped.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("InvalidateBySearchword"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"3\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"notification s\">\n<tr valign=\"top\">\n<td class=\"e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/informations_ico.png\" alt=\"\" /></td>\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("InvalidationSearchwords"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
 {out.write(localizeISText("SMCPageCache.TheSelectivePageCacheInvalidationHasBeenInitiated.fielditem2","",null,encodeString(context.getFormattedValue(getObject("InvalidationSearchwords"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } else { 
 {out.write(localizeISText("SMCPageCache.PleaseSpecifyASearchwordFirst.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<td>\n</tr>");
 } 
      out.write("<tr>\n<td colspan=\"3\" class=\"table_title_description s\">");
 {out.write(localizeISText("SMCPageCache.InsertSearchwordsAndClickInvalidate.table_title_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" border=\"0\" alt=\"\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" >");
 {out.write(localizeISText("SMCPageCache.InvalidateAllPagesContainingTheFollowing.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><textarea rows=\"5\" cols=\"50\" name=\"InvalidationSearchwords\" class=\"inputfield_en\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("InvalidationSearchwords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea></td>\n<td valign=\"top\" style=\"padding-left: 6px;padding-top: 1px;\">\n</td>\n</tr>\n</table>\n</td> \n<td class=\"table_detail_comment\" width=\"100%\">");
 {out.write(localizeISText("SMCPageCache.MultipleSearchwordsAreSeparated.catalog_description","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br /><br /><br /><br />\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" class=\"button\" name=\"InvalidateBySearchword\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.Invalidate.button",null)),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheKeywordProcessingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("DomainPageCacheIndexingEnabled"),null).equals(context.getFormattedValue("Enabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"n s\" align=\"right\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"StopPrefetch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.StopPrefetching.button",null)),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"Prefetch\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.PrefetchCache.button",null)),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" name=\"Invalidate\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SMCPageCache.InvalidateCompleteCache.button",null)),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageCachingEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 URLPipelineAction action13 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null));String site13 = null;String serverGroup13 = null;String actionValue13 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null);if (site13 == null){  site13 = action13.getDomain();  if (site13 == null)  {      site13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup13 == null){  serverGroup13 = action13.getServerGroup();  if (serverGroup13 == null)  {      serverGroup13 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("Cache-ListAllSites",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue13, site13, serverGroup13,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"backbar_left\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"back\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("smc.BackToList.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
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
