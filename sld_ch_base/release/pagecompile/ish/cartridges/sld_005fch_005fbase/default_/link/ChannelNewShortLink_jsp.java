/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.link;

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

public final class ChannelNewShortLink_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/ConfirmationScript", null, "4");} 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinks-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("ChannelNewShortLink.NewShortLink.text",null)))}, 6); 
      out.write("<!-- Tabs -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e n table_tabs_en_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"e n s table_tabs_dis_background\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.LinkGroups.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td width=\"100%\" class=\"s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n<!-- EO Tabs -->\n<!-- EO Check Display Name -->");
 URLPipelineAction action60 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinks-Dispatch",null)))),null));String site60 = null;String serverGroup60 = null;String actionValue60 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinks-Dispatch",null)))),null);if (site60 == null){  site60 = action60.getDomain();  if (site60 == null)  {      site60 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup60 == null){  serverGroup60 = action60.getServerGroup();  if (serverGroup60 == null)  {      serverGroup60 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("linkForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue60, site60, serverGroup60,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td width=\"100%\" class=\"table_title s\">");
 {out.write(localizeISText("ChannelNewShortLink.NewShortLink.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<!-- Check Display Name -->");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("ShortLinkForm:ShortLink:isMissing"))).booleanValue() || ((Boolean) (getObject("ShortLinkForm:ShortLink:isInvalid"))).booleanValue() || ((Boolean) (getObject("ShortLinkForm:TargetLink:isMissing"))).booleanValue() || ((Boolean) (getObject("ShortLinkForm:TargetLink:isInvalid"))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartDateIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartDateErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndDateIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndDateErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon top e s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error top s\" width=\"100%\">");
 {out.write(localizeISText("ChannelNewShortLink.ShortLinkCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ShortLinkForm:ShortLink:isMissing")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.PleaseProvideAValidShortURL.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("ShortLinkForm:ShortLink:isInvalid"))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ShortURL_Invalid",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.TheProvidedShortURLIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ShortLinkForm:TargetLink:isMissing")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.PleaseProvideAValidTargetURL.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((getObject("ShortLinkForm:TargetLink:isInvalid")))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.TheProvidedTargetURLIsNotValid.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ShortURL_Not_Unique",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.TheProvidedShortURLIsAlreadyAssigned.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("StartDateErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.PleaseProvideAValidStartDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("EndDateErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelNewShortLink.PleaseProvideAValidEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
      out.write("<tr>\n<td class=\"table_title_description\">");
 {out.write(localizeISText("ChannelNewShortLink.SpecifyTheValuesForANewVanityLink.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<!-- Main Content -->\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"w e s\">\n<tr>\n<td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/><input type=\"hidden\" name=\"webform_id\" value=\"ShortLinkForm\"/></td>\n</tr>\n<tr>\n<td>\n<input type=\"hidden\" name=\"ShortLinkForm_DefaultURL\" value=\"");
 {String value = null;try{value=context.getFormattedValue(url(false,(new URLPipelineAction(context.getFormattedValue("Default-Start",null),context.getFormattedValue("-",null),context.getFormattedValue(getObject("Channel:Domain:Site:DomainName"),null),context.getFormattedValue("-",null),context.getFormattedValue("-",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ShortLinkForm:ShortLink:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.ShortURL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.ShortURL.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShortLinkForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"ShortLinkForm_ShortLink\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ShortLinkForm:ShortLink:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"1024\" size=\"75\" class=\"inputfield_en\"/>\n</td>");
 } else { 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"ShortLinkForm_ShortLink\" value=\"");
      out.print(context.getFormattedValue(context.getFormattedValue("/",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ChannelNewShortLink.Home.inputfield_en",null)),null),null));
      out.write("\" maxlength=\"1024\" size=\"75\" class=\"inputfield_en\"/>\n</td>");
 } 
      out.write("<td class=\"table_detail\" width=\"100%\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" name=\"ShortLinkForm_Enabled\" value=\"1\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShortLinkForm:Enabled:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>\n<td class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ShortLinkForm_Enabled\">");
 {out.write(localizeISText("ChannelNewShortLink.Enabled.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShortLinkForm:TargetLink:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.TargetURL.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.TargetURL.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ShortLinkForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"ShortLinkForm_TargetLink\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ShortLinkForm:TargetLink:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"4000\" size=\"75\" class=\"inputfield_en\"/>\n</td>");
 } else { 
      out.write("<td class=\"table_detail\">\n<input type=\"text\" name=\"ShortLinkForm_TargetLink\" value=\"");
 {String value = null;try{value=context.getFormattedValue(url(false,(new URLPipelineAction(context.getFormattedValue("Default-Start",null),context.getFormattedValue("-",null),context.getFormattedValue(getObject("Channel:Domain:Site:DomainName"),null),context.getFormattedValue("-",null),context.getFormattedValue("-",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" maxlength=\"4000\" size=\"75\" class=\"inputfield_en\"/>\n</td>");
 } 
      out.write("<td class=\"table_detail\" width=\"100%\">\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n<tr>\n<td class=\"input_checkbox\"><input type=\"checkbox\" name=\"ShortLinkForm_Default\" value=\"1\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ShortLinkForm:Default:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("/></td>\n<td class=\"label_checkbox_text\"><label class=\"label label_checkbox_text label_light\" for=\"ShortLinkForm_Default\">");
 {out.write(localizeISText("ChannelNewShortLink.DefaultLink.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("ChannelNewShortLink.Redirect.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"3\">\n<select name=\"Redirect_Select\" class=\"select inputfield_en\">\n<option value=\"0\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Redirect_Select"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { 
      out.write("selected");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNewShortLink.Default.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"200\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Redirect_Select"),null).equals(context.getFormattedValue("200",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",128,e);}if (_boolean_result) { 
      out.write("selected");
 } 
      out.write('>');
 {out.write(localizeISText("ChannelNewShortLink.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</option>\n<option value=\"301\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Redirect_Select"),null).equals(context.getFormattedValue("301",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
      out.write("selected");
 } 
      out.write(">301</option>\n<option value=\"302\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Redirect_Select"),null).equals(context.getFormattedValue("302",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write("selected");
 } 
      out.write(">302</option>\n</select>\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\" nowrap=\"nowrap\" valign=\"top\">");
 {out.write(localizeISText("ChannelNewShortLink.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"table_detail\" colspan=\"2\">\n<textarea name=\"ShortLinkForm_Description\" rows=\"5\" cols=\"50\" class=\"inputfield_en\">");
 {String value = null;try{value=context.getFormattedValue(getObject("ShortLinkForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</textarea>\n</td>\n</tr>\n<tr>");
 processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("ShortLinkForm_StartTime")),
new TagParameter("DateInputFieldName","ShortLinkForm_StartDate"),
new TagParameter("DateString",getObject("ShortLinkForm_StartDate")),
new TagParameter("TimeInputFieldName","ShortLinkForm_StartTime"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("ApplicationBasketPreferences.Time.option",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AssignedPromotionsList.StartDate.link",null))),
new TagParameter("Invalid",(((((Boolean) (disableErrorMessages().isDefined(getObject("StartDateIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartDateErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))}, 141); 
      out.write("</tr>\n<tr>");
 processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("ShortLinkForm_EndTime")),
new TagParameter("DateInputFieldName","ShortLinkForm_EndDate"),
new TagParameter("DateString",getObject("ShortLinkForm_EndDate")),
new TagParameter("TimeInputFieldName","ShortLinkForm_EndTime"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("ApplicationBasketPreferences.Time.option",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("ChannelShortLinkList.EndDate.link",null))),
new TagParameter("Invalid",(((((Boolean) (disableErrorMessages().isDefined(getObject("EndDateIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EndDateErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))}, 152); 
      out.write("</tr>\n<tr>\n<td colspan=\"3\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td align=\"right\" class=\"n\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"DefaultProgramStartTime\" value=\"00:00\"/>\n<input type=\"hidden\" name=\"DefaultProgramEndTime\" value=\"23:59\"/>\n<input type=\"hidden\" name=\"DateFormatString\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"OrganizationUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Organization:UUID"),null));
      out.write("\"/>\n<input type=\"hidden\" name=\"ChannelUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("Channel:UUID"),null));
      out.write("\"/>\n<input type=\"submit\" name=\"create\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelNewShortLink.Apply.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n<td class=\"button\"><input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ChannelNewShortLink.Cancel.button",null)),null));
      out.write("\" class=\"button\"/></td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
      out.write("<!-- EO Main Content -->");
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
