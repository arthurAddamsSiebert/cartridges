/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fsystem_005fapp.default_.catalog;

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

public final class BrowseCatalog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))))),
new TagParameter("text",getObject("Category:DisplayName"))}, 3); 
 URLPipelineAction action43 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));String site43 = null;String serverGroup43 = null;String actionValue43 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null);if (site43 == null){  site43 = action43.getDomain();  if (site43 == null)  {      site43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup43 == null){  serverGroup43 = action43.getServerGroup();  if (serverGroup43 == null)  {      serverGroup43 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("RootCategoryForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue43, site43, serverGroup43,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"infobox aldi\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("<td nowrap=\"nowrap\" class=\"infobox_title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td width=\"100%\" valign=\"bottom\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Catalog:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Category:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.ImplicitProductBinding.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("</td>");
 } else { 
      out.write("<td nowrap=\"nowrap\" class=\"infobox_title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>\n<td width=\"100%\" valign=\"bottom\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_online.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.Online.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("&nbsp;");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Category:ProductBindingType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/status_implicitly_bound.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.ImplicitProductBinding.alt",null)),null));
      out.write("\" border=\"0\"/>");
 } 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<td class=\"infobox_description\" width=\"100%\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Category:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write("&nbsp;</td>");
 } 
      out.write("<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CatalogID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ParentCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Category:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_ENTERPRISES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<input type=\"submit\" name=\"EditCatalog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.Edit.button",null)),null));
      out.write("\" class=\"button\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"EditCatalog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.View.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
 } else { 
      out.write("<input type=\"submit\" name=\"ViewCategory\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.View.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
      out.write("</td> \n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Category:isRootCategory")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"5\" width=\"100%\" class=\"infobox w e s\">");
 {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} 
 while (loop("CategoriesPath","Cat",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
      out.write("<td class=\"infobox_description\" style=\"padding-left:");
      out.print(context.getFormattedValue((new Double( ((Number) (val(context.getFormattedValue((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(13)).doubleValue())),null)))).doubleValue() +((Number) new Double(4)).doubleValue())),null));
      out.write("px;\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 {out.write(localizeISText("BrowseCatalog.Catalog.infobox_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
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
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Cat:UUID"),null).equals(context.getFormattedValue(getObject("Category:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Cat:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))),null));
      out.write("\" class=\"infobox_link\">");
 {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("Cat:Name"),null),((Number)((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(2)).doubleValue())))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(pad(context.getFormattedValue(getObject("Cat:Name"),null),((Number)((new Double( ((Number) getObject("level")).doubleValue() *((Number) new Double(2)).doubleValue())))).intValue()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Cat:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
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
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\" nowrap=\"nowrap\">");
 {out.write(localizeISText("BrowseCatalog.Categories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"5\">");
 {out.write(localizeISText("BrowseCatalog.ThisListDisplaysAllSubCategories.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s\">");
 {out.write(localizeISText("BrowseCatalog.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("BrowseCatalog.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("BrowseCatalog.Keywords.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">&nbsp;</td>\n</tr>");
 while (loop("SubCategories","SubCategory",null)) { 
      out.write("<tr>\n<td class=\"table_detail w e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</td>\n<td class=\"table_detail e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</td>\n<td class=\"table_detail e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SubCategory:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SubCategory:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {out.write(localizeISText("BrowseCatalog.ThereAreNoKeywordsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td class=\"table_detail e s\">\n&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-ShowCategoryInfo",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("SubCategory:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))),null));
      out.write("\" class=\"action_link\">");
 {out.write(localizeISText("BrowseCatalog.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>&nbsp;\n</td>\n</tr>");
 } 
      out.write("</table>\n<div><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></div> \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td width=\"100%\">");
 URLPipelineAction action44 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));String site44 = null;String serverGroup44 = null;String actionValue44 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null);if (site44 == null){  site44 = action44.getDomain();  if (site44 == null)  {      site44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup44 == null){  serverGroup44 = action44.getServerGroup();  if (serverGroup44 == null)  {      serverGroup44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("pagingForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue44, site44, serverGroup44,true)); 
 processOpenTag(response, pageContext, "pagingbar", new TagParameter[] {
new TagParameter("pageable","SubCategories")}, 121); 
 out.print("</form>"); 
      out.write("</td>\n</tr>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("BrowseCatalog.ThisCategoryDoesNotContainAnySubCategori.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action45 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));String site45 = null;String serverGroup45 = null;String actionValue45 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null);if (site45 == null){  site45 = action45.getDomain();  if (site45 == null)  {      site45 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup45 == null){  serverGroup45 = action45.getServerGroup();  if (serverGroup45 == null)  {      serverGroup45 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalog-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("backForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue45, site45, serverGroup45,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("Category:Parent"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td width=\"100%\" class=\"backbar_left\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Catalog:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
      out.print(context.getFormattedValue(getObject("Category:Parent:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"BackToParent\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("BrowseCatalog.BackToParent.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Category:Parent"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "157");} 
 } 
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
