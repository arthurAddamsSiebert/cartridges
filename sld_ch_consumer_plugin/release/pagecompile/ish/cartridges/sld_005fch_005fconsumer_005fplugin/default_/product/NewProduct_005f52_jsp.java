/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.product;

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

public final class NewProduct_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewProduct_52.NewProduct.text",null)))}, 4); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" data-testing-id=\"page-bo-product-new-channel\">\n<tr>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Content.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.OnlineOffline.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Variations.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRICES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Pricing.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_AUCTIONS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Auction.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Classifications.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Attachments.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Links.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Bundles.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:CM_PERMISSION_ASSIGN"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.CMCContent.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Ratings.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.RetailSet.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Labels.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"ProductTabs_52", null, "33");} 
      out.write("<td class=\"s\" width=\"100%\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {out.write(localizeISText("NewProduct_52.NewProduct.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- errors -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ExistingProduct")))).booleanValue() || ((Boolean) getObject("CreateProduct:ProductID:isMissing")).booleanValue() || ((Boolean) getObject("CreateProduct:ProductName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("BackFromImageSelection")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr valign=\"top\">\n<td class=\"error_icon top e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\"><b>");
 {out.write(localizeISText("NewProduct_52.ProductCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductID:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewProduct_52.ProductIDIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewProduct_52.ProductNameIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("IsUniqueSKU")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewProduct_52.PleaseProvideAUniqueProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExistingProduct"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 {out.write(localizeISText("NewProduct_52.PleaseProvideAUniqueProductID.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<!-- EO errors-->\n<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("NewProduct_52.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>\n<br/>");
 {out.write(localizeISText("NewProduct_52.ClickApplyToSaveTheDetailsClickCancelToStop.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action98 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-New",null)))),null));String site98 = null;String serverGroup98 = null;String actionValue98 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-New",null)))),null);if (site98 == null){  site98 = action98.getDomain();  if (site98 == null)  {      site98 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup98 == null){  serverGroup98 = action98.getServerGroup();  if (serverGroup98 == null)  {      serverGroup98 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-New",null)))),null));out.print("\"");out.print(" name=\"");out.print("localeForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue98, site98, serverGroup98,true)); 
      out.write("<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale aldi\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td>\n<select name=\"LocaleId\" class=\"select inputfield_en\">");
 while (loop("Locales","Locales",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Locale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProduct_52.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 URLPipelineAction action99 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));String site99 = null;String serverGroup99 = null;String actionValue99 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null);if (site99 == null){  site99 = action99.getDomain();  if (site99 == null)  {      site99 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup99 == null){  serverGroup99 = action99.getServerGroup();  if (serverGroup99 == null)  {      serverGroup99 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue99, site99, serverGroup99,true)); 
      out.write("<div style=\"display:none;visibility:hidden\"><input type=\"submit\" name=\"defaultCreate\" /></div>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("CreateProduct:ProductName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
      out.write("<td class=\"table_detail\"><input type=\"text\" name=\"CreateProduct_ProductName\" maxlength=\"400\" size=70 value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/></td>\n</tr>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/NewProductIdAndAvailabilityInclude", null, "109");} 
      out.write("<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.ShortDescription.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">\n<textarea rows=\"3\" cols=\"69\" id=\"CreateProduct_ProductShortDescription\" name=\"CreateProduct_ProductShortDescription\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductShortDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductShortDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("Configuration","Basic"),
new TagParameter("CategoryLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name","CreateProduct_ProductShortDescription")}, 116); 
 } 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.LongDescription.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\">\n<textarea rows=\"10\" cols=\"69\" id=\"CreateProduct_ProductLongDescription\" name=\"CreateProduct_ProductLongDescription\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CreateProduct:ProductLongDescription:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLongDescriptionEditMode"),null).equals(context.getFormattedValue("HTML",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "htmleditor", new TagParameter[] {
new TagParameter("ProductLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("LocaleId",getObject("Locale:LocaleID")),
new TagParameter("CategoryLinkPipeline","ViewStandardCatalog-Browse"),
new TagParameter("Configuration","Advanced"),
new TagParameter("CategoryLinkSite",getObject("CurrentChannel:RepositoryDomain:Site:DomainName")),
new TagParameter("ProductLinkPipeline","ViewProduct-Start"),
new TagParameter("Enabled","true"),
new TagParameter("RepositoryId",getObject("CurrentChannel:RepositoryDomain:UUID")),
new TagParameter("Name","CreateProduct_ProductLongDescription")}, 134); 
 } 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.Warranty.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" width=\"100%\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<input type=\"checkbox\" name=\"CreateProduct_WarrantyEligible\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProduct:WarrantyEligible:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/>\n</td>\n<td type=\"fielditem2\">&nbsp;");
 {out.write(localizeISText("NewProduct_52.CanHaveAWarranty.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("NewProduct_52.GiftWrap.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" width=\"100%\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n<tr>\n<td>\n<input type=\"checkbox\" name=\"CreateProduct_GiftWrappable\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CreateProduct:GiftWrappable:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
      out.write("\n/>\n</td>\n<td type=\"fielditem2\">&nbsp;");
 {out.write(localizeISText("NewProduct_52.CanBeWrappedAsAGift.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table> \n</td>\n</tr>\n<tr>\n<td nowrap=\"nowrap\" class=\"label\"><label class=\"label label_checkbox\">");
 {out.write(localizeISText("NewProduct_52.ImageView.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label></td>\n<td class=\"table_detail\" width=\"100%\">\n<select class=\"inputfield_en select\" name=\"CreateProduct_PrimaryViewID\">\n<option value=\"\">(");
 {out.write(localizeISText("NewProduct_52.UseDefaultSetting.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(")</option>");
 while (loop("ImageViews","ImageView",null)) { 
      out.write("<option value=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:Name"),null)),null));
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("CreateProduct:isSubmitted")).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("CreateProduct:PrimaryViewID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { 
      out.write(" \nselected=\"selected\"\n");
 } 
      out.write('\n');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
      out.write("</select>\n</td>\n</tr>\n</table>\n</td>\n<td valign=\"top\">\n<img class=\"aldi\" style=\"margin-left:20px;margin-right:3px;margin-top:3px\" src=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_52-GenerateThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue("",null))).addURLParameter(context.getFormattedValue("RepositoryDomainId",null),context.getFormattedValue(getObject("CurrentChannel:Domain:UUID"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))),null));
      out.write("\" alt=\"\" />\n</td>\n<td width=\"100%\">&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td colspan=\"3\" class=\"n\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\"><input type=\"hidden\" name=\"LocaleId\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/><input type=\"hidden\" name=\"IsSearchFired\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {211}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ProductCategoryID\" value=\"");
      out.print(context.getFormattedValue(getObject("Category:UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"submit\" name=\"create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProduct_52.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n<td class=\"button\"><input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("NewProduct_52.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->\n<script language=\"javascript\" type=\"text/javascript\">\n<!-- \ndocument.formMask.CreateProduct_ProductName.focus();\n//IE default submit solution. Not required for normal browsers\ndocument.formMask.onkeydown=submitCreate;\nfunction submitCreate(evt) {\nevt = (evt) ? evt : event;\nvar charCode = (evt.charCode) ? evt.charCode :\n((evt.which) ? evt.which : evt.keyCode);\nif (charCode == 13) {\nformMask.create.focus();\nformMask.create.onkeypress();\nreturn false;\n}\nreturn true;\n}\n//End of IE solution\n-->\n</script>");
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
