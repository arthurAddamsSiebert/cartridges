/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.marketing;

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

public final class PromotionBudgetSource_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("BudgetSourceUUID",null),context.getFormattedValue(getObject("BudgetSource:UUID"),null)))),
new TagParameter("id",getObject("BudgetSource:UUID")),
new TagParameter("text",getObject("BudgetSource:DisplayName"))}, 8); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("PromotionBudgetSource.NewBudgetSource.text",null)))}, 10); 
 } 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s n\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("BudgetSourceForm:Name:Value")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("BudgetSourceForm:Name:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource:displayName(SelectedLocale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSource:displayName(SelectedLocale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSource:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }} 
 } else { 
 {out.write(localizeISText("PromotionBudgetSource.NewBudgetSource.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("BudgetSourceForm:Invalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCreatePromotionBudgetSource")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">\n<b>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.BudgetSourceCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PromotionBudgetSource.BudgetSourceCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(" \n</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCreatePromotionBudgetSource"),null).equals(context.getFormattedValue("BudgetSourceAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.ABudgetSourceWithIDAlreadyExists.error",null,null,encodeString(context.getFormattedValue(getObject("BudgetSourceForm:BSID:Value"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BudgetSourceForm:Name:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.NameInputFieldIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BudgetSourceForm:BSID:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.IDInputFieldIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BudgetSourceForm:Description:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.PleaseProvideAValidDescriptionForTheBudgetSource.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td>");
 URLPipelineAction action265 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Dispatch",null)))),null));String site265 = null;String serverGroup265 = null;String actionValue265 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Dispatch",null)))),null);if (site265 == null){  site265 = action265.getDomain();  if (site265 == null)  {      site265 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup265 == null){  serverGroup265 = action265.getServerGroup();  if (serverGroup265 == null)  {      serverGroup265 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("BudgetSourceForm:ID"),null) + context.getFormattedValue("_deleteForm",null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue265, site265, serverGroup265,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\nclass=\"confirm_box\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("delete")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/confirmation.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("delete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.CouldNotDeletePromotionBudgetSource.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td nowrap=\"nowrap\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"cancelDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionBudgetSource.OK.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteSingle"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("<!-- simple delete confirmation-->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","3"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.BudgetSources.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteSingle"),
new TagParameter("okbtnname","deleteSingle"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionBudgetSource.AreYouSureYouWantToDeleteThisItem.message",null)))}, 98); 
      out.write("<input type=\"hidden\" name=\"BudgetSourceUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSource:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","3"),
new TagParameter("subject",localizeText(context.getFormattedValue("sld_ch_base.BudgetSources.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteSingle"),
new TagParameter("okbtnname","delete"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionBudgetSource.YouHaveNotSelectedAnyItemsToBeDeleted.message",null)))}, 102); 
 } 
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionBudgetSource.EditOrDeleteBudgetSource.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PromotionBudgetSource.CreateBudgetSource.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<!-- Select language to localize text. -->");
 URLPipelineAction action266 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Edit",null)))),null));String site266 = null;String serverGroup266 = null;String actionValue266 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Edit",null)))),null);if (site266 == null){  site266 = action266.getDomain();  if (site266 == null)  {      site266 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup266 == null){  serverGroup266 = action266.getServerGroup();  if (serverGroup266 == null)  {      serverGroup266 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Edit",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue266, site266, serverGroup266,true)); 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale w e s\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionBudgetSource.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"infobox_item\">");
 {out.write("<");out.write("SELECT class=\"select inputfield_en\" NAME=\"LocaleID\">");String value, description;while (loop("AllLocales",null)){out.write("<");out.write("OPTION ");_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AllLocales:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) {out.write("SELECTED ");}out.print("VALUE =\"");value = context.getFormattedValue(getObject("AllLocales:LocaleID"),null);description = context.getFormattedValue(getObject("AllLocales:getDisplayName(CurrentSession:Locale)"),null);value = encodeString(value);description = encodeString(description);out.write(value + "\">");out.write(description + "</OPTION>");}out.write("</SELECT>");} 
      out.write("</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"BudgetSourceUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSource:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"setLocale\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionBudgetSource.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 URLPipelineAction action267 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Dispatch",null)))),null));String site267 = null;String serverGroup267 = null;String actionValue267 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Dispatch",null)))),null);if (site267 == null){  site267 = action267.getDomain();  if (site267 == null)  {      site267 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup267 == null){  serverGroup267 = action267.getServerGroup();  if (serverGroup267 == null)  {      serverGroup267 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionPreferenceBudgetSource-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("BudgetSourceForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue267, site267, serverGroup267,true)); 
      out.write("<input type=\"hidden\" name=\"LocaleID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e\">\n<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td class=\"fielditem2");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BudgetSourceForm:Name:Invalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { 
      out.write("_error");
 } 
      out.write("\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionBudgetSource.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"400\" size=\"70\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"400\" size=\"70\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem2");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("BudgetSourceForm:BSID:Invalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCreatePromotionBudgetSource"),null).equals(context.getFormattedValue("BudgetSourceAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
      out.write("_error");
 } 
      out.write("\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionBudgetSource.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("BudgetSource")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { 
      out.write(" \n<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:BSID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"400\" size=\"70\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:BSID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {179}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" />");
 } else { 
      out.write("<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:BSID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"400\" size=\"70\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:BSID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" disabled=\"disabled\" />");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"fielditem2");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("BudgetSourceForm:Description:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { 
      out.write("_error");
 } 
      out.write("\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionBudgetSource.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { 
      out.write("<textarea rows=\"5\" cols=\"70\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nclass=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>");
 } else { 
      out.write("<textarea rows=\"5\" cols=\"67\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {193}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nclass=\"inputfield_en\" disabled=\"disabled\">");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {194}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>");
 } 
      out.write("</td>\n</tr>\n<tr><td colspan=\"2\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<!-- Buttons -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"s\" colspan=\"2\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionBudgetSource.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionBudgetSource.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSourceForm:BSID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSource:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {214}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"BudgetSourceUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("BudgetSource:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionBudgetSource.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"confirmDeleteSingle\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionBudgetSource.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table> \n");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BudgetSource"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",229,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "230");} 
 } 
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
