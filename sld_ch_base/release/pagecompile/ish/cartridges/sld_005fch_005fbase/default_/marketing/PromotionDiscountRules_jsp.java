/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.marketing;

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

public final class PromotionDiscountRules_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.DiscountRules.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))).addURLParameter(context.getFormattedValue("LocaleID",null),context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))),
new TagParameter("id",getObject("Promotion:UUID")),
new TagParameter("text",getObject("Promotion:DisplayName"))}, 5); 
      out.write("<!-- Promotion Details Heading -->");
 URLPipelineAction action277 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-DispatchGeneral",null)))),null));String site277 = null;String serverGroup277 = null;String actionValue277 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-DispatchGeneral",null)))),null);if (site277 == null){  site277 = action277.getDomain();  if (site277 == null)  {      site277 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup277 == null){  serverGroup277 = action277.getServerGroup();  if (serverGroup277 == null)  {      serverGroup277 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-DispatchGeneral",null)))),null));out.print("\"");out.print(" name=\"");out.print("PromotionDiscountRulesFormGeneral");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue277, site277, serverGroup277,true)); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionDetailsHeadingInc", null, "9");} 
 out.print("</form>"); 
      out.write("<!-- Tabs -->");
 {Object temp_obj = ("Discount Rules"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/PromotionTabsInc", null, "14");} 
      out.write("<!-- EO Tabs -->\n<!-- incompleteness check-->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/PromotionIncompletenessMessage", null, "18");} 
      out.write("<!-- end incompleteness check-->\n<!-- Main Content -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description e w s\">");
 {out.write(localizeISText("PromotionDiscountRules.CreateConditionsInOrderToDefine.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- Select language to localize text. -->");
 URLPipelineAction action278 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null)))),null));String site278 = null;String serverGroup278 = null;String actionValue278 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null)))),null);if (site278 == null){  site278 = action278.getDomain();  if (site278 == null)  {      site278 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup278 == null){  serverGroup278 = action278.getServerGroup();  if (serverGroup278 == null)  {      serverGroup278 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionDiscountRules-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("setLocale");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue278, site278, serverGroup278,true)); 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
      out.print(context.getFormattedValue(getObject("CurrentChannel:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Promotion:UUID"),null));
      out.write("\"/>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale w e\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionDiscountRules.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"infobox_item\">\n<select name=\"LocaleID\" class=\"select inputfield_en\">");
 while (loop("AllLocales","Locale",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"setLocale\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Promotion")))).booleanValue() && ((Boolean) (hasLoopElements("Promotion:Rebates") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("RebateID")); getPipelineDictionary().put("TargetContextObjectID", temp_obj);} 
 while (loop("Promotion:Rebates","Rebate","rebateCounter")) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("rebateCounter"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"10\" height=\"20\" alt=\"\" border=\"0\"/><br/>");
 } 
 URLPipelineAction action279 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null));String site279 = null;String serverGroup279 = null;String actionValue279 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null);if (site279 == null){  site279 = action279.getDomain();  if (site279 == null)  {      site279 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup279 == null){  serverGroup279 = action279.getServerGroup();  if (serverGroup279 == null)  {      serverGroup279 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue("deleteForm",null) + context.getFormattedValue(getObject("rebateCounter"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue279, site279, serverGroup279,true)); 
      out.write("<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n<tr><td class=\"table_title2 aldi\" colspan=\"2\">");
 {out.write(localizeISText("PromotionDiscountRules.Rule.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("rebateCounter"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td></tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteRebate")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Rebate:UUID"),null).equals(context.getFormattedValue(getObject("RebateID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"RebateID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("RebateID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"LocaleID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject",localizeText(context.getFormattedValue("PromotionDiscountRules.Rebate.subject",null))),
new TagParameter("cancelbtnname",""),
new TagParameter("okbtnname","deleteRebate"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PromotionDiscountRules.AreYouSureYouWantToDeleteThisRule.message",null)))}, 74); 
 } 
      out.write("</table>");
 out.print("</form>"); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr><td class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"2\" alt=\"\" border=\"0\"/></td></tr>\n</table>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"w\">\n<tr>\n<td class=\"ruleBar n\">&nbsp;</td>\n<td width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "conditioneditor", new TagParameter[] {
new TagParameter("conditionclipboard",getObject("ConditionClipboard")),
new TagParameter("conditioneditortitle",localizeText(context.getFormattedValue("sld_ch_base.PromotionConditionEditorTitle.conditioneditortitle",null))),
new TagParameter("editcondition",getObject("EditCondition")),
new TagParameter("parametername1","LocaleID"),
new TagParameter("parametervalue2",getObject("Promotion:UUID")),
new TagParameter("conditiondescriptorreqistry",getObject("ConditionDescriptorRegistry")),
new TagParameter("parametervalue1",getObject("SelectedLocale:LocaleID")),
new TagParameter("parametername2","PromotionUUID"),
new TagParameter("targetconditionid",getObject("TargetConditionID")),
new TagParameter("conditionform",getObject("ConditionForm")),
new TagParameter("editconditiontypegroup",getObject("EditConditionTypeGroup")),
new TagParameter("contextobject",getObject("Rebate")),
new TagParameter("newconditionform",getObject("NewConditionForm")),
new TagParameter("contextobjectidname","RebateID"),
new TagParameter("confirmdelete",getObject("confirmDelete")),
new TagParameter("overrideapplicationexclusionsforms",getObject("ConditionOverrideApplicationExclusionsForms")),
new TagParameter("contextobjectid",getObject("Rebate:UUID")),
new TagParameter("targetcontextobjectid",getObject("TargetContextObjectID")),
new TagParameter("dispatchpipeline","ViewPromotionDiscountRules-Dispatch")}, 92); 
 } else { 
 processOpenTag(response, pageContext, "conditioneditor", new TagParameter[] {
new TagParameter("conditionclipboard",getObject("ConditionClipboard")),
new TagParameter("ReadOnly","true"),
new TagParameter("conditioneditortitle",localizeText(context.getFormattedValue("sld_ch_base.PromotionConditionEditorTitle.conditioneditortitle",null))),
new TagParameter("editcondition","false"),
new TagParameter("conditiondescriptorreqistry",getObject("ConditionDescriptorRegistry")),
new TagParameter("targetconditionid",getObject("TargetConditionID")),
new TagParameter("conditionform",getObject("ConditionForm")),
new TagParameter("editconditiontypegroup",getObject("EditConditionTypeGroup")),
new TagParameter("overridechannelexclusionsforms",getObject("ConditionOverrideChannelExclusionsForms")),
new TagParameter("contextobject",getObject("Rebate")),
new TagParameter("newconditionform",getObject("NewConditionForm")),
new TagParameter("contextobjectidname","RebateID"),
new TagParameter("confirmdelete",getObject("confirmDelete")),
new TagParameter("contextobjectid",getObject("Rebate:UUID")),
new TagParameter("targetcontextobjectid",getObject("TargetContextObjectID")),
new TagParameter("dispatchpipeline","ViewPromotionDiscountRules-Dispatch")}, 114); 
 } 
      out.write("<!-- For debugging purpose -->");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/SmallConditionTree", null, "135");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/ActionEditor", null, "138");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"marketing/inc/DynamicMessaging", null, "141");} 
      out.write("</td>\n</tr>\n</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
 URLPipelineAction action280 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null));String site280 = null;String serverGroup280 = null;String actionValue280 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null);if (site280 == null){  site280 = action280.getDomain();  if (site280 == null)  {      site280 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup280 == null){  serverGroup280 = action280.getServerGroup();  if (serverGroup280 == null)  {      serverGroup280 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue280, site280, serverGroup280,true)); 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"RebateID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Rebate:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"LocaleID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"w e s\">\n<tr>\n<td width=\"100%\" align=\"right\" class=\"ruleBar\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.MoveUp.button",null)),null));
      out.write("\" name=\"moveUpRebate\" /></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.MoveDown.button",null)),null));
      out.write("\" name=\"moveDownRebate\" /></td>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"20\" height=\"6\" alt=\"\" border=\"0\"/></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.New.button",null)),null));
      out.write("\" name=\"createRebate\" /></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.Copy.button",null)),null));
      out.write("\" name=\"copyRebate\" /></td>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.Delete.button",null)),null));
      out.write("\" name=\"confirmDeleteRebate\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
 } 
 } 
 } else { 
 URLPipelineAction action281 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null));String site281 = null;String serverGroup281 = null;String actionValue281 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null);if (site281 == null){  site281 = action281.getDomain();  if (site281 == null)  {      site281 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup281 == null){  serverGroup281 = action281.getServerGroup();  if (serverGroup281 == null)  {      serverGroup281 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotionRebate-Dispatch",null)))),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue281, site281, serverGroup281,true)); 
      out.write("<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/> \n<input type=\"hidden\" name=\"LocaleID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {176}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"w e s\">\n<tr>\n<td class=\"table_detail n s\">");
 {out.write(localizeISText("PromotionDiscountRules.CurrentlyThereIsNoDiscountRuleDefinedForThisPromotion.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
      out.write("<tr>\n<td width=\"100%\" align=\"right\" class=\"ruleBar\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionDiscountRules.New.button",null)),null));
      out.write("\" name=\"createRebate\" /></td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("</table>");
 out.print("</form>"); 
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "197");} 
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