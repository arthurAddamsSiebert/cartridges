/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.replication;

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

public final class ReplicationTaskHistory_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue("- ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ReplicationTaskHistory_52.StatusHistory.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-ShowHistory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ReplicationTaskUUID",null),context.getFormattedValue(getObject("ReplicationTask:UUID"),null))))),
new TagParameter("id","ReplicationTaskDetail"),
new TagParameter("text",getObject("ReplicationTask:TaskID"))}, 3); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");

			getPipelineDictionary().put("SelectedTab", "History");
			
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ReplicationTaskTabs_52", null, "11");} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ReplicationTask:TaskID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ReplicationTaskHistory_52.StatusHistory.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"e w\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>");
 URLPipelineAction action154 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null));String site154 = null;String serverGroup154 = null;String actionValue154 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null);if (site154 == null){  site154 = action154.getDomain();  if (site154 == null)  {      site154 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup154 == null){  serverGroup154 = action154.getServerGroup();  if (serverGroup154 == null)  {      serverGroup154 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicationTask_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("dispatch");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue154, site154, serverGroup154,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<input type=\"hidden\" name=\"ReplicationTaskUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("ReplicationTask:UUID"),null));
      out.write("\"/>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ReplicationTaskHistoryEntries") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationTaskHistory_52.NewStatus.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationTaskHistory_52.ChangedBy.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ReplicationTaskHistory_52.ChangeTime.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;</td>\n</tr>");
 while (loop("ReplicationTaskHistoryEntries","entry",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "replicationtaskstate", new TagParameter[] {
new TagParameter("state",getObject("entry:NewState"))}, 39); 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("entry:ChangedByNull")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("entry:ChangedBy:Profile:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("entry:ChangedBy:Profile:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("&nbsp;\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("entry:LastModified"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("entry:LastModified"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ReplicationTaskHistory_52.NoStatusHistoryEntries.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr> \n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ReplicationTaskHistoryEntries"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","ReplicationTaskHistoryEntries")}, 59); 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "68");} 
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