/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.searchindex.inc;

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

public final class FilterValueMappings_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES")))).booleanValue() && !((Boolean) (getObject("SearchIndex:Shared"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SearchIndexEditable", temp_obj);} 
 URLPipelineAction action150 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));String site150 = null;String serverGroup150 = null;String actionValue150 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null);if (site150 == null){  site150 = action150.getDomain();  if (site150 == null)  {      site150 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup150 == null){  serverGroup150 = action150.getServerGroup();  if (serverGroup150 == null)  {      serverGroup150 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FilterValueMappings");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue150, site150, serverGroup150,true)); 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"w e s\">\n<table class=\"infobox\" width=\"100%\" border=\"0\">\n<tr>\n<td class=\"infobox_title\">");
 {out.write(localizeISText("FilterValueMappings.FilterMappingsAndExplicitSortingOfValues.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmDeleteValueMappings"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SelectedValueMappings") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("FilterValueMappings.FilterValueMappings.subject",null))),
new TagParameter("cancelbtnname","cancelDeleteValueMappings"),
new TagParameter("okbtnname","deleteValueMappings"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("FilterValueMappings.AreYouSureThatYouWantToRemoveTheseValueMappings.message",null)))}, 20); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("FilterValueMappings.FilterValueMappings.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("FilterValueMappings.YouHaveNotSelectedAnyValueMappingsToBeRemoved.message",null)))}, 24); 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmPopulateValueMappings"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_NO_FILTER_ATTRIBUTE_ENTRIES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("FilterValueMappings.FilterValueMappings.subject",null))),
new TagParameter("type","mde"),
new TagParameter("message",localizeTextEx(context.getFormattedValue("FilterValueMappings.ThereAreCurrentlyNoValuesToBeRetrievedForFilterAttribute",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("FilterAttribute:Name"),null)))))}, 32); 
 } else { 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject",localizeText(context.getFormattedValue("FilterValueMappings.FilterValueMappings.subject",null))),
new TagParameter("cancelbtnname","cancelPopulateValueMappings"),
new TagParameter("okbtnname","populateValueMappings"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeTextEx(context.getFormattedValue("FilterValueMappings.AreYouSureThatYouWantToPopulateTheValueMappingsList",null),new ParameterList().addParameter(encodeString(context.getFormattedValue(getObject("FilterAttributeEntries:Size"),null)))))}, 36); 
      out.write(' ');
      out.write('\n');
 } 
 } 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("FilterValueMappings.ClickPopulateValuesInOrderToFillOrUpdate.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<input type=\"hidden\" name=\"SearchIndexID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"AttributeName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/> \n<input type=\"hidden\" name=\"FilterValueMappingsFormSubmitted\" value=\"true\"/>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilterValueMappings") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"w\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s center\" nowrap=\"nowrap\" width=\"80\">\n<div id=\"C\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('FilterValueMappings','SelectedValueMappingValue','C','D');\" class=\"tableheader\">");
 {out.write(localizeISText("FilterValueMappings.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n<div id=\"D\" style=\"display:none\">\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"table_header center\" width=\"80\">\n<tr>\n<td nowrap=\"nowrap\">\n<a href=\"javascript:selectAll('FilterValueMappings','SelectedValueMappingValue','C','D');\" class=\"tableheader\">");
 {out.write(localizeISText("FilterValueMappings.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</td>\n</tr>\n</table>\n</div>\n</td>");
 } 
      out.write(" \n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("FilterValueMappings.AttributeValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("FilterValueMappings.MappingType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("FilterValueMappings.MappingValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<td class=\"table_header e s\" nowrap=\"nowrap\">");
 {out.write(localizeISText("FilterValueMappings.Sorting.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>");
 } 
      out.write("</tr>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("FirstRow", temp_obj);} 
 while (loop("FilterValueMappings","FilterValueMapping",null)) { 
      out.write("<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("<td class=\"table_detail2 e s center\">\n<input type=\"checkbox\" name=\"SelectedValueMappingValue\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedValueMappings"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
 while (loop("SelectedValueMappings","SelectedValueMapping",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedValueMapping"),null).equals(context.getFormattedValue(getObject("FilterValueMapping:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write("\nchecked=\"checked\"\n");
 } 
 } 
 } 
      out.write("\n/>\n</td>");
 } 
      out.write("<td class=\"table_detail2 e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("<a class=\"table_detail_link\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-EditValueMapping",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null))).addURLParameter(context.getFormattedValue("SearchIndexID",null),context.getFormattedValue(context.getFormattedValue(getObject("SearchIndex:IndexID"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("SearchIndex:Domain:DomainName"),null),null)).addURLParameter(context.getFormattedValue("AttributeName",null),context.getFormattedValue(getObject("FilterAttribute:Name"),null)).addURLParameter(context.getFormattedValue("FilterValueMappingValue",null),context.getFormattedValue(getObject("FilterValueMapping:Value"),null))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("&nbsp;</td>\n<td class=\"table_detail2 e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FilterValueMapping:Type"),null).equals(context.getFormattedValue("text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 {out.write(localizeISText("FilterValueMappings.Text.table_detail4",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FilterValueMapping:Type"),null).equals(context.getFormattedValue("image",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 {out.write(localizeISText("FilterValueMappings.Image.table_detail4",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FilterValueMapping:Type"),null).equals(context.getFormattedValue("colorcode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
 {out.write(localizeISText("FilterValueMappings.HTMLColorCode.table_detail4",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {112}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 }}} 
      out.write("&nbsp;</td>\n<td class=\"table_detail2 e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FilterValueMapping:Type"),null).equals(context.getFormattedValue("text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FilterValueMapping:Type"),null).equals(context.getFormattedValue("image",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(contentURL(context.getFormattedValue(getObject("FilterValueMapping:MappedRef"),null)))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" ><tr><td><img style=\"max-height:30px;\" src=\"");
      out.print(context.getFormattedValue(contentURL(context.getFormattedValue(getObject("FilterValueMapping:MappedRef"),null)),null));
      out.write("\" title=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td><td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("FilterValueMapping:MappedValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { 
      out.write("&nbsp;(");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(')');
 } 
      out.write("</td></tr></table>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FilterValueMapping:Type"),null).equals(context.getFormattedValue("colorcode",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" ><tr><td><span style=\"height:25px;width:75px; display:block; background-color:");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" title=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedRef"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/></span></td><td>&nbsp;");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("FilterValueMapping:MappedValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write('(');
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(')');
 } 
      out.write("</td></tr></table>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:MappedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;\n");
 }}} 
      out.write("</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ArrowCellPlaced")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("ArrowCellPlaced", temp_obj);} 
      out.write("<td class=\"table_detail2 e s\" rowspan=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMappings:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\">\n<tr><td><input type=\"image\" name=\"moveValueMappingsUp\" value=\"moveValueMappingsUp\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_up.gif\" alt=\"\"></td></tr>\n<tr><td><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" alt=\"\" border=\"0\" height=\"4\" width=\"1\"></td></tr>\n<tr><td><input type=\"image\" name=\"moveValueMappingsDown\" value=\"moveValueMappingsUp\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/sort_down.gif\" alt=\"\"></td></tr>\n</table>\n</td>");
 } 
 } 
      out.write("</tr>");
 } 
      out.write("</table>\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_detail w e s\">");
 {out.write(localizeISText("FilterValueMappings.ThereAreNoValueMappingsCurrently.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr> \n");
 } 
      out.write("</table>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchIndexEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { 
      out.write("<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" width=\"100%\">\n<tr>\n<td align=\"left\" class=\"w s\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("FilterValueMappings.PopulateValues.button",null)),null));
      out.write("\" name=\"confirmPopulateValueMappings\"></td>\n</tr>\n</table>\n</td>\n<td align=\"right\" class=\"s e\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("FilterValueMappings.Add.button",null)),null));
      out.write("\" name=\"addValueMapping\"></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("FilterValueMappings") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",175,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("FilterValueMappings.Remove.button",null)),null));
      out.write("\" name=\"confirmDeleteValueMappings\"></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr> \n</table>");
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr><td class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"1\" alt=\"\" border=\"0\"/></td></tr>\n</table>");
 } 
 out.print("</form>"); 
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
