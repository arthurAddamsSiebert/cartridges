/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.product;

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

public final class ProductDeletionPreferences_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PreferencesBreadcrumb", null, "2");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Start",null))))),
new TagParameter("text",localizeText(context.getFormattedValue("sld_enterprise_app.ProductDeletion.text",null)))}, 3); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("<script language=\"JavaScript\" type=\"text/javascript\">\n<!--\nfunction checkSelectedRadio(isActivated) {\nif(isActivated){\ndocument.getElementById(\"SelectedProductDeletionStrategy_0\").disabled=true\ndocument.getElementById(\"SelectedProductDeletionStrategy_1\").disabled=true\ndocument.getElementById(\"SelectedProductDeletionStrategy_2\").disabled=true\ndocument.getElementById(\"RecycleBinOfferPropagation_true\").disabled=false\ndocument.getElementById(\"RecycleBinOfferPropagation_false\").disabled=false\n}\nelse{\ndocument.getElementById(\"SelectedProductDeletionStrategy_0\").disabled=false\ndocument.getElementById(\"SelectedProductDeletionStrategy_1\").disabled=false\ndocument.getElementById(\"SelectedProductDeletionStrategy_2\").disabled=false\ndocument.getElementById(\"RecycleBinOfferPropagation_true\").disabled=true\ndocument.getElementById(\"RecycleBinOfferPropagation_false\").disabled=true\n}\n}\n-->\n</script>");
 } 
 URLPipelineAction action84 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Update",null)))),null));String site84 = null;String serverGroup84 = null;String actionValue84 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Update",null)))),null);if (site84 == null){  site84 = action84.getDomain();  if (site84 == null)  {      site84 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup84 == null){  serverGroup84 = action84.getServerGroup();  if (serverGroup84 == null)  {      serverGroup84 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductDeletionPreferences-Update",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateDomainPreferenceForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue84, site84, serverGroup84,true)); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e s n\">");
 {out.write(localizeISText("sld_enterprise_app.ProductDeletion.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/>\n</td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("sld_enterprise_app.PleaseSpecifyAValidProductDeletionStrategy.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\" colspan=\"2\">");
 {out.write(localizeISText("sld_enterprise_app.ActivateOrDeactivateTheProductRecycleBinAndSpecify.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class = \"w e s\">\n<tr>\n<td colspan=\"2\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tbody>\n<tr>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_Deactivated\" value=\"false\" onclick=\"checkSelectedRadio(false)\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_Deactivated\" value=\"false\" onclick=\"checkSelectedRadio(false)\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_Deactivated\" value=\"false\" onclick=\"checkSelectedRadio(false)\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_Deactivated\" value=\"false\" onclick=\"checkSelectedRadio(false)\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"RecycleBinUsage_Deactivated\"> ");
 {out.write(localizeISText("sld_enterprise_app.RecycleBinDeactivated.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"input_radio\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"30\" height=\"1\" border=\"0\" alt=\"\"/>\n</td>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_0\" name=\"SelectedProductDeletionStrategy\" value=\"0\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_0\" name=\"SelectedProductDeletionStrategy\" value=\"0\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_0\" name=\"SelectedProductDeletionStrategy\" value=\"0\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_0\" name=\"SelectedProductDeletionStrategy\" value=\"0\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"SelectedProductDeletionStrategy_0\"> ");
 {out.write(localizeISText("sld_enterprise_app.ForbidDeletionOfMasterProductsWithOffers.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"table_detail\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"30\" height=\"1\" border=\"0\" alt=\"\"/>\n</td>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",124,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_1\" name=\"SelectedProductDeletionStrategy\" value=\"1\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_1\" name=\"SelectedProductDeletionStrategy\" value=\"1\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_1\" name=\"SelectedProductDeletionStrategy\" value=\"1\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_1\" name=\"SelectedProductDeletionStrategy\" value=\"1\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"SelectedProductDeletionStrategy_1\"> ");
 {out.write(localizeISText("sld_enterprise_app.DeleteMasterProductsOnlyConvertRelatedOffersIntoPr.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_radio\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"30\" height=\"1\" border=\"0\" alt=\"\"/>\n</td>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_2\" name=\"SelectedProductDeletionStrategy\" value=\"2\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_2\" name=\"SelectedProductDeletionStrategy\" value=\"2\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductDeletionStrategyIntValue")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_2\" name=\"SelectedProductDeletionStrategy\" value=\"2\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"SelectedProductDeletionStrategy_2\" name=\"SelectedProductDeletionStrategy\" value=\"2\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"SelectedProductDeletionStrategy_2\"> ");
 {out.write(localizeISText("sld_enterprise_app.DeleteMasterProductsAndRelatedOffers.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n<tbody>\n<tr>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_activated\" value=\"true\" onclick=\"checkSelectedRadio(true)\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_activated\" value=\"true\" onclick=\"checkSelectedRadio(true)\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_activated\" value=\"true\" onclick=\"checkSelectedRadio(true)\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" name=\"RecycleBinUsage\" id=\"RecycleBinUsage_activated\" value=\"true\" onclick=\"checkSelectedRadio(true)\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"RecycleBinUsage_activated\"> ");
 {out.write(localizeISText("sld_enterprise_app.RecycleBinActivated.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n<td class=\"input_radio\" width=\"100%\"></td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n<tr>\n<td colspan=\"2\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"input_radio\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"30\" height=\"1\" border=\"0\" alt=\"\"/>\n</td>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_true\" name=\"RecycleBinOfferPropagation\" value=\"true\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_true\" name=\"RecycleBinOfferPropagation\" value=\"true\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_true\" name=\"RecycleBinOfferPropagation\" value=\"true\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_true\" name=\"RecycleBinOfferPropagation\" value=\"true\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"RecycleBinOfferPropagation_true\"> ");
 {out.write(localizeISText("sld_enterprise_app.SelectedProductsAndTheirDerivedOffersAreMovedToThe.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"input_radio\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"30\" height=\"1\" border=\"0\" alt=\"\"/>\n</td>\n<td class=\"input_radio\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinOfferPropagation"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_false\" name=\"RecycleBinOfferPropagation\" value=\"false\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_false\" name=\"RecycleBinOfferPropagation\" value=\"false\"/>");
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinOfferPropagation"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinOfferPropagation"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_false\" name=\"RecycleBinOfferPropagation\" value=\"false\" disabled=\"disabled\" checked=\"checked\"/>");
 } else { 
      out.write("<input type=\"radio\" id=\"RecycleBinOfferPropagation_false\" name=\"RecycleBinOfferPropagation\" value=\"false\" disabled=\"disabled\"/>");
 } 
 } 
      out.write("</td>\n<td class=\"label_radio_text\" width=\"100%\"><label class=\"label label_radio_text label_light\" for=\"RecycleBinOfferPropagation_false\"> ");
 {out.write(localizeISText("sld_enterprise_app.SelectedProductsAreMovedToTheRecycleBinTheirDerive.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>\n<td align=\"right\">\n<table cellpadding=\"0\" cellspacing=\"4\" border=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">\n<input type=\"reset\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((disableErrorMessages().isDefined(getObject("RecycleBinUsage"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("RecycleBinUsage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { 
      out.write("<script type=\"text/Javascript\">\ncheckSelectedRadio(true)\n</script>");
 } else { 
      out.write("<script type=\"text/Javascript\">\ncheckSelectedRadio(false)\n</script>");
 } 
 } 
 out.print("</form>"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "281");} 
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
