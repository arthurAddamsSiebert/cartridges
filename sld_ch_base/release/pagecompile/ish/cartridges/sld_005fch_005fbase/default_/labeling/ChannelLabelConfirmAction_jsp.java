/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.labeling;

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

public final class ChannelLabelConfirmAction_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 context.setCustomTagTemplateName("labelitem","labeling/inc/ChannelLabelItem.isml",false,new String[]{"labelassignment","displaytype"},null); 
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-ConfirmAction",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LabelID",null),context.getFormattedValue(getObject("Label:UUID"),null))).addURLParameter(context.getFormattedValue("ActionParameterForm_SelectedActionID",null),context.getFormattedValue(getObject("ActionTemplate:UUID"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeLocale",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeLocale"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeName",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeName"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeType",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeType"),null)).addURLParameter(context.getFormattedValue("ActionParameterForm_CustomAttributeValue",null),context.getFormattedValue(getObject("ActionParameterForm_CustomAttributeValue"),null)))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelLabelConfirmAction.Step3ConfirmAction.text",null)))}, 11); 
      out.write("<!-- EO Page Navigator -->\n<!-- Titel and Description -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title n w e s\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.PerformActionStep3ConfirmAction.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.Step3Of3ConfirmAction.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action348 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-Dispatch",null)))),null));String site348 = null;String serverGroup348 = null;String actionValue348 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-Dispatch",null)))),null);if (site348 == null){  site348 = action348.getDomain();  if (site348 == null)  {      site348 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup348 == null){  serverGroup348 = action348.getServerGroup();  if (serverGroup348 == null)  {      serverGroup348 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLabelAction-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("labelActionForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue348, site348, serverGroup348,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"n\">\n<tr>\n<td class=\"table_title2 w e s\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.Action.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_detail w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_DeleteProductCustomAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelLabelConfirmAction.DeleteCustomProductAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdateProductCustomAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelLabelConfirmAction.UpdateCreateCustomProductAttribute.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_ExportProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelLabelConfirmAction.ExportProducts.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdateStandardProductAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelLabelConfirmAction.UpdateStandardProductAttributes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ActionTemplate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }}}} 
      out.write("\n&nbsp;</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_title2 w e s\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.Parameters.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"w e s\">");
 {Object temp_obj = ("false"); getPipelineDictionary().put("hasActionParameter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ActionParameterTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("ActionParameterTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ActionConfirmation", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ActionParameterTemplate"),null), null, "61");} 
 while (loop("ActionParameterForm:Definition","ActionParameterDefinition",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null).equals(context.getFormattedValue("SelectedActionID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<tr style=\"visibility:collapse\">\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionParameterDefinition:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write(" \n</td>\n</tr>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("hasActionParameter", temp_obj);} 
 } 
 } 
 } else { 
 while (loop("ActionParameterForm:Definition","ActionParameterDefinition",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null).equals(context.getFormattedValue("SelectedActionID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n<td class=\"table_detail\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionParameterDefinition:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm:getParameter(ActionParameterDefinition:Name):Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 } 
      out.write(' ');
      out.write('\n');
 {Object temp_obj = ("true"); getPipelineDictionary().put("hasActionParameter", temp_obj);} 
      out.write("</td>\n</tr>");
 } 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionTemplate:ActionParameterPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("hasActionParameter"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"error\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.ThereAreNoActionParametersSelected.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.ThereAreNoAdditionalActionParametersRequired.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
 while (loop("ActionTemplate:AttributeValues","ATV",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("ATV:Name"),null).equals(context.getFormattedValue("ActionTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ATV:Name"),null).equals(context.getFormattedValue("ActionPermission",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ATV:Name"),null).equals(context.getFormattedValue("ActionParameterPipeline",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ATV:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
      out.write(" \n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ATV:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value = \"");
 {String value = null;try{value=context.getFormattedValue(getObject("ATV:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 } 
 } 
 } 
      out.write("</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\" >\n<tr>\n<td colspan=\"3\" class=\"table_title2 left s\" >");
 {out.write(localizeISText("ChannelLabelConfirmAction.AffectedItems.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredLabelAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_header e s\" nowrap=\"nowrap\" width=\"40%\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\" width=\"40%\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header s\" nowrap=\"nowrap\" width=\"40%\" >");
 {out.write(localizeISText("ChannelLabelConfirmAction.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("FilteredLabelAssignments","la",null)) { 
      out.write("<tr>\n<td class=\"table_detail e s top\" >");
 processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","viewlink_name"),
new TagParameter("labelassignment",getObject("la"))}, 130); 
      out.write("&nbsp;</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","viewlink_id"),
new TagParameter("labelassignment",getObject("la"))}, 131); 
      out.write("&nbsp;</td>\n<td class=\"table_detail s top\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "labelitem", new TagParameter[] {
new TagParameter("displaytype","type"),
new TagParameter("labelassignment",getObject("la"))}, 132); 
      out.write("&nbsp;</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td colspan=\"3\" class=\"table_detail s\">");
 {out.write(localizeISText("ChannelLabelConfirmAction.TheLabelDoesNotContainAnyItemTheSelectedActionAppliesTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type = \"hidden\" name=\"LabelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type = \"hidden\" name=\"ActionParameterForm_SelectedActionID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ActionTemplate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionTemplate:ActionParameterPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"configureAction\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfirmAction.Previous.button",null)),null));
      out.write("\" class=\"button\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"selectAction\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfirmAction.Previous.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredLabelAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionTemplate:ActionParameterPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("hasActionParameter"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"executeAction\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfirmAction.Finish.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
 } else { 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"executeAction\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfirmAction.Finish.button",null)),null));
      out.write("\" class=\"button\"/></td>");
 } 
 } 
      out.write("<td class=\"button\"><input type=\"submit\" name=\"cancelAction\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelLabelConfirmAction.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<!-- Start Page Cursor -->\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","FilteredLabelAssignments")}, 192); 
      out.write("</td>\n</tr>\n</table>\n<!-- End Page Cursor -->");
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
