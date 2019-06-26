/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fbmecat.default_;

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
import java.util.*;
import com.intershop.beehive.xcs.capi.product.*;
import com.intershop.beehive.xcs.capi.price.*;
import com.intershop.beehive.core.capi.naming.*;
import com.intershop.component.pricing.capi.definition.*;
import com.intershop.adapter.bmecat.util.BMEEnumChecker;
import com.intershop.beehive.core.capi.log.Logger;
import com.intershop.adapter.bmecat.util.BMEcatExportUtil;

public final class BMEcat_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/xml;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 


setEncodingType("text/xml"); 
      out.write("\n<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<BMECAT xmlns=\"http://www.bmecat.org/XMLSchema/1.2/bmecat_new_catalog\"\n        xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n        xsi:schemaLocation=\"http://www.bmecat.org/XMLSchema/1.2/bmecat_new_catalog bmecat_new_catalog_1_2.xsd\"\n        version=\"1.2\">\n\n\n\n");
 
BMEEnumChecker bmeEnumChecker = BMEEnumChecker.getInstance();
bmeEnumChecker.setSchemaPath("bmecat", "bmecat_new_catalog_1_2.xsd");
getPipelineDictionary().put("BMEEnumChecker", bmeEnumChecker); 

      out.write('\n');
      out.write('	');
 context.setCustomTagTemplateName("catalogstructure","inc/CatalogStructure",false,new String[]{"category"},null); 
      out.write('\n');
      out.write('	');
 context.setCustomTagTemplateName("article","inc/Article",false,new String[]{"product"},null); 
      out.write('\n');
      out.write('	');
 context.setCustomTagTemplateName("article2cataloggroupmap","inc/Article2CatalogGroupMap",false,new String[]{"product","catalog"},null); 
      out.write('\n');
      out.write('	');
 context.setCustomTagTemplateName("mimeinfo","inc/MimeInfo",false,new String[]{"object","locale"},null); 
      out.write('\n');
      out.write('	');
 context.setCustomTagTemplateName("bmecataddress","inc/BMEcatAddress",false,new String[]{"organization","type"},null); 
      out.write('\n');
      out.write('	');
 context.setCustomTagTemplateName("writeelement","inc/WriteElement",false,new String[]{"objectpath","localized","element","size","optional","separator","formatter","style","id"},null); 
      out.write('\n');
      out.write('	');

		getPipelineDictionary().put("CurrentDate", new java.util.Date());
	
      out.write("\n\t<HEADER>\n\t\t<CATALOG>\n\t\t\t<LANGUAGE>");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:ISO3Language"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</LANGUAGE>\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","20"),
new TagParameter("objectpath","Catalog:Id"),
new TagParameter("element","CATALOG_ID")}, 31); 
      out.write("\n\t\t\t<CATALOG_VERSION>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Catalog:BME_CATALOG_VERSION"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("Catalog:BME_CATALOG_VERSION"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
      out.write('1');
      out.write('.');
      out.write('0');
 } 
      out.write("</CATALOG_VERSION>\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","100"),
new TagParameter("objectpath","Catalog:DisplayName"),
new TagParameter("localized","true"),
new TagParameter("element","CATALOG_NAME")}, 33); 
      out.write("\n\t\t\t<DATETIME type=\"generation_date\">\n\t\t\t\t<DATE>");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),"yyyy-MM-dd",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</DATE>\n\t\t\t\t<TIME>");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentDate"),"HH:mm:ss",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</TIME>\n\t\t\t</DATETIME>\n\t\t\t<TERRITORY>");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:Country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</TERRITORY>\n\t\t\t<CURRENCY>");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</CURRENCY>\n\t\t</CATALOG>\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BuyingOrganization"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<BUYER>\n\t\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","BuyingOrganization:ID"),
new TagParameter("element","BUYER_ID")}, 43); 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BuyingOrganization:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","BuyingOrganization:DisplayName"),
new TagParameter("element","BUYER_NAME")}, 44); 
 } else { 
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","BuyingOrganization:ID"),
new TagParameter("element","BUYER_NAME")}, 44); 
 } 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "bmecataddress", new TagParameter[] {
new TagParameter("organization",getObject("BuyingOrganization")),
new TagParameter("type","buyer")}, 45); 
      out.write("\n\t\t\t</BUYER>\n\t\t");
 } 
      out.write("\n\t\t<SUPPLIER>\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","SupplyingOrganization:ID"),
new TagParameter("element","SUPPLIER_ID")}, 49); 
      out.write(" \n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SupplyingOrganization:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","SupplyingOrganization:DisplayName"),
new TagParameter("element","SUPPLIER_NAME")}, 50); 
 } else { 
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","SupplyingOrganization:ID"),
new TagParameter("element","SUPPLIER_NAME")}, 50); 
 } 
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "bmecataddress", new TagParameter[] {
new TagParameter("organization",getObject("SupplyingOrganization")),
new TagParameter("type","supplier")}, 51); 
      out.write("\n\t\t</SUPPLIER>\n\t</HEADER>\n\t<T_NEW_CATALOG>\n\t\t<CATALOG_GROUP_SYSTEM>\n        \t");
 while (loop("Categories","Category",null)) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "catalogstructure", new TagParameter[] {
new TagParameter("category",getObject("Category"))}, 57); 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t</CATALOG_GROUP_SYSTEM>\n\t\t");
 while (loop("Products","Product",null)) { 
      out.write("\n\t\t\t");

				PriceDefinitionMgr priceDefMgr = 
					(PriceDefinitionMgr)NamingMgr.getInstance().
						lookupManager(PriceDefinitionMgr.REGISTRY_NAME);
				Product product = (Product)getObject("Product");
				getPipelineDictionary().put("ScaledProductListPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_LIST_PRICES));
				getPipelineDictionary().put("ScaledProductGroupPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_GROUP_PRICES));
			
      out.write("\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Product:ListPricesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (hasNext("ScaledProductListPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasNext("ScaledProductGroupPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "article", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 72); 
      out.write("\n\t\t\t");
 } else { 
      out.write("\n\t\t\t");
	
				Logger.warn(BMEcatExportUtil.class.getName(), "{} doesn't have a price, it is not eligible for export",(String)getObject("Product:SKU"));			
			
      out.write("\n\t\t\t");
 } 
      out.write("\t\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 while (loop("Products","Product",null)) { 
      out.write("\n\t\t\t");

				PriceDefinitionMgr priceDefMgr = 
					(PriceDefinitionMgr)NamingMgr.getInstance().
						lookupManager(PriceDefinitionMgr.REGISTRY_NAME);
				Product product = (Product)getObject("Product");
				getPipelineDictionary().put("ScaledProductListPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_LIST_PRICES));
				getPipelineDictionary().put("ScaledProductGroupPrices",
					priceDefMgr.getPriceDefinitions(product, PriceDefinitionConstants.SCALED_PRODUCT_GROUP_PRICES));
			
      out.write("\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Product:ListPricesCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (hasNext("ScaledProductListPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasNext("ScaledProductGroupPrices") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "article2cataloggroupmap", new TagParameter[] {
new TagParameter("product",getObject("Product")),
new TagParameter("catalog",getObject("Catalog"))}, 91); 
      out.write("\n\t\t\t");
 } 
      out.write("\t\n\t\t");
 } 
      out.write("\n\t</T_NEW_CATALOG>\n</BMECAT>");
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