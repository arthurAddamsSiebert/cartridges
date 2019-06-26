/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ac_005fbmecat.default_.inc;

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
import java.util.Iterator;
import com.intershop.beehive.core.capi.domain.AttributeValue;
import com.intershop.beehive.core.capi.localization.LocaleInformation;
import com.intershop.beehive.foundation.util.FilterIterator;
import com.intershop.beehive.foundation.util.FilterCondition;
import com.intershop.beehive.xcs.capi.product.Product;

public final class Article_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 

	private class PrefixFilterCondition
		extends FilterCondition	
	{
		private String prefix = null;
		PrefixFilterCondition(String prefix) { this.prefix = prefix; }
		public boolean isValid(Object obj) { return obj.toString().startsWith(prefix); }
	}

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
      out.write('\n');
      out.write('\n');
      out.write('\n');
 context.setCustomTagTemplateName("articlefeatures","inc/ArticleFeatures",false,new String[]{"product"},null); 
      out.write('\n');
 context.setCustomTagTemplateName("articleorderdetails","inc/ArticleOrderDetails",false,new String[]{"product"},null); 
      out.write('\n');
 context.setCustomTagTemplateName("articlepricedetails","inc/ArticlePriceDetails",false,new String[]{"product"},null); 
      out.write('\n');
 context.setCustomTagTemplateName("articlereferences","inc/ArticleReferences",false,new String[]{"product"},null); 
      out.write('\n');
 context.setCustomTagTemplateName("mimeinfo","inc/MimeInfo",false,new String[]{"object","locale"},null); 
      out.write("\n<ARTICLE mode=\"new\">\n\t");
 {Object temp_obj = (context.getFormattedValue(getObject("Product:SKU"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("Controller:DomainName"),null)); getPipelineDictionary().put("ID", temp_obj);} 
      out.write("\n\t<SUPPLIER_AID>");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</SUPPLIER_AID>\n\t<ARTICLE_DETAILS>\n\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","80"),
new TagParameter("objectpath","Product:Name"),
new TagParameter("localized","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DESCRIPTION_SHORT")}, 26); 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Product:LongDescription(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","64000"),
new TagParameter("objectpath","Product:LongDescription"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DESCRIPTION_LONG")}, 28); 
      out.write("\n\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Product:ShortDescription(Locale)")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("Product:ShortDescription(Locale)"),null).equals(context.getFormattedValue(getObject("Product:Name(Locale)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","64000"),
new TagParameter("objectpath","Product:ShortDescription"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DESCRIPTION_LONG")}, 30); 
      out.write('\n');
      out.write('	');
      out.write('	');
 }} 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","14"),
new TagParameter("objectpath","Product:EANCode"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","EAN")}, 32); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_SUPPLIER_ALT_AID"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","SUPPLIER_ALT_AID")}, 33); 
      out.write('\n');
      out.write('	');
      out.write('	');
 
			Product product = (Product)getObject("Product");
	
			for (Iterator keys = new FilterIterator(product.createAttributeNamesIterator(),
				 new PrefixFilterCondition("BME_ARTICLE_DETAILS_BUYERAID")); keys.hasNext(); )
			{
				String key = (String)keys.next();
				String value = product.getString(key);
				String type = key.substring(key.lastIndexOf('_') + 1);
				out.println("<BUYER_AID type=" + type + ">" + encodeString(value) + "</BUYER_AID>");						
			}
		
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:ManufacturerSKU"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","MANUFACTURER_AID")}, 46); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:ManufacturerName"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","MANUFACTURER_NAME")}, 47); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_MANUFACTURERTYPEDESCR"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","MANUFACTURER_TYPE_DESCR")}, 48); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_ERPGROUPBUYER"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","ERP_GROUP_BUYER")}, 49); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_ERPGROUPSUPPLIER"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","ERP_GROUP_SUPPLIER")}, 50); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","6"),
new TagParameter("objectpath","Product:DeliveryDays"),
new TagParameter("optional","true"),
new TagParameter("style","number"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","DELIVERY_TIME")}, 51); 
      out.write('\n');
      out.write('	');
      out.write('	');

			LocaleInformation locale = (LocaleInformation)getObject("Locale");

			for (Iterator keys = new FilterIterator(product.createAttributeNamesIterator(),
				 new PrefixFilterCondition("BME_ARTICLE_DETAILS_SPECIAL_TREATMENT_CLASS")); keys.hasNext(); )
			{
				String key = (String)keys.next();
				String value = product.getString(key);
				String type = key.substring(key.lastIndexOf('_') + 1);
				out.println("<SPECIAL_TREATMENT_CLASS type=\"" + type + "\">" + encodeString(value) + "</SPECIAL_TREATMENT_CLASS>");
			}

			for (int i = 1;; ++i)
			{
				AttributeValue av = product.getAttributeValue("BME_ARTICLE_DETAILS_KEYWORD_" + i, locale);
				
				if (av == null) break;

				out.println("<KEYWORD>" + encodeString(av.getStringValue()) + "</KEYWORD>");
			}
		
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","64000"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_REMARKS"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","REMARKS")}, 73); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","100"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_SEGMENT"),
new TagParameter("localized","true"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","SEGMENT")}, 74); 
      out.write('\n');
      out.write('	');
      out.write('	');
 processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","10"),
new TagParameter("objectpath","Product:BME_ARTICLE_DETAILS_ARTICLEORDER"),
new TagParameter("style","integer"),
new TagParameter("optional","true"),
new TagParameter("id",getObject("ID")),
new TagParameter("element","ARTICLE_ORDER")}, 75); 
      out.write('\n');
      out.write('	');
      out.write('	');

			for (Iterator keys = new FilterIterator(product.createAttributeNamesIterator(),
				 new PrefixFilterCondition("BME_ARTICLE_DETAILS_ARTICLESTATUS")); keys.hasNext(); )
			{
				String key = (String)keys.next();
				AttributeValue av = product.getAttributeValue(key, locale);
				
				if (av == null) continue;

				out.println("<ARTICLESTATUS type=\"" + key.substring(key.lastIndexOf('_') + 1) + "\">" + 
					encodeString(av.getStringValue())+ "</ARTICLESTATUS>");
			}
		
      out.write("\n\t</ARTICLE_DETAILS>\n\t");
 processOpenTag(response, pageContext, "articlefeatures", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 90); 
      out.write('\n');
      out.write('	');
 processOpenTag(response, pageContext, "articleorderdetails", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 91); 
      out.write('\n');
      out.write('	');
 processOpenTag(response, pageContext, "articlepricedetails", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 92); 
      out.write('\n');
      out.write('	');
 processOpenTag(response, pageContext, "mimeinfo", new TagParameter[] {
new TagParameter("locale",getObject("Locale")),
new TagParameter("object",getObject("Product"))}, 93); 
      out.write('\n');
      out.write('	');
 processOpenTag(response, pageContext, "articlereferences", new TagParameter[] {
new TagParameter("product",getObject("Product"))}, 94); 
      out.write("\n</ARTICLE>");
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