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

public final class PromotionCopy_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!-- Working Area -->\n<!-- Main Content -->");
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCopy.CopyPromotion.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-CopyDialog",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("Promotion:UUID"),null))))),
new TagParameter("wizard","true"),
new TagParameter("id",getObject("Promotion:UUID")),
new TagParameter("text",getObject("Promotion:DisplayName"))}, 7); 
      out.write("<!-- Tabs -->");
 {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
      out.write("<!-- EO Tabs -->");
 URLPipelineAction action260 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Dispatch",null)))),null));String site260 = null;String serverGroup260 = null;String actionValue260 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Dispatch",null)))),null);if (site260 == null){  site260 = action260.getDomain();  if (site260 == null)  {      site260 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup260 == null){  serverGroup260 = action260.getServerGroup();  if (serverGroup260 == null)  {      serverGroup260 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("PromotionForm:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue260, site260, serverGroup260,true)); 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"copy\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCopy.Apply.button",null)),null));
      out.write("\" class=\"button\" style=\"position: absolute; top: -50000px\"/>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title w e n s\">");
 {out.write(localizeISText("PromotionCopy.CopyPromotion.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERRORCopyPromotion")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write(" \n<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top\" width=\"100%\">\n<b>");
 {out.write(localizeISText("PromotionCopy.CopyCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</b><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERRORCopyPromotion")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERRORCopyPromotion"),null).equals(context.getFormattedValue("PromotionAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write('<');
      out.write('b');
      out.write('>');
 {out.write(localizeISText("PromotionCopy.IDIsNotUniquePleaseProvideAUniqueID.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</b>\n<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 while (loop("PromotionForm:Name:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.TheInputFieldNameIsRequired.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("<br/>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:PID:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 while (loop("PromotionForm:PID:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.required",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.TheInputFieldIDIsRequired.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("<br/>");
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:StartDate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:StartDate:StartDate_Day:Invalid")).booleanValue() || ((Boolean) getObject("PromotionForm:StartDate:StartDate_Time:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.TheStartDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 while (loop("PromotionForm:StartDate:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.datetime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.TheStartDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
 } 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:EndDate:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:EndDate:EndDate_Day:Invalid")).booleanValue() || ((Boolean) getObject("PromotionForm:EndDate:EndDate_Time:Invalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.TheEndDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 while (loop("PromotionForm:EndDate:Errors","Error",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Error"),null).equals(context.getFormattedValue("error.datetime",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.TheEndDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
 } 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description w e\">");
 {out.write(localizeISText("PromotionCopy.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("<br/><br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Promotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {out.write(localizeISText("PromotionCopy.ClickApplyToSaveTheCopyOfThePromotionClickCancel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"infobox_locale w e n\">\n<tr>\n<td class=\"infobox_item\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionCopy.SelectLanguage.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"infobox_item\">\n<select name=\"LocaleID\" class=\"select inputfield_en\">");
 while (loop("AllLocales","Locale",null)) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locale:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocale:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("selected=\"selected\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;</option>");
 } 
      out.write("</select>\n</td>\n<td width=\"100%\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"submit\" name=\"setLocaleEditWithinCopyDialog\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCopy.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"aldi\">\n<colgroup>\n<col width=\"15%\" />\n<col width=\"45%\" />\n</colgroup>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("PromotionForm:Name:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionCopy.Name",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</td>\n<td class=\"fielditem\" colspan=\"2\" >\n<input class=\"inputfield_en\" type=\"text\" maxlength=\"400\" size=\"60\" \nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n<tr>\n<td ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:PID:isInvalid")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERRORCopyPromotion")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERRORCopyPromotion"),null).equals(context.getFormattedValue("PromotionAlreadyExists",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { 
      out.write("class=\"fielditem2_error\"");
 } else { 
      out.write("class=\"fielditem2\"");
 } 
      out.write(" nowrap=\"nowrap\">");
 {out.write(localizeISText("PromotionCopy.ID",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span>\n</td>\n<td class=\"fielditem\" colspan=\"2\" >\n<input class=\"inputfield_en\" type=\"text\" maxlength=\"400\" size=\"60\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:PID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\" width=\"1\">");
 {out.write(localizeISText("PromotionCopy.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td colspan=\"2\" class=\"table_detail\">\n<textarea rows=\"5\" cols=\"58\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Description:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {167}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td class=\"table_title2\" nowrap=\"nowrap\" colspan =\"3\">");
 {out.write(localizeISText("PromotionCopy.Activation.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("PromotionForm:StartDate:Invalid")).booleanValue() || ((Boolean) (((((Boolean) getObject("PromotionForm:EndDate:Invalid")).booleanValue() && ((Boolean) getObject("PromotionForm:EndDate:Error(\"error.dateafter\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("invalidstartdate", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("invalidstartdate", temp_obj);} 
 } 
 processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Readonly",getObject("DisableTF")),
new TagParameter("TimeString",getObject("PromotionForm:StartDate:StartDate_Time:Value")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("PromotionForm:StartDate:StartDate_Day:QualifiedName")),
new TagParameter("DateString",getObject("PromotionForm:StartDate:StartDate_Day:Value")),
new TagParameter("TimeInputFieldName",getObject("PromotionForm:StartDate:StartDate_Time:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AssignedPromotionsList.StartDate.link",null))),
new TagParameter("DateObject",getObject("PromotionForm:StartDate:Value")),
new TagParameter("Invalid",getObject("invalidstartdate"))}, 189); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("Readonly",getObject("DisableTF")),
new TagParameter("TimeString",getObject("PromotionForm:EndDate:EndDate_Time:Value")),
new TagParameter("Required","true"),
new TagParameter("DateInputFieldName",getObject("PromotionForm:EndDate:EndDate_Day:QualifiedName")),
new TagParameter("DateString",getObject("PromotionForm:EndDate:EndDate_Day:Value")),
new TagParameter("TimeInputFieldName",getObject("PromotionForm:EndDate:EndDate_Time:QualifiedName")),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("ChannelShortLinkList.EndDate.link",null))),
new TagParameter("DateObject",getObject("PromotionForm:EndDate:Value")),
new TagParameter("Invalid",getObject("PromotionForm:EndDate:Invalid"))}, 202); 
      out.write("<td>&nbsp;</td>\n</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td colspan=\"3\" class=\"n\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"PromotionUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {249}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {250}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 while (loop("PromotionForm:Parameters","param",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("PID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("Name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("Description",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("StartDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("EndDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",255,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("param:Type"),null).equals(context.getFormattedValue("java.util.Collection",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",262,e);}if (_boolean_result) { 
 while (loop("param:Value","parameterValue",null)) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("param:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {264}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("parameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {264}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write(' ');
      out.write('\n');
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("Currency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("param:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("param:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:get(\"BudgetAmount\"):Currency:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {269}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("param:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {269}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("param:ID"),null).equals(context.getFormattedValue("BudgetAmount",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",270,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:get(\"BudgetAmount\"):Amount:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {271}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((( ((Number) getObject("PromotionForm:get(\"BudgetAmount\"):Value:Value")).doubleValue() >((Number)(new Double(0.0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PromotionForm:get(\"BudgetAmount\"):Value"),null).equals(context.getFormattedValue("N/A",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",271,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionForm:get(\"BudgetAmount\"):Value"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {271}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
      out.write("<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("param:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("param:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 }} 
 } 
 } 
 } 
 while (loop("AssignedAppIDs","AppID",null)) { 
      out.write("<input type=\"hidden\" \nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(AppID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {280}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PromotionAppAssignmentForm:get(AppID):Selection:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {281}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n/>");
 } 
      out.write("<input type=\"hidden\" name=\"SelectedObjectUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Promotion:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {284}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"submit\" name=\"copy\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCopy.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("copyDialog"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",288,e);}if (_boolean_result) { 
      out.write(" \n<input type=\"submit\" name=\"cancelCopy\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCopy.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>");
 } else { 
      out.write("<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PromotionCopy.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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
