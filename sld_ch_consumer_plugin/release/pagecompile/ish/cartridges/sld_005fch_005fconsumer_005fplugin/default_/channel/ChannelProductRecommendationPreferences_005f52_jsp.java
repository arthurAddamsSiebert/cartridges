/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.channel;

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

public final class ChannelProductRecommendationPreferences_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewDomainPreference_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ChannelPreferences.text",null)))}, 4); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommendationPreferences_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.RecommendationEngines.text",null)))}, 5); 
      out.write("<!-- Title -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td width=\"100%\" class=\"table_title\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.RecommendationEngines.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- EO Title -->");
 URLPipelineAction action5 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommendationPreferences_52-Update",null)))),null));String site5 = null;String serverGroup5 = null;String actionValue5 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommendationPreferences_52-Update",null)))),null);if (site5 == null){  site5 = action5.getDomain();  if (site5 == null)  {      site5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup5 == null){  serverGroup5 = action5.getServerGroup();  if (serverGroup5 == null)  {      serverGroup5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductRecommendationPreferences_52-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("RecommendationForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue5, site5, serverGroup5,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"w e s\" width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description\"> \n");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.DefineWhichEventsShouldBeTrackedByWhatEngine.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr> \n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\">\n<tr>\n<td class=\"table_title2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.Events.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n<tr>\n<td class=\"table_title_description w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.InTheTableBelowThereAreAllEventsListed.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RecommEventsMap:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\" width=\"20%\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.Event.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 while (loop("ActiveRecommServices","RecommService",null)) { 
      out.write("<td class=\"table_header e s center\" width=\"100\">");
 {String value = null;try{value=context.getFormattedValue(getObject("RecommService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 } 
      out.write("</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.CurrentlyThereIsNoEventDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 while (loop("RecommEventsMap:KeySet","RecommEventID",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("RecommEventID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\">");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(context.getFormattedValue(getObject("RecommEventID"),null),null) + context.getFormattedValue(".description",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 while (loop("ActiveRecommServices","RecommService",null)) { 
 {Object temp_obj = (getObject("RecommEventsMap:get(RecommEventID):get(RecommService:ID)")); getPipelineDictionary().put("RecommEvent", temp_obj);} 
      out.write("<td class=\"table_detail e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListFormRecommEvents:SubForm(RecommService:ID):getParameter(RecommEventID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecommEvent:Domain"),null).equals(context.getFormattedValue(getObject("CurrentChannel:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("RecommEvent:Enabled")),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommEvents:SubForm(RecommService:ID):getParameter(RecommEventID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" checked=\"checked\" />");
 } else { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommEvents:SubForm(RecommService:ID):getParameter(RecommEventID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" />");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("RecommEvent:Enabled")),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommEvents:SubForm(RecommService:ID):getParameter(RecommEventID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" checked=\"checked\" disabled=\"disabled\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommEvents:SubForm(RecommService:ID):getParameter(RecommEventID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" disabled=\"disabled\" />");
 } 
 } 
 } else { 
 {out.write(localizeISText("sld_ch_consumer_plugin.NotPossible.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <sup>1)</sup>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("isWrongDomain", temp_obj);} 
 } 
 } 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"infobox w e s\">\n<tr>\n<td class=\"table_title2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.Requests.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n<tr>\n<td class=\"table_title_description w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.InTheTableBelowThereAreAllRequestsListedCanBeHandled.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RecommRequestsMap:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\" width=\"20%\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.Request.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 while (loop("ActiveRecommServices","RecommService",null)) { 
      out.write("<td class=\"table_header e s center\" width=\"100\">");
 {String value = null;try{value=context.getFormattedValue(getObject("RecommService:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 } 
      out.write("</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.CurrentlyThereIsNoRequestDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 while (loop("RecommRequestsMap:KeySet","RecommRequestID",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("RecommRequestID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s\">");
 {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue(context.getFormattedValue(getObject("RecommRequestID"),null),null) + context.getFormattedValue(".description",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 while (loop("ActiveRecommServices","RecommService",null)) { 
 {Object temp_obj = (getObject("RecommRequestsMap:get(RecommRequestID):get(RecommService:ID)")); getPipelineDictionary().put("RecommRequest", temp_obj);} 
      out.write("<td class=\"table_detail e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RecommRequest"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RecommRequest:Domain"),null).equals(context.getFormattedValue(getObject("CurrentChannel:Domain"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("RecommRequest:Enabled")),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommRequests:SubForm(RecommRequestID):getParameter(RecommService:ID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" checked=\"checked\" />");
 } else { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommRequests:SubForm(RecommRequestID):getParameter(RecommService:ID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" />");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue((getObject("RecommRequest:Enabled")),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommRequests:SubForm(RecommRequestID):getParameter(RecommService:ID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" checked=\"checked\" disabled=\"disabled\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ListFormRecommRequests:SubForm(RecommRequestID):getParameter(RecommService:ID):QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"true\" disabled=\"disabled\" />");
 } 
 } 
 } else { 
 {out.write(localizeISText("sld_ch_consumer_plugin.NotPossible.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" <sup>1)</sup>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("isWrongDomain", temp_obj);} 
 } 
 } 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isWrongDomain"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"left\" class=\"table_detail e s\" colspan=\"3\">\n<B><sup>1)</sup> ");
 {out.write(localizeISText("ChannelProductRecommendationPreferences_52.NotePreferencesAreNotEditableForSharedServiceConfig",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</B> \n</td>\n</tr>");
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("RecommRequestsMap:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"w e s\" colspan=\"3\">\n<table border=\"0\" cellspacing=\"3\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"updateRecommServiceConfig\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\" class=\"button\" /></td></td>\n<td class=\"button\"><input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 } 
      out.write("</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "192");} 
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
