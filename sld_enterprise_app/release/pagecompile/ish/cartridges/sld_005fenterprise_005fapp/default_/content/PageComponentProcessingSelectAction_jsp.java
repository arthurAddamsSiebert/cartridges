/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content;

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

public final class PageComponentProcessingSelectAction_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("<!-- TEMPLATENAME: PageComponentProcessingSelectAction.isml -->\n");
 
setEncodingType("text/html"); 
      out.write("<!-- Working Area -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.EditAllComponents",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.EditSelectedComponents",null))); getPipelineDictionary().put("AssignmentMessage", temp_obj);} 
 }} 
      out.write("<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-BackToSelectAction",null))))),
new TagParameter("wizard","true"),
new TagParameter("id","PageProcessingSelectAction"),
new TagParameter("text",context.getFormattedValue(getObject("AssignmentMessage"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.Step1SelectAction",null)),null))}, 14); 
      out.write("<!-- EO Page Navigator -->");
 URLPipelineAction action430 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));String site430 = null;String serverGroup430 = null;String actionValue430 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null);if (site430 == null){  site430 = action430.getDomain();  if (site430 == null)  {      site430 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup430 == null){  serverGroup430 = action430.getServerGroup();  if (serverGroup430 == null)  {      serverGroup430 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewComponentProcessingWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue430, site430, serverGroup430,true)); 
      out.write("<input type=\"hidden\" name=\"PageletUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletUUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"RepositoryUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ContextObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContextObject:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AssignmentMessage"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.SelectAction",null)),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_ACTION_NOT_SELECTED"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.YouHaveNotSelectedAnActionSelectAnActionAndThenCli.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmDeleteComponent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box\">");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.DeleteComponents.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteComponents"),
new TagParameter("okbtnname","deleteComponents"),
new TagParameter("type","sdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.AreYouSureThatYouWantToDeleteTheSelectedPageCompon.message",null)))}, 47); 
      out.write("</table>\n<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.DeletesTheSelectedPageComponents.input",null)),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageableName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageableName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"w e s table_title_description\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.Step1SelectAnActionNextStepsDependOnTheActionTypeS.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"8\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContextObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"SetVisibilityForSlot\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetVisibilityForSlot",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.SetVisibilityPeriodOfTheSelectedComponentsForSlot0.table_detail",null,null,encodeString(context.getFormattedValue(getObject("ContextObject:SlotDefinition:DisplayName(CurrentSession:Locale:LocaleID)"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write(" \n<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"SetPublishingPeriod\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("SetPublishingPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.SetPublishingPeriodOfTheSelectedComponents.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"AssignToPages\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToPages",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.AssignTheSelectedComponentsToPages.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"AssignToComponents\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignToComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.AssignTheSelectedComponentsToComponents.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"AssignComponent\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignComponent",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.AssignComponentToTheSelectedComponents.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"AssignLabel\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("AssignLabel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.AssignLabelToTheSelectedComponents.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s select center\" width=\"1%\">\n<input type=\"radio\" name=\"ActionID\" value=\"DeleteComponents\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionID"),null).equals(context.getFormattedValue("DeleteComponents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"table_detail main e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageComponentProcessingSelectAction.DeleteTheSelectedComponents.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {129}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"selectNextStep\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageComponentProcessingSelectAction.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Working Area -->");
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
