/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.syndication;

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
import com.intershop.beehive.core.capi.url.*;
import com.intershop.beehive.core.capi.url.*;

public final class SynchronizationOverview_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization-Overview",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SynchronizationOverview.Synchronization.text",null)))}, 4); 
 URLPipelineAction action573 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization-Dispatch",null)))),null));String site573 = null;String serverGroup573 = null;String actionValue573 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization-Dispatch",null)))),null);if (site573 == null){  site573 = action573.getDomain();  if (site573 == null)  {      site573 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup573 == null){  serverGroup573 = action573.getServerGroup();  if (serverGroup573 == null)  {      serverGroup573 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue573, site573, serverGroup573,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<!-- Space -->\n<td valign=\"top\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("SynchronizationOverview.SynchronizeProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- confirmation if nothing is selected -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NothingSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("SynchronizationOverview.YouHaveNotSelectedAnySourceRepositoryUseTheCheckbo.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else { 
      out.write("<!-- confirmation synchronization of all repositories-->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmSynchronization"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Products:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("SynchronizationOverview.NoChangedProductsToSynchronizeFound.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } else { 
      out.write("<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.0ProductsWillBeSynchronized.error",null,null,context.getFormattedValue(getObject("Products:ElementCount"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"synchronize\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td>&nbsp;</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- start error handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyncErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("SynchronizationOverview.SynchronizationIsAlreadyInProgress.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmSynchronizationAll"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.0ProductsWillBeSynchronized.error",null,null,context.getFormattedValue(getObject("Products:ElementCount"),null),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"synchronizeAll\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.OK.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td>&nbsp;</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("SynchronizationOverview.SynchronizeProductsToUpdateDerivedProducts.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("SynchronizationOverview.ClickDetailsToViewTheChangedProduct.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<br/>");
 {out.write(localizeISText("SynchronizationOverview.ClickDetailsToViewTheChangedProducts.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Parents") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("<td class=\"w s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','SelectedRepositoryUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','SelectedRepositoryUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header w s\" nowrap=\"nowrap\"> ");
 {out.write(localizeISText("SynchronizationOverview.Source.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </td>\n<td class=\"table_header w s\" nowrap=\"nowrap\"> ");
 {out.write(localizeISText("SynchronizationOverview.LastSynchronization.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </td>\n<td class=\"table_header w s\" nowrap=\"nowrap\"> ");
 {out.write(localizeISText("SynchronizationOverview.ChangedProducts.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </td>\n<td class=\"table_header w s\" nowrap=\"nowrap\"> ");
 {out.write(localizeISText("SynchronizationOverview.Schedule.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" </td>\n<td class=\"table_header w e s\" nowrap=\"nowrap\">&nbsp;</td>\n</tr>");
 while (loop("Parents",null,null)) { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("isSelected", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Selection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { 
 while (loop("Selection",null,null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Parents:UUID"),null).equals(context.getFormattedValue(getObject("Selection"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization-ViewParentRepository",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Parents:UUID"),null))).addURLParameter(context.getFormattedValue("Checked",null),context.getFormattedValue("Checked",null))),null), null, null, "152");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isSelected", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",152);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isSelected"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
 {out.flush();
URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization-ViewParentRepository",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("RepositoryUUID",null),context.getFormattedValue(getObject("Parents:UUID"),null)))),null), null, null, "156");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} 
 } 
 } 
      out.write("</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" colspan=\"2\" class=\"table_detail w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"PageableName\" value=\"Objects\"/>\n<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
 {out.write(localizeISText("SynchronizationOverview.SynchronizeProducts","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"/>\n<input type=\"submit\" name=\"confirmSynchronizationAll\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview.SynchronizeAll.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirmSynchronization\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SynchronizationOverview.Synchronize.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("SynchronizationOverview.NoSourceRepositoryFound.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "196");} 
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
