/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.impex;

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

public final class ContentExportSelectEdition_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-SelectEditionBreadcrumb",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("ExportScope",null),context.getFormattedValue(getObject("ExportScope"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id","Consumer/ChannelContent/Export/SelectEdition"),
new TagParameter("text",localizeText(context.getFormattedValue("ContentExportSelectEdition_52.Step2SelectEdition.text",null)))}, 3); 
      out.write("<!-- Page Navigator -->");
 URLPipelineAction action468 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null));String site468 = null;String serverGroup468 = null;String actionValue468 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null);if (site468 == null){  site468 = action468.getDomain();  if (site468 == null)  {      site468 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup468 == null){  serverGroup468 = action468.getServerGroup();  if (serverGroup468 == null)  {      serverGroup468 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentExport_52-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue468, site468, serverGroup468,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e n\">\n<tr>\n<td class=\"table_title s\" width=\"100%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.SelectEdition.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentExportEditionForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentExportEditionForm:SelectedEditionID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.HaveNotSelectedAnEditionToExportContentFrom.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Edition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 {out.write(localizeISText("ContentExportSelectEdition_52.SelectAnEditionAndClickExport.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ContentExportSelectEdition_52.SelectAnEditionAndClickNext.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ContentExportEditionForm:ZipFileName:isMissing")).booleanValue() || ((Boolean) getObject("ContentExportEditionForm:ZipFileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.HaveNotSpecifiedValidExportFileName.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Edition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 {out.write(localizeISText("ContentExportSelectEdition_52.ProvideValidFileNameAndExport.button",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ContentExportSelectEdition_52.ProvideValidFileNameAndNext.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Edition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Step2Of2PreviousStepSelectScope.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Library",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Step2Of3NextStepSelectFromLibrary.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<td class=\"table_title_description\" width=\"100%\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Step2Of3NextStepSelectFromPublication.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}} 
      out.write("<br/><br/>");
 {out.write(localizeISText("ContentExportSelectEdition_52.SelectAnEditionAndAFileName.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s center\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Select.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 {Object temp_obj = ("false"); getPipelineDictionary().put("firstElementSet", temp_obj);} 
 while (loop("Editions","Edition",null)) { 
      out.write("<tr>\n<td class=\"w e s center top\" width=\"75\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentExportEditionForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ContentExportEditionForm_SelectedEditionID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Edition:UUID"),null).equals(context.getFormattedValue(getObject("ContentExportEditionForm:SelectedEditionID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write('/');
      out.write('>');
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedEditionID")))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("firstElementSet"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"ContentExportEditionForm_SelectedEditionID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Edition:UUID"),null).equals(context.getFormattedValue(getObject("SelectedEditionID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" onClick=\"this.form.ContentExportEditionForm_ZipFileName.value='");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"ContentExportEditionForm_SelectedEditionID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" checked=\"checked\" onClick=\"this.form.ContentExportEditionForm_ZipFileName.value='");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("'\"/>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("firstElementSet", temp_obj);} 
 {Object temp_obj = (getObject("Edition:Name")); getPipelineDictionary().put("defaultEditionName", temp_obj);} 
 } 
 } 
      out.write("\n&nbsp;\n</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\"><b>");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</b></td>\n<td class=\"table_detail e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Edition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(".</td>\n</tr>");
 } 
 {Object temp_obj = ("false"); getPipelineDictionary().put("firstElementSet", temp_obj);} 
      out.write("</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td>&nbsp;</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentExportEditionForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ContentExportEditionForm:ZipFileName:isMissing")).booleanValue() || ((Boolean) getObject("ContentExportEditionForm:ZipFileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.ExportFile",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.ExportFile",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } 
      out.write("<td class=\"inputfield_en\" width=\"100%\">\n<input type=\"text\" name=\"ContentExportEditionForm_ZipFileName\" size=\"40\" class=\"inputfield_en\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContentExportEditionForm:ZipFileName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.ExportFile",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"inputfield_en\" width=\"100%\">\n<input type=\"text\" name=\"ContentExportEditionForm_ZipFileName\" size=\"40\" class=\"inputfield_en\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedEditionID"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("defaultEditionName"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("defaultEditionName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ZipFileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\"/>\n</td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.VersionState.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"inputfield_en\" >\n<select class=\"inputfield_en\" name=\"ContentExportEditionForm_ExportApprovedElements\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentExportEditionForm:ExportApprovedElements:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
      out.write("<option value=\"true\" selected=\"selected\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Approved.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<option value=\"true\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Approved.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContentExportEditionForm:ExportApprovedElements:Value"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<option value=\"false\" selected=\"selected\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Latest.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<option value=\"false\">");
 {out.write(localizeISText("ContentExportSelectEdition_52.Latest.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</select>\n</td>\n</tr>\n<tr>\n<td>&nbsp;</td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> \n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ExportScope\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ExportScope"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"SelectScope\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectEdition_52.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\"> \n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExportScope"),null).equals(context.getFormattedValue("Edition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"editionFormSubmitted\" value=\"true\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ProcessDescription\" value=\"Export content resources from channel content repository of ");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelRepository:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"StartExport\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectEdition_52.Export.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } else { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"editionFormSubmitted\" value=\"true\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"SelectFrom\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectEdition_52.Next.button",null)),null));
      out.write("&nbsp;&gt;&gt;\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ContentExportSelectEdition_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table> \n</td> \n</tr>\n</table>");
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
