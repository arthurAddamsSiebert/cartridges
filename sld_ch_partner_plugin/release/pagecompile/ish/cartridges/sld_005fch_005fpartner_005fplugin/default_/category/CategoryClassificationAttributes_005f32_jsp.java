/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fpartner_005fplugin.default_.category;

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

public final class CategoryClassificationAttributes_005f32_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigation -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.ClassificationAttributes.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("Category:UUID")),
new TagParameter("text",getObject("Category:DisplayName"))}, 3); 
      out.write("<!-- EO Page Navigation -->");
getPipelineDictionary().put("SelectedTab", "Classification");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CatalogTabs_32", null, "7");} 
 URLPipelineAction action154 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Dispatch",null)))),null));String site154 = null;String serverGroup154 = null;String actionValue154 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Dispatch",null)))),null);if (site154 == null){  site154 = action154.getDomain();  if (site154 == null)  {      site154 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup154 == null){  serverGroup154 = action154.getServerGroup();  if (serverGroup154 == null)  {      serverGroup154 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue154, site154, serverGroup154,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"w e s table_title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("CategoryClassificationAttributes_32.ClassificationAttributes.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDeleteClassificationAttributes")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedProductTypeAttributeNames")))).booleanValue() && ((Boolean) (hasLoopElements("SelectedProductTypeAttributeNames") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","classification attribute"),
new TagParameter("cancelbtnname","ChangeLocaleInList"),
new TagParameter("okbtnname","DeleteClassificationAttributes"),
new TagParameter("type","mdc")}, 15); 
 } else { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\"> \n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.YouHaveNotSelectedAnyClassificationAttributesUseTh.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
      out.print(context.getFormattedValue(getObject("Category:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_shared_product_from.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.SharedFromAnother.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.SharedFromAnother.title",null)),null));
      out.write("\" border=\"0\"/> \n");
 {out.write(localizeISText("CategoryClassificationAttributes_32.ThisCatalogIsSharedFrom0",null,null,encodeString(context.getFormattedValue(getObject("Catalog:OriginalCatalog:OwningDomain:DomainInformation:DomainName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("<br>");
 } 
      out.write(' ');
      out.write('\n');
 {out.write(localizeISText("CategoryClassificationAttributes_32.TheAttributesListedHereAreAutomaticallyAssignedToA",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductType")))).booleanValue() && ((Boolean) (hasLoopElements("ProductType:CustomProductAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale w e s \">\n<tr> \n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":&nbsp;</td>\n<td>\n<select name=\"LocaleId\" class=\"select\">");
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
      out.write("</select>\n</td>\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"ChangeLocaleInList\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table> \n</td>\n</tr>\n<tr>\n<td class=\"w e s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s center\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("<a href=\"javascript:selectAll('formMask','SelectedProductTypeAttributeName','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','SelectedProductTypeAttributeName','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write("<td class=\"table_header e s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.ClassificationAttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.AttributeGroup.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s left\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s center\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.ValueRange.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s center\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.Localizable.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("ProductType:CustomProductAttributes","PTA",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
      out.write("<td class=\"e s center top\"><input type=\"checkbox\" name=\"SelectedProductTypeAttributeName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedProductTypeAttributeNames"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
 while (loop("SelectedProductTypeAttributeNames","SPTA",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:Name"),null).equals(context.getFormattedValue(getObject("SPTA"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",118);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("Catalog:isProxy")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>");
 } 
      out.write("<td class=\"table_detail e s top\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ProductTypeAttributeName",null),context.getFormattedValue(getObject("PTA:Name"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PTA:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {125}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PTA:DisplayName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n<td class=\"table_detail e s top\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ProductTypeAttributeName",null),context.getFormattedValue(getObject("PTA:Name"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n<td class=\"table_detail e s top\">&nbsp;</td>\n<td class=\"table_detail e s top\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.MultipleIntegers.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.MultipleDoubles.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.MultipleStrings.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}}}} 
      out.write("</td>\n<td class=\"table_detail e s top center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PTA:isEnumeration"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.Yes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.No.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td class=\"table_detail e s top center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PTA:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.Yes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("CategoryClassificationAttributes_32.No.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
      out.write(" \n<tr>\n<td align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"NewClassificationAttribute\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"submit\" name=\"ConfirmDeleteClassificationAttributes\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.Delete.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("CategoryClassificationAttributes_32.ThisCategoryDoesNotDefineAnyClassificationAttribut.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
      out.write("<tr>\n<td align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"NewClassificationAttribute\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryClassificationAttributes_32.New.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "192");} 
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