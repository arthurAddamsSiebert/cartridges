/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.htmleditor;

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

public final class ServerBrowserStaticSearch_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
      response.setContentType("text/xml;charset=utf-8");
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
 
 

setEncodingType("text/xml"); 
      out.write("\n<?is-template class=\"");
      out.print(getClass().getName());
      out.write("\" credits=\"Copyright (C) 2008 Intershop Communications AG, all rights reserved.\"?>\n");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"htmleditor/Modules.isml", null, "3");} 
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Version"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
      out.write("\n    ");
 {Object temp_obj = ("1"); getPipelineDictionary().put("Version", temp_obj);} 
      out.write('\n');
 } 
      out.write("\n<libraries version=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Version"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n    ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("PageNumber"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write("\n        <library id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n            <uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-SearchStaticContent",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("Query",null),context.getFormattedValue(getObject("Query"),null)).addURLParameter(context.getFormattedValue("Type",null),context.getFormattedValue(getObject("Type"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n            <title>Search for: ");
 {String value = null;try{value=context.getFormattedValue(getObject("Query"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n            <src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-SearchStaticContent",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("Query",null),context.getFormattedValue(getObject("Query"),null)).addURLParameter(context.getFormattedValue("Type",null),context.getFormattedValue(getObject("Type"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n            <icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/ic_folder.gif</icon>\n            <readonly>true</readonly>\n        </library>\n    ");
 } 
      out.write("\n    \n    ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Links")))).booleanValue() && ((Boolean) (hasLoopElements("Links") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("\n        ");
 while (loop("Links","Product",null)) { 
      out.write("\n           <resource id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n               <uri>product://");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('@');
 {String value = null;try{value=context.getFormattedValue(getObject("Product:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n               <title>");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(".link</title>\n               <description>");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</description>\n               <description2>Product</description2>\n               <size>   </size>\n               <height>0</height>\n               <width>0</width>\n               ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("\n                   <icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/shared_product.gif</icon>\n               ");
 } 
      out.write("\n               <src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("ProductLinkPipeline"),null),context.getFormattedValue(getObject("ProductLinkServerGroup"),null),context.getFormattedValue(getObject("ProductLinkSite"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductUUID",null),context.getFormattedValue(getObject("Product:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("Product:SKU"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n               <readonly>true</readonly>\n               <preview>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_52-GenerateProductThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</preview>     \n           </resource>\n        ");
 } 
      out.write("\n        ");
 {Object temp_obj = (getObject("Links")); getPipelineDictionary().put("Files", temp_obj);} 
      out.write("\n    ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Images")))).booleanValue() && ((Boolean) (hasLoopElements("Images") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("\n        ");
 while (loop("Images","FileObject",null)) { 
      out.write("\n            ");
 {Object temp_obj = (getObject("FileObject:Object")); getPipelineDictionary().put("File", temp_obj);} 
      out.write("         \n            <resource id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContextURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n                <title>");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n                <description>");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</description>\n                <description2>Image</description2>\n                <size>");
 {String value = null;try{value=context.getFormattedValue(getObject("File:FileSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" (byte)</size>\n                <height></height>\n                <width></width>\n                ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("File:SiteDomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("\n                    <readonly>true</readonly>\n                    <icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/shared_content.gif</icon>\n                ");
 } 
      out.write("\n                <preview>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-Thumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("URI",null),context.getFormattedValue(getObject("File:ContextURL"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</preview>\n                ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AsLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("\n                    <src>");
 {String value = null;try{value=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("LocaleId"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n                    <encodeduri>https://./?[ismediaobject]isstatic://./?");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('|');
 {String value = null;try{value=context.getFormattedValue(getObject("File:StaticURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("[/ismediaobject]</encodeduri>\n                ");
 } else { 
      out.write("\n                    <uri>");
 {String value = null;try{value=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("LocaleId"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n                ");
 } 
      out.write("\n            </resource>\n        ");
 } 
      out.write("\n        ");
 {Object temp_obj = (getObject("Images")); getPipelineDictionary().put("Files", temp_obj);} 
      out.write("\n    ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Files")))).booleanValue() && ((Boolean) (hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write("\n        ");
 while (loop("Files","SearchResult",null)) { 
      out.write("\n            <resource>\n                <title>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n                <description>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</description>\n                <size>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" (byte)</size>\n                <height>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Height"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</height>\n                <width>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Width"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</width>\n                ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchResult:isFile"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write("\n                    ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("SearchResult:File:SiteDomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("\n\t                    <readonly>true</readonly>\n\t                    <icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/shared_content.gif</icon>\n\t                ");
 } 
      out.write("\n                    ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AsLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("\n\t                    <uri>https://./?[islink]isstatic://./?");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("[/islink]</uri>\n\t                ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Version"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { 
      out.write("\n\t                    <preview>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-Thumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("URI",null),context.getFormattedValue(getObject("SearchResult:File:ContextURL"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</preview>\n\t                    <uri>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:File:StaticURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n\t                    <encodeduri>https://./?[ismediaobject]isstatic://./?");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('|');
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:File:StaticURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("[/ismediaobject]</encodeduri>\n\t                ");
 } else { 
      out.write("\n\t                    <preview>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:File:StaticURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</preview>\n\t                    <uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-Thumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("URI",null),context.getFormattedValue(getObject("SearchResult:File:ContextURL"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n\t                    <encodeduri>https://./?[ismediaobject]isstatic://./?");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('|');
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:File:StaticURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("[/ismediaobject]</encodeduri>\n\t                ");
 }} 
      out.write("\n\t            ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SearchResult:isProduct"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("\n\t               <uri>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Uri"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n\t               <readonly>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:ReadOnly"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</readonly>\n\t               <description2>");
 {String value = null;try{value=context.getFormattedValue(getObject("SearchResult:Description2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {88}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</description2>\n\t               \n\t               <src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null),context.getFormattedValue(getObject("ProductServerGroup"),null),context.getFormattedValue(getObject("SearchResult:Product:Domain:Site:DisplayName"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("SearchResult:Product:SKU"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n\t               <preview>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_52-GenerateProductThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("SearchResult:Product:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</preview>                   \n                   ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SearchResult:Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { 
      out.write("\n                        <icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/shared_product.gif</icon>\n                   ");
 } 
      out.write("                   \n                ");
 }} 
      out.write("\n                \n            </resource>\n        ");
 } 
      out.write("\n    ");
 }}} 
      out.write("\n    ");
 processOpenTag(response, pageContext, "kupuresourcepaging", new TagParameter[] {
new TagParameter("Pageable",getObject("Files")),
new TagParameter("ResourceIdPrefix",getObject("CollectionID")),
new TagParameter("GetterPipeline","ServerBrowser-SearchStaticContent"),
new TagParameter("GetterValue0",getObject("Query")),
new TagParameter("GetterParam1","PageSize"),
new TagParameter("GetterParam0","Query"),
new TagParameter("GetterValue1",getObject("Files:PageSize"))}, 100); 
      out.write("\n</libraries>\n");
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
