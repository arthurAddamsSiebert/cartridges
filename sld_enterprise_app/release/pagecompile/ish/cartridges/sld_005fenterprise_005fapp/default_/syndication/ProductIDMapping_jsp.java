/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.syndication;

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

public final class ProductIDMapping_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProvidingRepository:TypeCode")).doubleValue() ==((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductIDMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("ProductIDMapping.MasterRepositoryMappingRulesID.text",null)))}, 5); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductIDMapping-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProviderID",null),context.getFormattedValue(getObject("ProviderID"),null))))),
new TagParameter("id",getObject("ProviderID")),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ChannelRepositoryMappingRulesID.text",null)))}, 7); 
 } 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<!-- Tabs --> \n");
 {Object temp_obj = ("ID"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"syndication/ProductMappingTabs", null, "15");} 
      out.write("<!-- EO Tabs -->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title w e s\">");
 {out.write(localizeISText("sld_enterprise_app.ChannelRepositoryMappingRulesID.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductIDMapping.ActivateTheCheckboxToCopyTheSourceProductID.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductIDMapping.IfTheCheckboxIsActivatedThenTheSourceProductID.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action568 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductIDMapping-Dispatch",null)))),null));String site568 = null;String serverGroup568 = null;String actionValue568 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductIDMapping-Dispatch",null)))),null);if (site568 == null){  site568 = action568.getDomain();  if (site568 == null)  {      site568 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup568 == null){  serverGroup568 = action568.getServerGroup();  if (serverGroup568 == null)  {      serverGroup568 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductIDMapping-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue568, site568, serverGroup568,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_header w e s left\" nowrap=\"nowrap\" width=\"80\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<div id=\"A\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','ProductIdentifierType','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"B\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('formMask','ProductIdentifierType','A','B');\" class=\"tableheader\">");
 {out.write(localizeISText("sld_enterprise_app.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>");
 } else { 
 {out.write(localizeISText("ProductIDMapping.Selected",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } 
      out.write(" \n</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ProductIDMapping.IDType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ProductIDMapping.PrefixWith.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n<td class=\"table_header e s\">");
 {out.write(localizeISText("ProductIDMapping.SuffixWith.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("...</td>\n</tr>");
 while (loop("ProductDataMappingRules","Rule",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Rule:TargetDeclaration:identifierType"),null).equals(context.getFormattedValue("SellerID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Rule:UUID")); getPipelineDictionary().put("SellerRuleUUID", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Rule:TargetDeclaration:identifierType"),null).equals(context.getFormattedValue("SupplierID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Rule:UUID")); getPipelineDictionary().put("SupplierRuleUUID", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Rule:TargetDeclaration:identifierType"),null).equals(context.getFormattedValue("ManufacturerID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Rule:UUID")); getPipelineDictionary().put("ManufacturerRuleUUID", temp_obj);} 
 }}} 
 } 
      out.write("<tr>\n<td class=\"w e s center\">\n<input type=\"checkbox\" name=\"ProductIdentifierType\" value=\"SellerID\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SellerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SellerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"RuleID\" value=\"");
      out.print(context.getFormattedValue(getObject("RulesMap:get(SellerRuleUUID):UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"SellerID_RuleID\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SellerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(SellerRuleUUID):UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\"/>\n<input type=\"hidden\" name=\"SellerID_identifierType\" value=\"SellerID\"/>\n<b>");
 {out.write(localizeISText("ProductIDMapping.ProductID.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">\n<input type=\"text\" name=\"SellerID_identifierPrefix\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SellerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(SellerRuleUUID):TargetDeclaration:identifierPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" size=\"30\" class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">\n<input type=\"text\" name=\"SellerID_identifierSuffix\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SellerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(SellerRuleUUID):TargetDeclaration:identifierSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" size=\"30\" class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n</tr>\n<tr>\n<td class=\"w e s center\">\n<input type=\"checkbox\" name=\"ProductIdentifierType\" value=\"SupplierID\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SupplierRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SupplierRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"RuleID\" value=\"");
      out.print(context.getFormattedValue(getObject("RulesMap:get(SupplierRuleUUID):UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"SupplierID_RuleID\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SupplierRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(SupplierRuleUUID):UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\"/>\n<input type=\"hidden\" name=\"SupplierID_identifierType\" value=\"SupplierID\"/>\n<b>");
 {out.write(localizeISText("ProductIDMapping.SupplierProductID.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">\n<input type=\"text\" name=\"SupplierID_identifierPrefix\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SupplierRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(SupplierRuleUUID):TargetDeclaration:identifierPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" size=\"30\" class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">\n<input type=\"text\" name=\"SupplierID_identifierSuffix\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(SupplierRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(SupplierRuleUUID):TargetDeclaration:identifierSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" size=\"30\" class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n</tr>\n<tr>\n<td class=\"w e s center\">\n<input type=\"checkbox\" name=\"ProductIdentifierType\" value=\"ManufacturerID\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(ManufacturerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(ManufacturerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"RuleID\" value=\"");
      out.print(context.getFormattedValue(getObject("RulesMap:get(ManufacturerRuleUUID):UUID"),null));
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"hidden\" name=\"ManufacturerID_RuleID\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(ManufacturerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(ManufacturerRuleUUID):UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {134}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\"/>\n<input type=\"hidden\" name=\"ManufacturerID_identifierType\" value=\"ManufacturerID\"/>\n<b>");
 {out.write(localizeISText("ProductIDMapping.ManufacturerProductID.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">\n<input type=\"text\" name=\"ManufacturerID_identifierPrefix\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(ManufacturerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(ManufacturerRuleUUID):TargetDeclaration:identifierPrefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" size=\"30\" class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n<td class=\"table_detail e s\" nowrap=\"nowrap\">\n<input type=\"text\" name=\"ManufacturerID_identifierSuffix\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RulesMap:get(ManufacturerRuleUUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("RulesMap:get(ManufacturerRuleUUID):TargetDeclaration:identifierSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" size=\"30\" class=\"inputfield_en\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("\n/>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
      out.write("<tr>\n<td colspan=\"4\" align=\"right\" class=\"w e s\">\n<table border=\"0\" cellspacing=\"3\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ProviderID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProviderID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"TypeCode\" value=\"1\"/>\n<input type=\"hidden\" name=\"FunctionClassName\" value=\"com.intershop.component.mvc.capi.mapping.ProductIDMappingRule\"/>\n<input type=\"submit\" name=\"apply\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("</td>\n</tr>\n</table>");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "174");} 
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