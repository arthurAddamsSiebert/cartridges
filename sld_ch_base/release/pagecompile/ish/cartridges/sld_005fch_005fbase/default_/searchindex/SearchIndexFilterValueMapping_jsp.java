/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.searchindex;

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

public final class SearchIndexFilterValueMapping_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-EditValueMapping",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BackToValueMappingEditor",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",getObject("FilterValueMapping:Value"))}, 5); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-EditValueMapping",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("BackToValueMappingEditor",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.NewFilterValueMapping.text",null)))}, 7); 
 } 
      out.write("<script type=\"text/javascript\">\n<!--\nfunction onChangeMappingType(radioInput)\n{\nif(radioInput.value == \"text\")\n{\ndocument.FilterValueMapping.FilterValueMapping_MappedRef.disabled=true;\ndocument.FilterValueMapping.FilterValueMapping_Image.disabled=true;\ndocument.FilterValueMapping.selectValueMappingImage.disabled=true;\ndocument.FilterValueMapping.previewValueMappingImage.disabled=true;\n}\nelse if(radioInput.value == \"image\")\n{\ndocument.FilterValueMapping.FilterValueMapping_MappedRef.disabled=true;\ndocument.FilterValueMapping.FilterValueMapping_Image.disabled=false;\ndocument.FilterValueMapping.selectValueMappingImage.disabled=false;\ndocument.FilterValueMapping.previewValueMappingImage.disabled=false; \n}\nelse\n{\ndocument.FilterValueMapping.FilterValueMapping_MappedRef.disabled=false;\ndocument.FilterValueMapping.FilterValueMapping_Image.disabled=true;\ndocument.FilterValueMapping.selectValueMappingImage.disabled=true;\ndocument.FilterValueMapping.previewValueMappingImage.disabled=true; \n}\nreturn true; \n}\nfunction onChangeColorCode(input)\n");
      out.write("{\ndocument.getElementById('colorCodeSpanID').style.backgroundColor = input.value; \n}\n//-->\n</script>");
 URLPipelineAction action159 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));String site159 = null;String serverGroup159 = null;String actionValue159 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null);if (site159 == null){  site159 = action159.getDomain();  if (site159 == null)  {      site159 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup159 == null){  serverGroup159 = action159.getServerGroup();  if (serverGroup159 == null)  {      serverGroup159 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSearchIndexFilters-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("FilterValueMapping");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue159, site159, serverGroup159,true)); 
      out.write("<input type=\"hidden\" name=\"SearchIndexID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:IndexID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"AttributeName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterAttribute:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"FilterValueMappingValue\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 {out.write(localizeISText("SearchIndexFilterValueMapping.NewFilterValueMapping.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_VALIDATION"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box\">\n<tr>\n<td class=\"error_icon w s\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error w e s\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
 {out.write(localizeISText("SearchIndexFilterValueMapping.FilterValueMappingCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("SearchIndexFilterValueMapping.FilterValueMappingCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_MAPPING_TYPE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("SearchIndexFilterValueMapping.TheMappingTypeIsNotSelected.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_VALUE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("SearchIndexFilterValueMapping.TheValueFieldIsEmpty.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_TEXT_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("SearchIndexFilterValueMapping.TheTextFieldIsEmpty.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_IMAGE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("SearchIndexFilterValueMapping.TheImageFieldIsEmpty.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_UNKNOWN_MAPPING_TYPE"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
      out.write("<br/>");
 {out.write(localizeISText("SearchIndexFilterValueMapping.UnknownMappingTypeIsSelected.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 }}}}} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_VALIDATION")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("BackToValueMappingEditor")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("FilterValueMapping_Value")); getPipelineDictionary().put("ValueFieldValue", temp_obj);} 
 {Object temp_obj = (getObject("FilterValueMapping_MappingType")); getPipelineDictionary().put("MappingTypeValue", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Image"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Image")); getPipelineDictionary().put("ImageFieldValue", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("FilterValueMapping_Image")); getPipelineDictionary().put("ImageFieldValue", temp_obj);} 
 } 
 {Object temp_obj = (getObject("FilterValueMapping_Text")); getPipelineDictionary().put("TextFieldValue", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { 
 {Object temp_obj = (""); getPipelineDictionary().put("ValueFieldValue", temp_obj);} 
 {Object temp_obj = (getObject("FilterValueMapping:Type")); getPipelineDictionary().put("MappingTypeValue", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("text",null).equals(context.getFormattedValue(getObject("FilterValueMapping:Type"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { 
 {Object temp_obj = (""); getPipelineDictionary().put("ImageFieldValue", temp_obj);} 
 {Object temp_obj = (getObject("FilterValueMapping:MappedValue")); getPipelineDictionary().put("TextFieldValue", temp_obj);} 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("FilterValueMapping:Type"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("FilterValueMapping:MappedRef")); getPipelineDictionary().put("ImageFieldValue", temp_obj);} 
 {Object temp_obj = (getObject("FilterValueMapping:MappedValue")); getPipelineDictionary().put("TextFieldValue", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("FilterValueMapping:MappedRef")); getPipelineDictionary().put("MappedRefFieldValue", temp_obj);} 
 {Object temp_obj = (getObject("FilterValueMapping:MappedValue")); getPipelineDictionary().put("TextFieldValue", temp_obj);} 
 }} 
 }} 
      out.write("<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.ForImageAsMappingTypeSelectAnImagePrevio.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br /><br />");
 {out.write(localizeISText("SearchIndexFilterValueMapping.FieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n<tr>\n<td class=\"w e s\">\n<table class=\"infobox\" width=\"100%\" border=\"0\" cellpadding=\"4\" cellspacing=\"0\">\n<tr>\n<td class=\"infobox_title\" width=\"120\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.IndexLanguage.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</td>\n<td class=\"infobox_item\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SearchIndex:Configuration:Locale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("SearchIndex:Configuration:Locale:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("&nbsp;\n</td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"6\" alt=\"\" border=\"0\"/></td>\n</tr>\n<tr>\n<td>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<colgroup>\n<col width=\"10%\"/>\n<col width=\"5%\"/>\n<col width=\"10%\"/>\n<col width=\"75%\"/>\n</colgroup>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_VALUE_EMPTY"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error w\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.Value.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2 w\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.Value.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
      out.write("<td class=\"table_detail\" colspan=\"2\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("FilterValueMapping")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("<input type=\"text\" name=\"FilterValueMapping_Value\" size=\"50\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ValueFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {168}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\"/>");
 } else { 
      out.write("<input type=\"text\" name=\"FilterValueMapping_Value\" size=\"50\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("FilterValueMapping:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" disabled=\"disabled\"/>");
 } 
      out.write("</td>\n<td class=\"e\" />\n</tr>\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_MAPPING_TYPE_EMPTY")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_UNKNOWN_MAPPING_TYPE")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { 
      out.write("<td class=\"fielditem2_error w\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.MappingType.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } else { 
      out.write("<td class=\"fielditem2 w\" nowrap=\"nowrap\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.MappingType.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></td>");
 } 
      out.write("<td class=\"table_detail\" nowrap=\"nowrap\">\n<input id=\"MappingType_image\" type=\"radio\" onchange=\"onChangeMappingType(this);\" name=\"FilterValueMapping_MappingType\" value=\"image\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\n/>\n<label for=\"MappingType_image\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.Image.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"FilterValueMapping_Image\" size=\"50\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {191}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" />\n</td>\n<td class=\"e\" width=\"1%\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Select.button",null)),null));
      out.write("\" name=\"selectValueMappingImage\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" /></td>\n<td class=\"button\"><input type=\"button\" name=\"previewValueMappingImage\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Preview.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("image",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" onclick=\"window.open('");
      out.print(context.getFormattedValue(contentURL(context.getFormattedValue(getObject("ImageFieldValue"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null));
      out.write("');\" /></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"w\"></td>\n<td class=\"table_detail\" nowrap=\"nowrap\">\n<input id=\"MappingType_colorcode\" type=\"radio\" onchange=\"onChangeMappingType(this);\" name=\"FilterValueMapping_MappingType\" value=\"colorcode\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("colorcode",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\n/>\n<label for=\"MappingType_colorcode\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.HTMLColorCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td> \n<td class=\"table_detail\">\n<input onChange=\"onChangeColorCode(this);\" type=\"text\" name=\"FilterValueMapping_MappedRef\" size=\"50\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue("colorcode",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",211,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("MappedRefFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {212}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" />\n</td>\n<td class=\"e\" width=\"1%\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td><span id=\"colorCodeSpanID\" style=\"background-color: ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("MappedRefFieldValue")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("MappedRefFieldValue"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",217,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("MappedRefFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');
 } else { 
      out.write("white;");
 } 
      out.write(" min-width: 75px; min-height: 25px; display:block;\" ></span></td>\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td class=\"w\" /> \n<td class=\"table_detail\" nowrap=\"nowrap\">\n<input id=\"MappingType_text\" type=\"radio\" onchange=\"onChangeMappingType(this);\" name=\"FilterValueMapping_MappingType\" value=\"text\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("text",null).equals(context.getFormattedValue(getObject("MappingTypeValue"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\n/>\n<label for=\"MappingType_text\">");
 {out.write(localizeISText("SearchIndexFilterValueMapping.Text.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</td>\n<td class=\"table_detail\">\n<input type=\"text\" name=\"FilterValueMapping_Text\" size=\"50\" \nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TextFieldValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {232}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"inputfield_en\" />\n</td>\n<td class=\"e\" />\n</tr>\n</table>\n</td>\n</tr>\n<tr>\n<td align=\"right\" class=\"aldi\">\n<table cellspacing=\"4\" cellpadding=\"0\" border=\"0\">\n<tr>\n<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Apply.button",null)),null));
      out.write("\" name=\"applyFilterValueMapping\"/></td>\n<td class=\"button\"><input type=\"reset\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Reset.button",null)),null));
      out.write("\" name=\"resetFilterValueMapping\"/></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",247,e);}if (_boolean_result) { 
      out.write("<td class=\"button\"><input type=\"submit\" class=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("SearchIndexFilterValueMapping.Cancel.button",null)),null));
      out.write("\" name=\"cancelFilterValueMapping\"/></td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr> \n</table>");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("FilterValueMapping"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",257,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "258");} 
 } 
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
