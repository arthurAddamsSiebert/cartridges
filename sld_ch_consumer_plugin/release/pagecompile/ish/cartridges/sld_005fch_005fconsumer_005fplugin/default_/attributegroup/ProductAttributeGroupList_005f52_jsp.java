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

public final class ProductAttributeGroupList_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Page Navigator -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttributeGroupList_52.ChannelCatalogs.text",null)))}, 3); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_ch_consumer_plugin.ProductAttributeGroups.text",null)))}, 4); 
      out.write("<!-- EO Page Navigator -->");
 URLPipelineAction action145 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null));String site145 = null;String serverGroup145 = null;String actionValue145 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null);if (site145 == null){  site145 = action145.getDomain();  if (site145 == null)  {      site145 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup145 == null){  serverGroup145 = action145.getServerGroup();  if (serverGroup145 == null)  {      serverGroup145 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductAttributeGroupListForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue145, site145, serverGroup145,true)); 
      out.write("<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ProductAttributeGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ConfirmDelete")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ObjectCollection:Size"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttributeGroupList_52.ProductAttributeGroup.subject",null))),
new TagParameter("cancelbtnname","CancelDelete"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","sdc")}, 15); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedAttributeGroupUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttributeGroupList_52.ProductAttributeGroup.subject",null))),
new TagParameter("cancelbtnname","CancelDelete"),
new TagParameter("okbtnname","Delete"),
new TagParameter("type","mdc")}, 17); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductAttributeGroupList_52.ProductAttributeGroup.subject",null))),
new TagParameter("type","mde")}, 19); 
 }} 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ProductAttributeGroupList_52.ProductAttributeGroupsListedHereCanBeUsed.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr> \n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductAttributeGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 29); 
      out.write(" \n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"stickyHeader\">\n<thead>\n<tr>\n<td colspan=\"4\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"New\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.New.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"submit\" name=\"ConfirmDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.Delete.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<th class=\"table_header w e s\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ProductAttributeGroupListForm','SelectedAttributeGroupUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('ProductAttributeGroupListForm','SelectedAttributeGroupUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</th>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("<th class=\"table_header e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.AttributeGroupName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 } else { 
      out.write("<th class=\"table_header w e s\">");
 {out.write(localizeISText("sld_ch_consumer_plugin.AttributeGroupName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 } 
      out.write("<th class=\"table_header e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("id",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("sld_ch_consumer_plugin.ID.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> \n");
 } 
      out.write("</th>\n<th class=\"table_header e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("SortBy"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortBy"),null).equals(context.getFormattedValue("fixedflag",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SortDirection"),null).equals(context.getFormattedValue("descending",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("fixedflag",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("ascending",null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("sld_ch_consumer_plugin.Type.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>");
 } else { 
      out.write("<a class=\"tableheader\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Sort",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SortBy",null),context.getFormattedValue("fixedflag",null))).addURLParameter(context.getFormattedValue("SortDirection",null),context.getFormattedValue("descending",null))),null));
      out.write('"');
      out.write(' ');
      out.write('>');
 {out.write(localizeISText("sld_ch_consumer_plugin.Type.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a> \n");
 } 
      out.write("</th>\n</tr>\n</thead>\n<tbody>");
 while (loop("ProductAttributeGroups","AttributeGroup",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("<td class=\"w e s center\">\n<input type=\"hidden\" name=\"AttributeGroupUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeGroup:UUID"),null));
      out.write("\"/>\n<input type=\"checkbox\" name=\"SelectedAttributeGroupUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeGroup:UUID"),null));
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AttributeGroup:isFixed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedAttributeGroupUUIDs"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
 while (loop("SelectedAttributeGroupUUIDs","SAGU",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SAGU"),null).equals(context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",108);}else{getLoopStack().pop();break;} 
 } 
 } 
 } 
      out.write("\n/>\n</td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail e s\">");
 } else { 
      out.write("<td class=\"table_detail w e s\"> \n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AttributeGroup:isFixed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("ORDER_REQUIRED_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttributeGroupList_52.OrderRequiredAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("PRODUCT_DETAIL_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttributeGroupList_52.ProductDetailAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("BACKOFFICE_SEARCH_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttributeGroupList_52.BackOfficeSearchAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("PRODUCT_INDEX_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttributeGroupList_52.ProductIndexAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 }}}} 
 } else { 
 {Object temp_obj = (getObject("AttributeGroup:DisplayName(Locale)")); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroupDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroups_52-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AttributeGroup:isFixed"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductAttributeGroupList_52.Fixed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductAttributeGroupList_52.Custom.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("</tbody>\n<tfoot>\n</tfoot>\n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("ProductAttributeGroupList_52.ThereAreCurrentlyNoProductAttributeGroupsToShowHer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("ProductAttributeGroupList_52.ClickNewToCreateANewProductAttributeGroup.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",158,e);}if (_boolean_result) { 
      out.write("<table class=\"w e s\" width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"New\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_ch_consumer_plugin.New.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 } 
 out.print("</form>"); 
      out.write(' ');
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
