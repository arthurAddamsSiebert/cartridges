/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:23 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fconsumer_005fplugin.default_.syndication;

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

public final class ProductAttributeGroupMapping_005f52_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Page Navigator -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttributeGroupMapping_52.MasterRepositoryMappingRulesAttributeGroup.text",null)))}, 6); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductAttributeGroupMapping_52.ChannelRepositoryMappingRulesAttributeGroup.text",null)))}, 8); 
 } 
      out.write("<!-- EO Page Navigator -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<!-- Tabs -->");
 {Object temp_obj = ("AttributeGroups"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ProductMappingTabs_52", null, "17");} 
      out.write("<!-- EO Tabs -->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductAttributeGroupMapping_52.MasterRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductAttributeGroupMapping_52.ChannelRepository.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ProductAttributeGroupMapping_52.MappingRulesAttributeGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"4\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductAttributeGroupMapping_52.SelectTheAttributeGroupsYouWantToBeConsidered.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductAttributeGroupMapping_52.TheCheckboxIsActivated.table_title_description",null,null,context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/images/checkbox.gif",null),"0",null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 URLPipelineAction action398 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-Dispatch",null)))),null));String site398 = null;String serverGroup398 = null;String actionValue398 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-Dispatch",null)))),null);if (site398 == null){  site398 = action398.getDomain();  if (site398 == null)  {      site398 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup398 == null){  serverGroup398 = action398.getServerGroup();  if (serverGroup398 == null)  {      serverGroup398 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("productAttr");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue398, site398, serverGroup398,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s left\" nowrap=\"nowrap\" width=\"80\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('productAttr','SelectedAttributeGroupUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ProductAttributeGroupMapping_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('productAttr','SelectedAttributeGroupUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ProductAttributeGroupMapping_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>");
 } else { 
 {out.write(localizeISText("ProductAttributeGroupMapping_52.Selected",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ProductAttributeGroupMapping_52.ProductAttributeGroupName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupMapping_52.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupMapping_52.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AttributeGroups","AttributeGroup",null)) { 
      out.write("<tr>\n<td class=\"w e s center\">\n<input type=\"checkbox\" name=\"SelectedAttributeGroupUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeGroup:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedAttributeGroupUUIDMap:get(AttributeGroup:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("BACKOFFICE_SEARCH_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ProductAttributeGroupMapping_52.BackOfficeSearchAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("AttributeGroup:DisplayName(Locale)")); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } 
      out.write(" \n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-ShowAttributeGroupDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null))).addURLParameter(context.getFormattedValue("ProductDataMappingRuleID",null),context.getFormattedValue(getObject("ProductDataMappingRule:UUID"),null)).addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroupDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttributeGroupMapping_52-ShowAttributeGroupDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null))).addURLParameter(context.getFormattedValue("ProductDataMappingRuleID",null),context.getFormattedValue(getObject("ProductDataMappingRule:UUID"),null)).addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null));
      out.write("\" \nclass=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" colspan=\"4\" align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ProductDataMappingRuleID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductDataMappingRule:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ProviderID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"TypeCode\" value=\"7\"/>\n<input type=\"hidden\" name=\"FunctionClassName\" value=\"com.intershop.component.mvc.capi.mapping.ProductAttributeGroupsMappingRule\"/>\n<input type=\"submit\" name=\"Update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductAttributeGroupMapping_52.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"e w s\">\n<tr>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ProductAttributeGroupMapping_52.SelectedSourceRepositoryDoesNotDefineAttributeGroups.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "127");} 
      out.write("<!-- EO Main Content -->\n<!-- EO Working Area -->");
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