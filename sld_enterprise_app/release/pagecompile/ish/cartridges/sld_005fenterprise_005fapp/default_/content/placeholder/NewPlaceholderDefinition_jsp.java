/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.placeholder;

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

public final class NewPlaceholderDefinition_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} 
 processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("id","PlaceholderDefinition"),
new TagParameter("text",localizeText(context.getFormattedValue("NewPlaceholderDefinition.NewPlaceholder.text",null)))}, 8); 
      out.write("<!-- EO Page Navigator -->");
 {Object temp_obj = (getObject("ContentRepository:RepositoryDomain:Site")); getPipelineDictionary().put("CurrentSite", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PlaceholderDefinition")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PlaceholderDefinition:Template:UUID"),null).equals(context.getFormattedValue(getObject("Pagelet:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("CopyMode", temp_obj);} 
 } 
      out.write("<!-- Titel and Description -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("NewPlaceholderDefinition.NewPlaceholder.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- Error Handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("PlaceholderDefinitionForm:isInvalid"))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("ErrorCode"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("NewPlaceholderDefinition.ThePlaceholderCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("NewPlaceholderDefinition.PleaseProvideAName.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:DefinitionID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("NewPlaceholderDefinition.PleaseProvideAnID.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Type:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("NewPlaceholderDefinition.PleaseSelectAType.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("NewPlaceholderDefinition.TheIDIsAlreadyUsedByADifferentTemplate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- EO Error Handling -->\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("NewPlaceholderDefinition.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- Main Content -->");
 URLPipelineAction action428 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null)))),null));String site428 = null;String serverGroup428 = null;String actionValue428 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null)))),null);if (site428 == null){  site428 = action428.getDomain();  if (site428 == null)  {      site428 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup428 == null){  serverGroup428 = action428.getServerGroup();  if (serverGroup428 == null)  {      serverGroup428 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("PlaceholderDefinitionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue428, site428, serverGroup428,true)); 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale w e s\">\n<tr>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select label_light\" for=\"LocaleId\">");
 {out.write(localizeISText("NewPlaceholderDefinition.SelectLanguage.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"infobox_item\">\n<select name=\"LocaleId\" id=\"LocaleId\" class=\"select inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"setLocaleForNew\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewPlaceholderDefinition.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td> \n</tr>\n</table> \n</td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr><td class=\"w e\" colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td class=\"w e s\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td nowrap=\"nowrap\" class=\"label ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("label_error");
 } 
      out.write("\"><label class=\"label\" for=\"PlaceholderDefinitionForm_Name\">");
 {out.write(localizeISText("NewPlaceholderDefinition.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"PlaceholderDefinitionForm_Name\" id=\"PlaceholderDefinitionForm_Name\" maxlength=\"256\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinitionForm:Name:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PlaceholderDefinitionForm:DefinitionID:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("label_error");
 } 
      out.write("\"><label class=\"label\" for=\"PlaceholderDefinitionForm_DefinitionID\">");
 {out.write(localizeISText("NewPlaceholderDefinition.ID.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td class=\"table_detail\" width=\"100%\">\n<input type=\"text\" name=\"PlaceholderDefinitionForm_DefinitionID\" id=\"PlaceholderDefinitionForm_DefinitionID\" maxlength=\"256\" size=\"70\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PlaceholderDefinitionForm:DefinitionID:FormattedValue")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("CopyMode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinitionForm:DefinitionID:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 processOpenTag(response, pageContext, "getnewpageletid", new TagParameter[] {
}, 98); 
 } 
      out.write("\" class=\"inputfield_en\"/>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_textarea\">\n<label class=\"label label_textarea\" for=\"PlaceholderDefinitionForm_Description\">");
 {out.write(localizeISText("NewPlaceholderDefinition.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n</td>\n<td class=\"table_detail\">\n<textarea rows=\"5\" cols=\"70\" name=\"PlaceholderDefinitionForm_Description\" id=\"PlaceholderDefinitionForm_Description\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinitionForm:Description:FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label_select ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Type:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("label_error");
 } 
      out.write("\"><label class=\"label label_select\" for=\"PlaceholderDefinitionForm_Type\">");
 {out.write(localizeISText("NewPlaceholderDefinition.Type.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CopyMode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail\">\n<select name=\"PlaceholderDefinitionForm_Type\" id=\"PlaceholderDefinitionForm_Type\" class=\"select inputfield_en\" disabled=\"disabled\">\n<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PlaceholderDefinition:SlotDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>\n</select>\n<input type=\"hidden\" name=\"PlaceholderDefinitionForm_Type\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>");
 } else { 
      out.write("<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PredefinedType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<select name=\"PlaceholderDefinitionForm_Type\" id=\"PlaceholderDefinitionForm_Type\" class=\"select inputfield_en\" disabled=\"disabled\">");
 } else { 
      out.write("<select name=\"PlaceholderDefinitionForm_Type\" id=\"PlaceholderDefinitionForm_Type\" class=\"select inputfield_en\">");
 } 
      out.write("<option value=\"\">");
 {out.write(localizeISText("NewPlaceholderDefinition.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</option>");
 {Object temp_obj = (getObject("PageletModelUtils:getOrderedNameableAndReferencableElements(PageletModelUtils:SlotDefinitions(PageletModelRepository))")); getPipelineDictionary().put("PlaceholderDefinitionTypes", temp_obj);} 
 while (loop("PlaceholderDefinitionTypes","Type",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Type:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PlaceholderDefinitionForm:Type:FormattedValue")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Type:QualifiedName"),null).equals(context.getFormattedValue(getObject("PlaceholderDefinitionForm:Type:FormattedValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("PredefinedType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PredefinedType"),null).equals(context.getFormattedValue(getObject("Type"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("\nselected=\"selected\"\n");
 } 
      out.write(' ');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(Type,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>");
 } 
      out.write("</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CopyMode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_select ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Assignment:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("label_error");
 } 
      out.write("\"><label class=\"label label_select\" for=\"PlaceholderDefinitionForm_Assignment\">");
 {out.write(localizeISText("NewPlaceholderDefinition.PlaceholderAssignment.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\">");
 processOpenTag(response, pageContext, "placeholderdefinitionassignmentsselect", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("FormParameterName","PlaceholderDefinitionForm_Assignment"),
new TagParameter("FormParameterValue",getObject("PlaceholderDefinitionForm_Assignment")),
new TagParameter("PlaceholderDefinition",getObject("PlaceholderDefinition")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 148); 
      out.write(" \n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PredefinedType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PlaceholderDefinitionForm:Assignment:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
      out.write("label_error");
 } 
      out.write("\" for=\"PlaceholderDefinitionForm_Assignment\">");
 {out.write(localizeISText("NewPlaceholderDefinition.PlaceholderAssignment.label1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Placeholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"PlaceholderDefinitionForm_Assignment\" id=\"PlaceholderDefinitionForm_Assignment\" maxlength=\"256\" size=\"50\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" disabled=\"disabled\"/>\n<input type=\"hidden\" name=\"PlaceholderDefinitionForm_Assignment\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {158}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PlaceholderDefinitionForm_Type\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:TargetPlaceholderDefinition:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Slot"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"PlaceholderDefinitionForm_Assignment\" id=\"PlaceholderDefinitionForm_Assignment\" maxlength=\"256\" size=\"50\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Slot:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" disabled=\"disabled\"/>\n<input type=\"hidden\" name=\"PlaceholderDefinitionForm_Assignment\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Slot:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/> \n<input type=\"hidden\" name=\"PlaceholderDefinitionForm_Type\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Slot:DefinitionQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 }} 
      out.write("</td>\n</tr> \n");
 }} 
      out.write("<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n</table>\n</td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ContentRepositoryUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PageletUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {182}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CopyMode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"CopyMode\" value=\"true\"/>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PredefinedType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"PredefinedType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PredefinedType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Placeholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ObjectID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Placeholder:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Slot"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ObjectID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Slot:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {190}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 }} 
 }} 
      out.write("<input type=\"submit\" name=\"create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewPlaceholderDefinition.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewPlaceholderDefinition.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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
