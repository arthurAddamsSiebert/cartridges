/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:11:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.core.default_.inc;

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

public final class CustomAttributes_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("\n\n \n \n \n\n");
 


setEncodingType("text/xml"); 
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "8");} 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("attributes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
      out.write('\n');
      out.write(' ');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("attributes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("\n    <custom-attributes>\n      ");
 while (loop("attributes","attribute",null)) { 
      out.write("\n        ");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"int\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
out.print(getObject("attribute:Object"));
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"double\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
out.print(getObject("attribute:Object"));
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"string\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"int\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + stringToXml((attributeIterator.next()).toString()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"double\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + stringToXml((attributeIterator.next()).toString()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"string\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + stringToXml((attributeIterator.next()).toString()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"long\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
out.print(getObject("attribute:Object"));
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(9))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"boolean\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(10))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"date\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("attribute:Object"))}, 55); 
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(11))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"decimal\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
out.print(getObject("attribute:Object"));
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(12))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"money\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 processOpenTag(response, pageContext, "money", new TagParameter[] {
new TagParameter("money",getObject("attribute:Object"))}, 59); 
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(13))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"quantity\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 processOpenTag(response, pageContext, "quantity", new TagParameter[] {
new TagParameter("quantity",getObject("attribute:Object"))}, 61); 
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(14))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"text\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("attribute:Object"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(15))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"long\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + stringToXml((attributeIterator.next()).toString()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(16))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"boolean\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + stringToXml((attributeIterator.next()).toString()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(17))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"date\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + com.intershop.beehive.core.capi.impex.binding.ConversionUtils.printImpexDateTimePattern((java.util.Date)attributeIterator.next()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("attribute:Type")).doubleValue() ==((Number)(new Double(18))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("\n          <custom-attribute name=\"");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("attribute:Name"),null)),null));
      out.write("\" dt:dt=\"decimal\"");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("attribute:isLocalized"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write(" xml:lang=\"");
      out.print(context.getFormattedValue(encodeString(context.getFormattedValue(getObject("attribute:XMLLocaleID"),null)),null));
      out.write('"');
 } 
      out.write(">\n          ");

            java.util.Iterator attributeIterator = (java.util.Iterator) getObject("attribute:Object");
            while (attributeIterator.hasNext())
            {
              out.println("<value>" + stringToXml((attributeIterator.next()).toString()) + "</value>");
            }
          
      out.write("\n          </custom-attribute>\n        ");
 }}}}}}}}}}}}}}}}} 
      out.write("\n      ");
 } 
      out.write("\n    </custom-attributes>\n  ");
 } 
      out.write('\n');
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