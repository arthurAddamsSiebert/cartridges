/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.pagelet.wizard;

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

public final class PageletSelectComponentSlot_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-SelectSlots",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("PageletSelectComponentSlot.Step3SelectSlots.text",null)))}, 4); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageletSelectComponentSlot.EditAllPageVariantsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PageletSelectComponentSlot.EditAllComponentsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageletSelectComponentSlot.EditSelectedPageVariantsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PageletSelectComponentSlot.EditSelectedComponentsStep3SelectSlots.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 }} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Finish"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("SelectedSlotDefinitionQualifiedNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("PageletSelectComponentSlot.YouHaveNotSelectedAnySlotsPlaceholdersUseTheCheckb.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "36");} 
 } 
 URLPipelineAction action434 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-Dispatch",null)))),null));String site434 = null;String serverGroup434 = null;String actionValue434 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-Dispatch",null)))),null);if (site434 == null){  site434 = action434.getDomain();  if (site434 == null)  {      site434 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup434 == null){  serverGroup434 = action434.getServerGroup();  if (serverGroup434 == null)  {      serverGroup434 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletComponentAssignmentCreationWizard-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("SelectSlots");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue434, site434, serverGroup434,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("PageletSelectComponentSlot.Step3Of3TheListShowsSlotsTheComponentCanBeAssigned.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail e w s\">\n<input type=\"checkbox\" name=\"AssignIfNotAlreadyAssigned\" value=\"true\" checked=\"checked\"/>&nbsp;\n");
 {out.write(localizeISText("PageletSelectComponentSlot.AssignOnlyIfTheComponentIsNotAlreadyAssignedToASlo.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("CurrentSession:Locale")),
new TagParameter("ShowHeading","true")}, 54); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_title2 w e s\" colspan=\"3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletSelectComponentSlot.Slots.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilterSlotDefinitionMap:Values") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write(" \n<tr>\n<td class=\"w e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('SelectSlots','SelectedSlotDefinitionQualifiedName','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("PageletSelectComponentSlot.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('SelectSlots','SelectedSlotDefinitionQualifiedName','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("PageletSelectComponentSlot.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletSelectComponentSlot.SlotName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletSelectComponentSlot.PageVariantType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td> \n</tr> \n");
 while (loop("FilterSlotDefinitionMap:KeySet","SlotDefinition",null)) { 
 while (loop("FilterSlotDefinitionMap:get(SlotDefinition)","PageletDefinition",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s top center\">\n<input type=\"hidden\" name=\"SlotDefinitionQualifiedName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedSlotDefinitionQualifiedNamesClipboard:contains(SlotDefinition:QualifiedName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedSlotDefinitionQualifiedName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"SelectedSlotDefinitionQualifiedName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write(" \n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PageletDefinition:DisplayName:get(CurrentSession:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n</tr>");
 } 
 } 
      out.write(' ');
      out.write('\n');
 } else { 
      out.write(" \n<tr> \n<td class=\"table_detail w e s\" colspan=\"3\">");
 {out.write(localizeISText("PageletSelectComponentSlot.ThereAreNoSlotsTheComponentCanBeAssignedTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 } 
      out.write("<tr>\n<td class=\"table_title2 w e s\" colspan=\"3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletSelectComponentSlot.Placeholders.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilteredPlaceholderDefinitionMap:KeySet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"table_title_description w e s\" colspan=\"3\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletSelectComponentSlot.SelectThePlaceholdersYouWantTheComponentApplied.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"C\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('SelectSlots','SelectedPlaceholderDefinitionUUID','C','D');\" class=\"tableheader\">");
 {out.write(localizeISText("PageletSelectComponentSlot.SelectAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"D\" style=\"display:none;\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('SelectSlots','SelectedPlaceholderDefinitionUUID','C','D');\" class=\"tableheader\">");
 {out.write(localizeISText("PageletSelectComponentSlot.ClearAll.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletSelectComponentSlot.PlaceholderName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageFlag"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageletSelectComponentSlot.PageTemplate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PageletSelectComponentSlot.ComponentTemplate.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td> \n</tr> \n");
 while (loop("FilteredPlaceholderDefinitionMap:KeySet","PlaceholderDefinition",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s top center\">\n<input type=\"hidden\" name=\"PlaceholderDefinitionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SelectedPlaceholderDefinitionsClipboard:contains(PlaceholderDefinition:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedPlaceholderDefinitionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"SelectedPlaceholderDefinitionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {147}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write(" \n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 151); 
      out.write("</td>\n<td class=\"table_detail e s top\" nowrap=\"nowrap\">");
 processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("Pagelet",getObject("FilteredPlaceholderDefinitionMap:get(PlaceholderDefinition)"))}, 154); 
      out.write("</td>\n</tr>");
 } 
      out.write(' ');
      out.write('\n');
 } else { 
      out.write(" \n<tr> \n<td class=\"table_detail w e s\" colspan=\"3\">");
 {out.write(localizeISText("PageletSelectComponentSlot.ThereAreNoPlaceholdersTheComponentCanBeAssignedTo.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n");
 } 
      out.write(" \n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"previous\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("FilterSlotDefinitionMap:Values") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("FilteredPlaceholderDefinitionMap:KeySet") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"hidden\" name=\"ProcessDescription\" value=\"Creates assignments from component to slots\"/>\n<input type=\"submit\" name=\"Finish\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Finish.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>");
 } 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"Cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr> \n</table> \n</td> \n</tr>\n</table>");
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