/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.attributegroup;

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

public final class NewProductAttributeGroup_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.NewProductAttributeGroup.text",null))),
new TagParameter("id","newProductAttributeGroup")}, 3); 
      out.write("<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"NewProductAttributeGroup_52", null, "10");} 
      out.write("<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" border=\"0\" alt=\"\"/></td>\n</tr>\n</table>\n<!-- EO Tabs -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.NewProductAttributeGroup.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- start error handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductAttributeGroupForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<tr>\n<td> \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("NewProductAttributeGroup_52.ProductAttributeGroupCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.SpecifiedIDIsAlreadyInUsePleaseProvideAUniqueID.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.PleaseProvideAValidIDForTheProductAttributeGroup.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- end error handling -->\n<tr>\n<td class=\"table_title_description w e\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 {out.write(localizeISText("NewProductAttributeGroup_52.ClickApplyToSaveTheDetailsClickCancelToStopEveryth.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action140 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null)))),null));String site140 = null;String serverGroup140 = null;String actionValue140 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null)))),null);if (site140 == null){  site140 = action140.getDomain();  if (site140 == null)  {      site140 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup140 == null){  serverGroup140 = action140.getServerGroup();  if (serverGroup140 == null)  {      serverGroup140 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue140, site140, serverGroup140,true)); 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale aldi\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"infobox_item\">\n<select name=\"LocaleId\" class=\"select inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"setLocale\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write(' ');
      out.write('\n');
 URLPipelineAction action141 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null));String site141 = null;String serverGroup141 = null;String actionValue141 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null);if (site141 == null){  site141 = action141.getDomain();  if (site141 == null)  {      site141 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup141 == null){  serverGroup141 = action141.getServerGroup();  if (serverGroup141 == null)  {      serverGroup141 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttributeGroupForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue141, site141, serverGroup141,true)); 
      out.write("<input name=\"webform-id\" type=\"hidden\" value=\"ProductAttributeGroupForm\"/>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"4\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr> \n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td> \n<td>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"ProductAttributeGroupForm_DisplayName\" class=\"inputfield_en\" maxlength=\"2048\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n<td class=\"input_checkbox\" align=\"left\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("ProductAttributeGroupForm:isSubmitted"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ProductAttributeGroupForm:AvailableViaREST:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"ProductAttributeGroupForm_AvailableViaREST\" checked=\"checked\" value=\"true\"/>");
 } else { 
      out.write("<input type=\"checkbox\" name=\"ProductAttributeGroupForm_AvailableViaREST\" value=\"true\"/>");
 } 
      out.write("</td>\n<td nowrap=\"nowrap\" class=\"label_checkbox_text\"><label class=\"label label_checkbox_text\" for=\"ProductAttributeGroupForm_AvailableViaREST\">");
 {out.write(localizeISText("ProductAttributeGroup_52.AvailableViaRest.checkbox",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n</tr> \n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeGroupForm:ProductAttributeGroupID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
      out.write("<td class=\"table_detail\" width=\"100%\">\n<input type=\"text\" name=\"ProductAttributeGroupForm_ProductAttributeGroupID\" class=\"inputfield_en\" maxlength=\"255\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupForm:ProductAttributeGroupID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"3\"> \n<textarea name=\"ProductAttributeGroupForm_Description\" rows=\"10\" cols=\"70\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeGroupForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> \n<tr>\n<td align=\"right\"> \n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"LocaleId\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input class=\"button\" type=\"submit\" name=\"Create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"CancelCreate\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProductAttributeGroup_52.Cancel.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table> \n</td> \n</tr>\n</table>");
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
