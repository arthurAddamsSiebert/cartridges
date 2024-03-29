/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.category;

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

public final class BrowseCatalogCategory_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
      out.write("<!-- BrowseCatalogCategory.isml -->\n<!-- Checks if the category has dynamic product binding (SQD in the current channel domain) -->");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","Name"),
new TagParameter("value0",getObject("Category:SearchQueryDefinitionName")),
new TagParameter("mapname","GetSQDByNameParamMap")}, 6); 
 {try{executePipeline("ProcessSearchQueryDefinitionBySearchIndex-GetCategorySQDByName",((java.util.Map)(getObject("GetSQDByNameParamMap"))),"GetSQDByNameResultDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Catalog:DisplayName")); getPipelineDictionary().put("CatDisplayName", temp_obj);} 
 } else { 
 processOpenTag(response, pageContext, "categorydisplayname", new TagParameter[] {
new TagParameter("CatDisplayNameResult","CatDisplayName"),
new TagParameter("Category",getObject("Category")),
new TagParameter("UseIDFallback","true"),
new TagParameter("SkipPrint","true")}, 15); 
 } 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Back",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("HideEmpty",null),context.getFormattedValue(getObject("HideEmpty"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id",context.getFormattedValue(getObject("Category:UUID"),null) + context.getFormattedValue("-Browse",null)),
