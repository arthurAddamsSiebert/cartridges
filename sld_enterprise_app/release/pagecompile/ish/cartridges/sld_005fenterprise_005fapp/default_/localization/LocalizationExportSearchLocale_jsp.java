/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.localization;

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

public final class LocalizationExportSearchLocale_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-SearchLocale",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ExportFileFormat",null),context.getFormattedValue(getObject("ExportFileFormat"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.LocalizationExportStep2SelectLocales.text",null)))}, 3); 
      out.write('\n');
 URLPipelineAction action313 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null));String site313 = null;String serverGroup313 = null;String actionValue313 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null);if (site313 == null){  site313 = action313.getDomain();  if (site313 == null)  {      site313 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup313 == null){  serverGroup313 = action313.getServerGroup();  if (serverGroup313 == null)  {      serverGroup313 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewLocalizationExport-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("LocalizationExportList");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue313, site313, serverGroup313,true)); 
      out.write("\n    <input type=\"hidden\" name=\"AppId\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AppId"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n    <input type=\"hidden\" name=\"ExportFileFormat\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ExportFileFormat"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("sld_enterprise_app.LocalizationExportStep2SelectLocales.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t</tr>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("UUIDIterator")))).booleanValue() && !((Boolean) ((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<tr><td>\n\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n\t\t\t\t\t\t<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.YouHaveNotSelectedALocaleToBeExportedPleaseSelectA.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td></tr>\n\t\t");
 } 
      out.write("\n\t\t<tr>\n\t\t\t<td class=\"table_title_description e w\">");
 {out.write(localizeISText("sld_enterprise_app.Step2Of3SelectLocalesNextStepConfigureExportPlease.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {out.write(localizeISText("sld_enterprise_app.EnterAnAliasNameForTheLocaleIdentifierToExportIfSp.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n\t\t<tr>\n\t\t\t<td class=\"table_header w e s center\" nowrap=\"nowrap\" width=\"80\">\n\t\t\t\t<div id=\"A\">\n\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('LocalizationExportList','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</div>\n\t\t\t\t<div id=\"B\" style=\"display: none\">\n\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('LocalizationExportList','SelectedObjectUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n\t\t\t\t\t\t</tr>\n\t\t\t\t\t</table>\n\t\t\t\t</div>\n\t\t\t</td>\n\t\t\t<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ExportLocale.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.LocaleIdentifier.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_enterprise_app.ExportLocaleAliasOptional.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t");
 } 
      out.write("\n\t\t</tr>\n\t\t");
 while (loop("Locales","Locale",null)) { 
      out.write("\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_bg w e s center\">\n\t\t\t\t\t<input type=\"hidden\" name=\"ObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t<input type=\"checkbox\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(Locale:LocaleID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write(" checked=\"checked\"");
 } 
      out.write(" />\n\t\t\t\t</td>\n\t\t\t\t<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n\t\t\t\t<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n\t\t\t\t\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"table_detail e s\">\n\t\t\t\t\t\t<input type=\"text\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("_ModifiedLocaleID\" value=\"\" size=\"30\" maxlength=\"255\" class=\"inputfield_en\" />&nbsp;\n\t\t\t\t\t</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</tr>\n\t\t");
 } 
      out.write("\n\t</table>\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportFileFormat"),null).equals(context.getFormattedValue("xliff",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write("\n\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t\t<tr>\n\t\t\t\t<td nowrap=\"nowrap\" class=\"label w s\">\n\t\t\t\t\t<label class=\"label\" for=\"ExportSourceLanguage\">");
 {out.write(localizeISText("sld_enterprise_app.SourceLanguage.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n\t\t\t\t</td>\n\t\t\t\t<td class=\"table_detail e s\" width=\"100%\">\n\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExportSourceLanguage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t");
 {Object temp_obj = (getObject("ExportSourceLanguage")); getPipelineDictionary().put("SelectedSourceLocaleID", temp_obj);} 
      out.write("\n\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t");
 {Object temp_obj = (getObject("CurrentRequest:Locale:LocaleID")); getPipelineDictionary().put("SelectedSourceLocaleID", temp_obj);} 
      out.write("\n\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t<select name=\"ExportSourceLanguage\" id=\"ExportSourceLanguage\" class=\"select inputfield_en\">\n\t\t\t\t\t\t");
 while (loop("Locales","Locale",null)) { 
      out.write("\n\t\t\t\t\t\t\t<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedSourceLocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write(" selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</select>\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t</table>\n\t");
 } 
      out.write("\n\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t<tr>\n            <td>\n                <table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td class=\"button\"><input type=\"submit\" class=\"button\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Previous.button",null)),null));
      out.write("\" name=\"SelectApp\" /></td>\n                    </tr>\n                </table>\n            </td>\n\t\t\t<td align=\"right\">\n\t\t\t\t<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\n\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Users:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\t<input type=\"submit\" name=\"SelectConfiguration\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("Locales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
      out.write('	');
      out.write('\n');
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
