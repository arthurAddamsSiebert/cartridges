/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.category.link;

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

public final class CategoryLinkCategoryList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 context.setCustomTagTemplateName("categorytocategorylinkrow","category/link/CategoryToCategoryLinkRow.isml",false,new String[]{"link","directionrow","showsortmenu","rowspan"},null); 
      out.write('\n');
      out.write('\n');
 {Object temp_obj = (getObject("LegacyLinkHelper:LegacyTypeCodeName(linktype,linktypegroup)")); getPipelineDictionary().put("LegacyTypeCodeName", temp_obj);} 
      out.write('\n');
 {Object temp_obj = (context.getFormattedValue("cat_cat_link_form_",null) + context.getFormattedValue(getObject("linktype:ID"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("direction"),null)); getPipelineDictionary().put("CatLinkForm_ID", temp_obj);} 
      out.write('\n');
      out.write('\n');
      out.write('\n');
 URLPipelineAction action275 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));String site275 = null;String serverGroup275 = null;String actionValue275 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null);if (site275 == null){  site275 = action275.getDomain();  if (site275 == null)  {      site275 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup275 == null){  serverGroup275 = action275.getServerGroup();  if (serverGroup275 == null)  {      serverGroup275 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryCategoryLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("CatLinkForm_ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue275, site275, serverGroup275,true)); 
      out.write("\n\t<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategoryBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<input type=\"hidden\" name=\"CatalogUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("StrippedSelectedLinkType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("StrippedSelectedLinkType"),null).equals(context.getFormattedValue(getObject("linktype:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkDirection")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkDirection"),null).equals(context.getFormattedValue(getObject("direction"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("\n\n\t\t\n\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t\t<!-- delete confirmation for category-links -->\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && ((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t<tr>\n\t\t\t\t\t<td>\n\t\t\t\t\t\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n\t\t\t\t\t\t\t");
 {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} 
      out.write("\n\t\t\t\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.Categorie.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteCategoryLinks"),
new TagParameter("okbtnname","deleteCategoryLinkBOs"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("CategoryLinksMessage")),
new TagParameter("class","w100")}, 32); 
      out.write("\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t</td>\n\t\t\t\t</tr>\n\t\t\t");
 } 
      out.write("\n\n\t\t\t<!-- delete confirmation if nothing is selected-->\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmCategoryLinksDelete")))).booleanValue() && !((Boolean) (hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","mdea")}, 45); 
      out.write("\n\t\t\t");
 } 
      out.write("\n\n\t\t\t<!-- move links if nothing is selected-->\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ERROR_SELECTION_MOVE_CATEGORY_LINKS"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("sld_enterprise_app.CategoryLink.subject",null))),
new TagParameter("type","nse")}, 50); 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t</table>\n\t");
 } 
      out.write("\n\n\t\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("links") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("\n\t\t\n\t\t");
 {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS")))).booleanValue() && ((Boolean) (getObject("direction:Outgoing"))).booleanValue() && ((Boolean) ((( ((Number) getObject("links:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("ShowSortMenu", temp_obj);} 
      out.write("\n\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n\t\t\t<tr>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t<td class=\"table_header e s center select_all\" width=\"5%\" nowrap=\"nowrap\">\n\t\t\t\t\t\t<div id=\"CCA");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center w100\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','SelectedObjectUUID','CCA");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','CCB");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("');\" class=\"tableheader\">");
 {out.write(localizeISText("CategoryLinkCategoryList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</div>\n\t\t\t\t\t\t<div id=\"CCB");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" style=\"display:none\">\n\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"center w100\">\n\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t<td nowrap=\"nowrap\">\n\t\t\t\t\t\t\t\t<a href=\"javascript:selectAll('");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','SelectedObjectUUID','CCA");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("','CCB");
 {String value = null;try{value=context.getFormattedValue(getObject("CatLinkForm_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("');\" class=\"tableheader\">");
 {out.write(localizeISText("CategoryLinkCategoryList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</div>\n\t\t\t\t\t</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t\t<td class=\"table_header e s\">");
 {out.write(localizeISText("CategoryLinkCategoryList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header e s\" width=\"15%\">");
 {out.write(localizeISText("CategoryLinkCategoryList.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header e s\" width=\"30%\">");
 {out.write(localizeISText("CategoryLinkCategoryList.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t<td class=\"table_header s\" width=\"10%\" nowrap=\"nowrap\">");
 {out.write(localizeISText("CategoryLinkCategoryList.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShowSortMenu"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("\t\n\t\t\t\t\t<td class=\"table_header w s\" width=\"5%\">");
 {out.write(localizeISText("CategoryLinkCategoryList.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t\t\t\t");
 } 
      out.write("\n\t\t\t</tr>\n\n\t\t\t");
 while (loop("links","CurrentLinkBO","cnt")) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "categorytocategorylinkrow", new TagParameter[] {
new TagParameter("directionrow",getObject("direction")),
new TagParameter("rowspan",getObject("links:Size")),
new TagParameter("link",getObject("CurrentLinkBO")),
new TagParameter("showsortmenu",((((Boolean) (getObject("ShowSortMenu"))).booleanValue() && ((Boolean) ((( ((Number) getObject("cnt")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 94); 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t</table>\n\t");
 } else { 
      out.write("\n\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e\">\n\t\t\t<tr>\n\t\t\t\t<td class=\"table_detail s\">\n\t\t\t\t\t");
 {out.write(localizeISText("CategoryLinkCategoryList.ClickAssignToCreateANewCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t\t\t</td>\n\t\t\t</tr>\n\t\t</table>\n\t");
 } 
      out.write("\n\t\n\t<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"w e s\">\n\t\t<tr>\n\t\t\t<td align=\"right\">\n\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"SelectedLinkType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LegacyTypeCodeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"StrippedSelectedLinkType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("linktype:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t\t\t<input type=\"hidden\" name=\"SelectedLinkDirection\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("direction"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n\t\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("direction:Outgoing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"linkTypeSelected\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Assign.button",null)),null));
      out.write("\" class=\"button\" />\n\t\t\t\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"incomingLinkTypeSelected\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Assign.button",null)),null));
      out.write("\" class=\"button\" />\n\t\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("links") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"confirmCategoryLinksDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("CategoryLinkCategoryList.Unassign.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t");
 } 
      out.write("\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n\t\n");
 out.print("</form>"); 
      out.write('\n');
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