new TagParameter("text",getObject("CatDisplayName"))}, 17); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"infobox aldi\" data-testing-id=\"bo-catalog-category-overview-organization\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("previewThis"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((disableErrorMessages().isDefined(getObject("PreviewCategoryError")))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"w e s\" colspan=\"4\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error\" width=\"100%\">");
 processOpenTag(response, pageContext, "previewerror", new TagParameter[] {
new TagParameter("parametervalue3",getObject("MasterPageEditingChannel")),
new TagParameter("parametername1","CatalogCategoryID"),
new TagParameter("parametervalue2",getObject("Catalog:UUID")),
new TagParameter("parametervalue1",getObject("PreviewCatalogCategoryID")),
new TagParameter("parametername2","CatalogUUID"),
new TagParameter("parametername3","MasterPageEditingChannel"),
new TagParameter("previewError",getObject("PreviewCategoryError"))}, 26); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("confirmPreview")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("previewTyp")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewTyp"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 URLPipelineAction action263 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null));String site263 = null;String serverGroup263 = null;String actionValue263 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null);if (site263 == null){  site263 = action263.getDomain();  if (site263 == null)  {      site263 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup263 == null){  serverGroup263 = action263.getServerGroup();  if (serverGroup263 == null)  {      serverGroup263 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("confirmForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue263, site263, serverGroup263,true)); 
      out.write("<input type=\"hidden\" name=\"PreviewCatalogCategoryID\" value=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("PreviewCatalogCategoryID"),null)),null));
      out.write("\" />\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("PreviewCatalogUUID"),null)),null));
      out.write("\" />");
 processOpenTag(response, pageContext, "previewmessagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("itemType","category"),
new TagParameter("class","error_icon top"),
new TagParameter("previewMessage",getObject("confirmPreview"))}, 39); 
 out.print("</form>"); 
 } 
 }} 
      out.write(' ');
      out.write('\n');
 } 
      out.write(" \n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"infobox_title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CatDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td width=\"100%\" valign=\"bottom\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Category:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.ImplicitProductBinding.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.DynamicProductBinding.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.DynamicProductBinding.title",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("</td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"infobox_title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CatDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td width=\"100%\" valign=\"bottom\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.Online.alt1",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Category:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.ImplicitProductBinding.alt1",null)),null));
      out.write("\" border=\"0\"/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.DynamicProductBinding.alt1",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.DynamicProductBinding.title1",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"infobox_description\" width=\"100%\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Category:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("<BR>");
 } else { 
      out.write("&nbsp;\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GetSQDByNameResultDict:SearchQueryDefinition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
 {out.write(localizeISText("BrowseCatalogCategory.ThisCategoryUsesDynamicProductBinding.infobox_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_STOREFRONT")))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("ApplicationBO:getExtension(\"(Class)com.intershop.sellside.enterprise.capi.preview.ApplicationBOPreviewExtension\"):PreviewTargetApplicationBO(CurrentUser)"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("<td align=\"right\">");
 URLPipelineAction action264 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-PreviewCategory",null)))),null));String site264 = null;String serverGroup264 = null;String actionValue264 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-PreviewCategory",null)))),null);if (site264 == null){  site264 = action264.getDomain();  if (site264 == null)  {      site264 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup264 == null){  serverGroup264 = action264.getServerGroup();  if (serverGroup264 == null)  {      serverGroup264 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-PreviewCategory",null)))),null));out.print("\"");out.print(" name=\"");out.print("rootCategoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue264, site264, serverGroup264,true)); 
      out.write("<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"PreviewCatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ContextPipeline\" value=\"ViewBrowseCatalogCategory-Paging\"/>\n<input type=\"hidden\" name=\"contextParameter_CatalogID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"contextParameter_CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"previewThisCategory\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.CategoryPreview.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</td>");
 } 
      out.write("<td align=\"right\"> \n");
 URLPipelineAction action265 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null));String site265 = null;String serverGroup265 = null;String actionValue265 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null);if (site265 == null){  site265 = action265.getDomain();  if (site265 == null)  {      site265 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup265 == null){  serverGroup265 = action265.getServerGroup();  if (serverGroup265 == null)  {      serverGroup265 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("editCategoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue265, site265, serverGroup265,true)); 
      out.write("<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CatalogID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ParentCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"edit\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) ((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.EditProperties.button",null)),null));
 } else { 
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.ViewProperties.button",null)),null));
 } 
      out.write("\" class=\"button\"/>\n</td> \n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("Catalog:TypeCode"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((Boolean) getObject("Category:isRootCategory")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\" class=\"infobox w e s\">");
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} 
 while (loop("CategoriesPath","Cat",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("<td class=\"infobox_description\" style=\"padding-left:");
      out.print(context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(13)).doubleValue())),null)))).doubleValue() +((Number) new Double(4)).doubleValue())),null));
      out.write("px;\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
 {out.write(localizeISText("BrowseCatalogCategory.Catalog.infobox_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(':');
      out.write('\n');
 } else { 
int level = ((Double)getObject("level")).intValue();
      out.print(((com.intershop.component.mvc.capi.catalog.ClassificationSystem)getObject("Catalog:ClassificationSystem")).getLevelName(level) );
 } 
      out.write("</td>");
 } 
      out.write("<td class=\"infobox_description\" width=\"90%\" style=\"padding-left:");
      out.print(context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(13)).doubleValue())),null)))).doubleValue() +((Number) new Double(4)).doubleValue())),null));
      out.write("px;\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Cat:ID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Cat:ID"),null))).addURLParameter(context.getFormattedValue("HideEmpty",null),context.getFormattedValue(getObject("HideEmpty"),null))),null));
      out.write("\" class=\"infobox_link\">");
 processOpenTag(response, pageContext, "catalogcategorybodisplayname", new TagParameter[] {
new TagParameter("UseIDFallback","true"),
new TagParameter("CatalogCategoryBO",getObject("Cat"))}, 120); 
      out.write("</a>");
 } else { 
 processOpenTag(response, pageContext, "catalogcategorybodisplayname", new TagParameter[] {
new TagParameter("UseIDFallback","true"),
new TagParameter("CatalogCategoryBO",getObject("Cat"))}, 122); 
 } 
      out.write("</td>\n</tr>");
 {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} 
 } 
      out.write("<tr><td colspan=\"2\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td></tr>\n</table>");
 } 
      out.write("<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<!-- Main Content -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isProxy"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/SharedCatalogCategories", null, "136");} 
 } else { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/LocalCatalogCategories", null, "138");} 
 } 
      out.write(" \n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<!-- Products -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"category/CatalogCategoryProducts", null, "143");} 
      out.write("<!-- EO Main Content -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "148");} 
 } else { 
      out.write("<div>");
 URLPipelineAction action266 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Parent",null)))),null));String site266 = null;String serverGroup266 = null;String actionValue266 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Parent",null)))),null);if (site266 == null){  site266 = action266.getDomain();  if (site266 == null)  {      site266 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup266 == null){  serverGroup266 = action266.getServerGroup();  if (serverGroup266 == null)  {      serverGroup266 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewBrowseCatalogCategory-Parent",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue266, site266, serverGroup266,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td width=\"100%\" class=\"backbar_left\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"HideEmpty\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("HideEmpty"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {159}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {162}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ParentPage\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ParentPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("Category:Parent"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"back\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalogCategory.BackToParent.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("</div>");
 while (loop("ApplicationState:Breadcrumbs","Entry",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("MasterPages",null).equals(context.getFormattedValue(getObject("Entry:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList.isml", null, "177");} 
 } 
 } 
 } 
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
