/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.product;

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

public final class ProductCompare_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} 
 context.setCustomTagTemplateName("productcomparepaging","product/ProductComparePaging.isml",true,new String[]{"ProductBOs"},null); 
      out.write("<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 14); 
      out.write("</div>\n<div class=\"product-list\">\n<h1>");
 {out.write(localizeISText("product.compare.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<h2>");
 {out.write(localizeISText("product.compare.selected_product_count.message","",null,getObject("ProductBOs:ElementCount"),null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "productcomparepaging", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs"))}, 28); 
      out.write("<div class=\"table-responsive table-compare\">\n<table class=\"table\">\n<tbody>\n<tr>\n<th class=\"col-xs-6 col-sm-3\">&nbsp;</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td class=\"col-xs-6 col-sm-3\">\n<div class=\"product-image\">\n<a href=\"");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","M")}, 40); 
      out.write("</a>\n<a class=\"btn-tool\" title=\"");
 {out.write(localizeISText("product.compare.remove.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Delete",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductCompareRefID",null),context.getFormattedValue(getObject("ProductBO:ProductRef"),null)))),null));
      out.write("\">\n<span class=\"glyphicon glyphicon-trash\"></span>\n</a>\n</div>\n<div>\n<a class=\"product-title\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null));
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</div>\n<div class=\"product-number\">\n<label>");
 {out.write(localizeISText("product.itemNumber.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<span ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("RichSnippetsEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write("itemprop=\"sku\"");
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n</div>");
 URLPipelineAction action52 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null));String site52 = null;String serverGroup52 = null;String actionValue52 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null);if (site52 == null){  site52 = action52.getDomain();  if (site52 == null)  {      site52 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup52 == null){  serverGroup52 = action52.getServerGroup();  if (serverGroup52 == null)  {      serverGroup52 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(getObject("ProductBO:ID"),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue52, site52, serverGroup52,true)); 
      out.write("<input type=\"hidden\" name=\"SKU\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"PageNumber\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBOs:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 processOpenTag(response, pageContext, "addtocart", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 64); 
 out.print("</form>"); 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<th>");
 {out.write(localizeISText("product.compare.price.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 processOpenTag(response, pageContext, "productprice", new TagParameter[] {
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ShowInformationalPrice","true"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 73); 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<th></th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 processOpenTag(response, pageContext, "productavailability", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO"))}, 85); 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<th>");
 {out.write(localizeISText("product.compare.ratings.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>\n<div>");
 processOpenTag(response, pageContext, "productrating", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("SimpleRatingView","true")}, 94); 
      out.write("</div>\n</td>");
 } 
      out.write("</tr>\n<tr>\n<th>");
 {out.write(localizeISText("product.short_description.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("mode","storefront"),
new TagParameter("value",getObject("ProductBO:ShortDescription"))}, 107); 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<th>");
 {out.write(localizeISText("product.manufacturer_name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 } 
      out.write("</tr>\n<tr>\n<th>");
 {out.write(localizeISText("product.manufacturer_sku.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ManufacturerSKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</td>");
 } 
      out.write("</tr>");
 while (loop("CommonAttributeNames","common",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup:AttributeDescriptor(common)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { 
      out.write("<tr>\n<th>");
 {String value = null;try{value=context.getFormattedValue(getObject("AttributeGroup:AttributeDescriptor(common):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(common)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel","")}, 134); 
      out.write("</td>");
 } 
      out.write("</tr>");
 } 
 } 
      out.write("<tr>\n<th>");
 {out.write(localizeISText("product.specific_attributes.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</th>");
 while (loop("ProductBOs","ProductBO",null)) { 
      out.write("<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { 
      out.write("<dl class=\"ish-productAttributes\">");
 while (loop("SpecificAttributeNames","specific",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AttributeGroup:AttributeDescriptor(specific)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:Attribute(specific)")))).booleanValue() && ((Boolean) getObject("ProductBO:isAttributeLocalized(specific)")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(specific,CurrentSession:Locale)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(specific,CurrentSession:Locale)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel",getObject("specific"))}, 153); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:AttributeValue(specific)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "customattribute", new TagParameter[] {
new TagParameter("attributevalue",getObject("ProductBO:AttributeValue(specific)")),
new TagParameter("attributeseparator","|"),
new TagParameter("attributelabel",getObject("specific"))}, 155); 
 }} 
 } 
 } 
      out.write("</dl>");
 } 
      out.write("</td>");
 } 
      out.write("</tr>\n</tbody>\n</table>\n</div>\n<script>\nvar $table = $('.table');\nvar $fixedColumn = $table.clone().insertBefore($table).addClass('fixed-column');\n$fixedColumn.find('th:not(:first-child),td:not(:first-child)').remove();\n$fixedColumn.find('tr').each(function (i, elem) {\n$(this).height($table.find('tr:eq(' + i + ')').height());\n});\n</script>");
 processOpenTag(response, pageContext, "productcomparepaging", new TagParameter[] {
new TagParameter("ProductBOs",getObject("ProductBOs"))}, 179); 
 } else { 
      out.write('<');
      out.write('p');
      out.write('>');
 {out.write(localizeISText("product.compare.no_product_selected.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 } 
      out.write("</div>");
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
