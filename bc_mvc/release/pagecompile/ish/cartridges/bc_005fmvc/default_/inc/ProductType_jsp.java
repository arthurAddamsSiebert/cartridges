/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fmvc.default_.inc;

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
import com.intershop.beehive.xcs.capi.product.*;
import com.intershop.beehive.xcs.capi.producttype.*;
import java.util.Iterator;
import com.intershop.beehive.core.capi.domain.*;

public final class ProductType_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("\n\n\n\n");
 


setEncodingType("text/xml"); 
      out.write('\n');
      out.write('\n');
 context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); 
      out.write("\n\n\n\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("producttype"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
      out.write("\n\n    <product-type name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("producttype:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n        <name>");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("producttype:Name"),null)),null));
      out.write("</name>\n\n    ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("producttype:ParentProductType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("\n            <parent name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("producttype:ParentProductType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" domain=\"");
 {String value = null;try{value=context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("producttype:ParentProductType:Domain:DomainName"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("\n\n        ");
 while (loop("producttype:AttributeValues","av",null)) { 
      out.write("\n            ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("displayName",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("<display-name ");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("av:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("av:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</display-name>");
 } 
      out.write("\n        ");
 } 
      out.write("\n\n        ");

            ProductType productType = (ProductType) getObject("producttype");

            if(productType.isDefault())
            {
                out.println("<default>1</default>");
            }
            else
            {
                out.println("<default>0</default>");
            }


            Iterator productAttributes = productType.createProductAttributesIterator();

            if(productAttributes.hasNext())
            {
                out.println("<product-type-attributes>");

                while (productAttributes.hasNext())
                {
                    ProductAttribute productAttribute = (ProductAttribute) productAttributes.next();
                    out.print("<product-type-attribute name=\"");
                    out.print(stringToXml(productAttribute.getName()));
                    out.print("\"");

                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_STRING)
                    {
                        out.println(" dt:dt=\"string\">");
                    }
                    
                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_MULTIPLE_STRING)
                    {
                        out.println(" dt:dt=\"string\" multiple=\"1\">");
                    }

                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_INT)
                    {
                        out.println(" dt:dt=\"int\">");
                    }
                    
                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_MULTIPLE_INT)
                    {
                        out.println(" dt:dt=\"int\" multiple=\"1\">");
                    }

                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_DOUBLE)
                    {
                        out.println(" dt:dt=\"double\">");
                    }
                    
                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_MULTIPLE_DOUBLE)
                    {
                        out.println(" dt:dt=\"double\" multiple=\"1\">");
                    }
                    
                    if(productAttribute.getValueType() == AttributeDefinitionConstants.ATTRIBUTE_TYPE_TEXT)
                    {
                        out.println(" dt:dt=\"text\">");
                    }

					for (Iterator iter = productAttribute.createAttributeValuesIterator("displayName"); iter.hasNext(); )
					{
						AttributeValue av = (AttributeValue)iter.next();
						out.print("<display-name xml:lang=\"" + av.getXMLLocaleID() + "\"" + ">");
						out.print(stringToXml(av.getStringValue()));
						out.println("</display-name>");
					}
					
                    if(productAttribute.isOrderRequired())
                    {
                        out.println("<order-required>1</order-required>");
                    }
                    else
                    {
                        out.println("<order-required>0</order-required>");
                    }

                    for (Iterator iter = productAttribute.createAttributeValuesIterator("unit"); iter.hasNext(); )
                    {
                    	AttributeValue unit = (AttributeValue)iter.next();
                    	out.print("<unit xml:lang=\"" + unit.getXMLLocaleID() + "\">");
                    	out.println(stringToXml(unit.getStringValue()) + "</unit>");
                    }

                    if(productAttribute.isLocalized())
                    {
                        out.println("<localizable>1</localizable>");
                    }
                    else
                    {
                        out.println("<localizable>0</localizable>");
                    }

                    Object defaultValue = productAttribute.getDefaultValue();

                    Iterator avs = productAttribute.createAttributeValuesIterator();

                    String  defaultLocale = null;

                    while(avs.hasNext())
                    {
                        AttributeValue  av          = (AttributeValue) avs.next();
                        String          avName      = av.getName();

                        if(avName.equals("defaultValue"))
                        {
                            defaultLocale = av.getXMLLocaleID();
                        }

                        if(avName.equals(ProductAttributeEnumerationConstants.ENUMERATION_VALUES_NAME))
                        {
                            String localeID = av.getXMLLocaleID();
                            Object enumValues  = av.getObject();

                            if (enumValues instanceof Iterator)
                            {
                                Iterator enumIterator = (Iterator) enumValues;

                                while (enumIterator.hasNext())
                                {
                                    Object value = enumIterator.next();
                                    out.print("<value");
                                    out.print(" xml:lang=\"");
                                    out.print(localeID);
                                    out.print("\"");
                                    out.print(" default=\"");
                                    if(value.equals(defaultValue))
                                    {
                                        out.print("1");
                                    }
                                    else
                                    {
                                        out.print("0");
                                    }
                                    out.print("\">");
                                    out.print(stringToXml(value.toString()));
                                    out.println("</value>");
                                }

                            }
                        }
                    }

                    if (!productAttribute.isEnumeration())
                    {
                        if (defaultValue != null)
                        {
                            out.print("<value");
                            out.print(" xml:lang=\"");
                            out.print(defaultLocale);
                            out.print("\"");
                            out.print(" default=\"1\">");
                            out.print(stringToXml(defaultValue.toString()));
                            out.println("</value>");
                        }
                    }

                    out.println("</product-type-attribute>");
                }
                out.println("</product-type-attributes>");
            }
            
            getPipelineDictionary().put("productTypeCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(productType.createCustomAttributesIterator(), productType));
        
      out.write("\n        ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("productTypeCustomAttributes"))}, 190); 
      out.write("\n\n    </product-type>\n\n");
 } 
      out.write('\n');
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
