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

public final class ProductAttributeDescriptor_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("AttributeDescriptor:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","newProductAttributeDescriptor"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeDescriptorUUID",null),context.getFormattedValue(getObject("AttributeDescriptor:UUID"),null))).addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroupUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("AttributeDescriptorUUID")),
new TagParameter("text",getObject("AttributeDescriptor:DisplayName"))}, 4); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","newProductAttributeDescriptor"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeDescriptorUUID",null),context.getFormattedValue(getObject("AttributeDescriptor:UUID"),null))).addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroupUUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("AttributeDescriptorUUID")),
new TagParameter("text",getObject("AttributeDescriptor:ID"))}, 6); 
 } 
 URLPipelineAction action146 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors_52-Dispatch",null)))),null));String site146 = null;String serverGroup146 = null;String actionValue146 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors_52-Dispatch",null)))),null);if (site146 == null){  site146 = action146.getDomain();  if (site146 == null)  {      site146 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup146 == null){  serverGroup146 = action146.getServerGroup();  if (serverGroup146 == null)  {      serverGroup146 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeDescriptors_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttributeDescriptorForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue146, site146, serverGroup146,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("AttributeDescriptor:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeDescriptor:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeDescriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfirmSingleDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttributeDescriptor_52.ProductAttributeDescriptor.subject",null))),
new TagParameter("cancelbtnname","CancelSingleDelete"),
new TagParameter("okbtnname","SingleDelete"),
new TagParameter("type","sdc")}, 23); 
      out.write(' ');
      out.write('\n');
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Error_ID")))).booleanValue() || ((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<tr>\n<td> \n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\"> \n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">");
 {out.write(localizeISText("ProductAttributeDescriptor_52.ProductAttributeDescriptorUpdateFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error_ID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_ch_consumer_plugin.SpecifiedIDIsAlreadyInUsePleaseProvideAUniqueID.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductAttributeDescriptor_52.PleaseProvideAValidIDForThisProductAttributeDescri.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table> \n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/> \n");
 {out.write(localizeISText("ProductAttributeDescriptor_52.TheIDWillBeUsedToMatchThisAttribute.table_title_description1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td class=\"table_title_description w e s\" nowrap=\"nowrap\"> \n");
 {out.write(localizeISText("ProductAttributeDescriptor_52.TheIDWillBeUsedToMatchThisAttributeWithAStandardOr.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale w e s\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<select name=\"LocaleId\" class=\"dropdown inputfield_en\">");
 while (loop("Locales",null,null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"ChangeLocaleInDetails\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table> \n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>\n<input name=\"webform-id\" type=\"hidden\" value=\"ProductAttributeDescriptorForm\"/>\n<input name=\"AttributeGroupUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeGroup:UUID"),null));
      out.write("\"/>\n<input name=\"AttributeDescriptorUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeDescriptor:UUID"),null));
      out.write("\"/>\n<input name=\"SelectedAttributeDescriptorUUID\" type=\"hidden\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeDescriptor:UUID"),null));
      out.write("\"/>\n<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"4\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductAttributeDescriptorForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_DisplayName\" class=\"inputfield_en\" maxlength=\"2048\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeDescriptorForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_DisplayName\" class=\"inputfield_en\" maxlength=\"2048\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeDescriptorForm:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" disabled=\"disabled\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_DisplayName\" class=\"inputfield_en\" maxlength=\"2048\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeDescriptor:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_DisplayName\" class=\"inputfield_en\" maxlength=\"2048\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeDescriptor:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isMissing")).booleanValue() || ((Boolean) getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 }} 
      out.write("<td class=\"table_detail\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductAttributeDescriptorForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_ProductAttributeDescriptorID\" class=\"inputfield_en\" maxlength=\"255\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_ProductAttributeDescriptorID\" class=\"inputfield_en\" maxlength=\"255\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductAttributeDescriptorForm:ProductAttributeDescriptorID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" disabled=\"disabled\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_ProductAttributeDescriptorID\" class=\"inputfield_en\" maxlength=\"255\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeDescriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"text\" name=\"ProductAttributeDescriptorForm_ProductAttributeDescriptorID\" class=\"inputfield_en\" maxlength=\"255\" size=\"70\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeDescriptor:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" disabled=\"disabled\"/>");
 } 
      out.write(' ');
      out.write('\n');
 } 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"4\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"> \n<tr>\n<td align=\"right\"> \n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"Update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Apply.button",null)),null));
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input class=\"button\" type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Reset.button",null)),null));
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input class=\"button\" type=\"submit\" name=\"ConfirmSingleDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null));
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table> \n");
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "166");} 
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
