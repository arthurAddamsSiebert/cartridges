/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.syndication;

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

public final class ChannelOutboundSyndicationAttributeGroupMapping_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.MappingRulesAttributeGroups.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttributeGroupMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("SyndicationUUID"),null))))),
new TagParameter("id",getObject("Syndication:UUID")),
new TagParameter("text",getObject("Syndication:DisplayName"))}, 4); 
      out.write("<!-- EO Page Navigator -->\n<!-- Tabs -->");
 {Object temp_obj = ("AttributeGroups"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/ChannelOutboundSyndicationMappingTabs", null, "9");} 
      out.write("<!-- EO Tabs -->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {String value = null;try{value=context.getFormattedValue(getObject("Syndication:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.MappingRulesAttributeGroups.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- confirmation if nothing is selected and the button add is clicked-->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Add")))).booleanValue() && !((Boolean) ((hasLoopElements("AttributeSelection") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.Attribute.subject",null))),
new TagParameter("okbtnname","Add"),
new TagParameter("type","mae")}, 19); 
 } 
      out.write("<!-- end errors-->\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\" colspan=\"4\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.SelectTheAttributeGroupsYouWantToBeConsidered.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AttributeGroups") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 while (loop("SyndicationRuleSet:SyndicationRules","Rule",null)) { 
 {Object temp_obj = (getObject("Rule")); getPipelineDictionary().put("SyndicationRule", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",37);}else{getLoopStack().pop();break;} 
 } 
 URLPipelineAction action132 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttributeGroupMapping-Dispatch",null)))),null));String site132 = null;String serverGroup132 = null;String actionValue132 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttributeGroupMapping-Dispatch",null)))),null);if (site132 == null){  site132 = action132.getDomain();  if (site132 == null)  {      site132 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup132 == null){  serverGroup132 = action132.getServerGroup();  if (serverGroup132 == null)  {      serverGroup132 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttributeGroupMapping-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AttributeGroups");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue132, site132, serverGroup132,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_header w e s left\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('AttributeGroups','SelectedAttributeGroupUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\"><a href=\"javascript:selectAll('AttributeGroups','SelectedAttributeGroupUUID','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></td>\n</tr>\n</table>\n</div>\n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.ProductAttributeGroupName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.Description.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 while (loop("AttributeGroups","AttributeGroup",null)) { 
      out.write("<tr>\n<td class=\"w e s center\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedAttributeGroupUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeGroup:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyndicationRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 while (loop("SyndicationRule:SourceSyndicationDataDeclaration:AttributeGroupUUID","UUID",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UUID"),null).equals(context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } 
 } 
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"checkbox\" name=\"SelectedAttributeGroupUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("AttributeGroup:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyndicationRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 while (loop("SyndicationRule:SourceSyndicationDataDeclaration:AttributeGroupUUID","UUID",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UUID"),null).equals(context.getFormattedValue(getObject("AttributeGroup:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 } 
 } 
      out.write(" disabled=\"disabled\"/>");
 } 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("ORDER_REQUIRED_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.OrderRequiredAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("PRODUCT_DETAIL_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.ProductDetailAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("PRODUCT_INDEX_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.ProductIndexAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AttributeGroup:ID"),null).equals(context.getFormattedValue("BACKOFFICE_SEARCH_ATTRIBUTES",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.BackOfficeSearchAttributes.value",null))); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("AttributeGroup:DisplayName(Locale)")); getPipelineDictionary().put("AttributeGroupDisplayName", temp_obj);} 
 }}}} 
      out.write("<td class=\"table_detail e s\" nowrap=\"nowrap\"><a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttributeGroupMapping-AttributeGroupDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroupDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;</td>\n<td class=\"table_detail e s\">\n<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationAttributeGroupMapping-AttributeGroupDetails",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AttributeGroupUUID",null),context.getFormattedValue(getObject("AttributeGroup:UUID"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null))),null));
      out.write("\" \nclass=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>&nbsp;\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:Description(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" colspan=\"4\" align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SyndicationRule"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"SyndicationRuleUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SyndicationRule:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"SyndicationUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"Update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelOutboundSyndicationAttributeGroupMapping.Apply.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"e w s\">\n<tr>\n<td class=\"table_detail\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelOutboundSyndicationAttributeGroupMapping.ThisChannelDoesNotDefineAnyProductAttributeGroups.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("<div> \n");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "117");} 
      out.write("</div> \n<!-- EO Main Content -->\n<!-- EO Working Area -->");
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