/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.profanitycheck;

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

public final class ProfanityCheckWordsNew_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("newDefaultList")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("createDefaultList")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-NewDefaultList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newDefaultList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWordsNew.NewDefaultProfanityWordDefinition.text",null)))}, 6); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("newCustomList")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("createCustomList")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-NewCustomList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newCustomList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWordsNew.NewCustomProfanityWordDefinition.text",null)))}, 8); 
 }} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("changeLocale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-NewDefaultList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newDefaultList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWordsNew.NewDefaultProfanityWordDefinition.text",null)))}, 14); 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CheckProfanityConfigurationIDAvailablity"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",getObject("ProfanityCheckConfigurationID")),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-ShowExistingList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProfanityCheckConfigurationID",null),context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("LocaleID"),null)))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWordsNew.DetailsOfCustomProfanityWordDefinition.text",null)))}, 17); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-NewCustomList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("newCustomList",null),context.getFormattedValue("New",null))))),
new TagParameter("id","profanityListDetails"),
new TagParameter("text",localizeText(context.getFormattedValue("ProfanityCheckWordsNew.NewCustomProfanityWordDefinition.text",null)))}, 19); 
      out.write(' ');
      out.write('\n');
 } 
 } 
 } 
      out.write("<!-- EO Page Navigator -->");
 URLPipelineAction action539 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));String site539 = null;String serverGroup539 = null;String actionValue539 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null);if (site539 == null){  site539 = action539.getDomain();  if (site539 == null)  {      site539 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup539 == null){  serverGroup539 = action539.getServerGroup();  if (serverGroup539 == null)  {      serverGroup539 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProfanityCheck-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProfanityCheck");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue539, site539, serverGroup539,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationID")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"createDefaultList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.Apply.button",null)),null));
      out.write("\" class=\"button\" style=\"position: absolute; top: -50000px\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"createCustomList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.Apply.button",null)),null));
      out.write("\" class=\"button\" style=\"position: absolute; top: -50000px\"/>");
 } 
      out.write(" \n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s n\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("newDefaultList")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("createDefaultList")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("changeLocale")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.NewDefaultProfanityWordDefinition0.table_title",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("newCustomList")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("createCustomList")))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("changeLocale")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CheckProfanityConfigurationIDAvailablity"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.ProfanityWordDefinition0.table_title",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProfanityCheckWordsNew.NewCustomProfanityWordDefinition0.table_title",null,null,encodeString(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null,null,null,null,null,null,null,null,null));} 
 } 
 }} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListCreationError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" colspan=\"8\">\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ListCreationError"),null).equals(context.getFormattedValue("ListNotCreated",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.AnErrorOccurredWhileCreatingTheNewCustomProfanityW.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ListCreationError"),null).equals(context.getFormattedValue("IdNotProvided",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.TheCustomProfanityWordDefinitionCouldNotBeCreatedP.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ListCreationError"),null).equals(context.getFormattedValue("IdNotUnique",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.TheCustomProfanityWordDefinitionCouldNotBeCreatedN.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ListCreationError"),null).equals(context.getFormattedValue("DefaultNameForCustomList",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.TheCustomProfanityWordDefinitionCouldNotBeCreatedN.error1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 }}}} 
      out.write(" \n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write(" \n<tr>\n<td class=\"table_title_description w e \">");
 {out.write(localizeISText("ProfanityCheckWordsNew.TheFollowingListOfWordsAndTermsAreNotAllowedToBeUs.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProfanityCheckWordsNew.ComplementAdditionalWordsPerLocaleToEnsureAProfani.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CheckProfanityConfigurationIDAvailablity")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<br/> ");
 {out.write(localizeISText("ProfanityCheckWordsNew.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(" \n</td>\n</tr>\n<tr>\n<td width=\"100%\">\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale aldi\">\n<tr>\n<td class=\"label_select\" nowrap=\"nowrap\"><label class=\"label label_select label_light\" for=\"Profanity_SelectedLocale\">");
 {out.write(localizeISText("ProfanityCheckWordsNew.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td>\n<select name=\"LocaleID\" id=\"Profanity_SelectedLocale\" class=\"select inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"changeLocale\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"w e\" width=\"100%\">\n<table>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ListCreationError"),null).equals(context.getFormattedValue("IdNotProvided",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<td class=\"label\" nowrap=\"nowrap\"><label class=\"label label_error\" for=\"ProfanityCheckConfigurationID_Name\">");
 {out.write(localizeISText("ProfanityCheckWordsNew.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>");
 } else { 
      out.write("<td class=\"label\" nowrap=\"nowrap\"><label class=\"label\" for=\"ProfanityCheckConfigurationID_Name\">");
 {out.write(localizeISText("ProfanityCheckWordsNew.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>");
 } 
      out.write("<td class=\"table_detail\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationID"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ConfigIdDisabled"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"ProfanityCheckConfigurationID\" id=\"ProfanityCheckConfigurationID_Name\" size=\"55\" maxlength=\"256\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null));
      out.write("\" class=\"inputfield_en\" disabled=\"disabled\"/>\n<input type=\"hidden\" name=\"ProfanityCheckConfigurationID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ConfigIdDisabled\" value=\"true\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"ProfanityCheckConfigurationID\" id=\"ProfanityCheckConfigurationID_Name\" size=\"55\" maxlength=\"256\" value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null)),null));
      out.write("\" class=\"inputfield_en\" /> \n");
 } 
      out.write(" \n</td>\n</tr> \n<tr>\n<td class=\"label_textarea\" nowrap=\"nowrap\">\n<label class=\"label label_textarea\" for=\"Profanity_OrganizationProhibtedWords\">");
 {out.write(localizeISText("ProfanityCheckWordsNew.ProhibitedWords.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<br/><span style=\"font-weight: normal\">(");
 {out.write(localizeISText("ProfanityCheckWordsNew.Organization.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(")</span></label>\n</td>\n<td class=\"table_detail\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("<textarea rows=\"10\" name=\"ProfanityWords\" id=\"Profanity_OrganizationProhibtedWords\" class=\"inputfield_en\" cols=\"80\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>");
 } else { 
      out.write("<textarea rows=\"10\" name=\"ProfanityWords\" id=\"Profanity_OrganizationProhibtedWords\" class=\"inputfield_en\" cols=\"80\" readonly=\"readonly\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProfanityWordsString"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>");
 } 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"3\" width=\"100%\">\n<table>\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("LoadingOfOrganizationsListPossible")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LoadingOfOrganizationsListPossible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",167,e);}if (_boolean_result) { 
      out.write('s');
 } 
      out.write("\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("LoadingOfOrganizationsListPossible")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("LoadingOfOrganizationsListPossible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { 
      out.write(" \n<td class=\"button\"><input type=\"submit\" name=\"confirmLoadGlobalList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.LoadGlobalList.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONSUMERS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ProfanityCheckConfigurationID")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProfanityCheckConfigurationID"),null).equals(context.getFormattedValue("Default",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"createDefaultList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"createCustomList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write(" \n<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProfanityCheckWordsNew.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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
