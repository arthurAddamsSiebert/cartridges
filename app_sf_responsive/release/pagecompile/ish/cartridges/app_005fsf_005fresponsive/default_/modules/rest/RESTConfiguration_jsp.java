/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.modules.rest;

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

public final class RESTConfiguration_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "getcurrentdomain", new TagParameter[] {
new TagParameter("CurrentDomain","CurrentDomain")}, 4); 
 processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 5); 
 {try{executePipeline("ProcessRESTConfiguration-GetProperties",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentRequest",getObject("CurrentRequest")))).addParameter(new ParameterEntry("CurrentDomain",getObject("CurrentDomain")))))),"properties");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 7.",e);}} 
 {try{executePipeline("ProcessRESTConfiguration-CreateToken",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CurrentUser",getObject("CurrentUser"))))))),"token");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 11.",e);}} 
 out.print(context.prepareWAPlacement("JS_head")); 
      out.write("<script type=\"text/javascript\">\nif (typeof RESTConfiguration === 'undefined')\n{\nvar RESTConfiguration = {}\nRESTConfigurationClass = function() {\nvar http = location.protocol.concat(\"//\").concat(window.location.hostname);\nthis.AuthenticationToken = null;\nthis.BusinessPartnerNo = null;\nthis.CustomerNo = null;\nthis.Login = null;\nthis.WebServerSecureURL = null;\nthis.WebServerURL = null;\nthis.URLMappingRESTWebadapter = null;\nthis.URLMappingPipelineWebadapter = null;\nthis.Domain = null;\nthis.ServerGroup = null;\nthis.URLIdentifier = null;\nthis.LocaleID = null;\nthis.CurrencyCode = null;\nthis.CustomerTypeID = null;\nthis.URLMappingStaticWebadapter = null;\n};\nRESTConfigurationClass.prototype = {\nget: function(index) {\nreturn this[index];\n},\nset: function(index, value) {\nthis[index] = value;\n},\ngetCurrentHost: function() {\nreturn window.location.origin;\n},\ngetWebUrl: function() {\nreturn this.getCurrentHost() + this.URLMappingPipelineWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/' + this.LocaleID + '/' + this.URLIdentifier + '/' + this.CurrencyCode + '/';\n");
      out.write("},\ngetRESTUrl: function() {\nreturn this.getCurrentHost() + this.URLMappingRESTWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/' + this.URLIdentifier;\n},\ngetBaseRESTUrl: function() {\nreturn this.getCurrentHost() + this.URLMappingRESTWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/-/';\n},\ngetStaticUrl: function() {\nreturn this.URLMappingStaticWebadapter + '/' + this.ServerGroup + '/' + this.Domain + '/' + this.URLIdentifier + '/-/' + this.LocaleID + '/';\n},\ngetRESTClientHost: function() {\nreturn this.URLMappingRESTWebadapter + '/' + this.ServerGroup;\n},\ngetRESTClientPrefix: function() {\nreturn this.Domain + '/' + this.URLIdentifier;\n},\ngetAuthenticationToken: function() {\nreturn this.AuthenticationToken;\n},\ngetCustomerUrlPart: function(accountAdmin) {\nif (this.CustomerTypeID === 'PRIVATE' || accountAdmin === true) {\nreturn 'customers/' + this.CustomerNo;\n}else{\nreturn 'customers/' + this.CustomerNo + '/users/' + this.Login;\n}\n},\ngetLocale: function(rewrite) {\nif (typeof rewrite === 'undefined') {\n");
      out.write("return this.LocaleID;\n}else{\nreturn this.LocaleID.replace('_','-');\n}\n},\ngetLang: function() {\nreturn this.LocaleID.split('_')[0];\n},\ngetLocalizationsUrl: function(id) {\nif (typeof id !== 'undefined' && typeof id === 'string') {\nreturn this.getStaticUrl() + 'js/localizations/' + id + '-' + RESTConfiguration.LocaleID + '.json'\n}\nreturn this.getStaticUrl() + 'js/localizations/'\n},\ngetLocalizationProperties: function(topic, locale) {\nif (typeof locale === 'undefined') {\nvar locale = this.getLocale();\n}\nvar promise = $.getJSON(this.getWebUrl() + 'ViewLocalization-Get?topic='+topic+'&locale='+locale).then(function(data) {\nvar localizationProperties = {};\nlocalizationProperties[RESTConfiguration.getLocale()] = data;\nreturn localizationProperties;\n});\nreturn promise;\n}\n};\n};\nRESTConfiguration = new RESTConfigurationClass();\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("token:Token"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('AuthenticationToken', '");
 {String value = null;try{value=context.getFormattedValue(getObject("token:Token:Token"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";out.write(value);} 
      out.write("');\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUser:Profile:BusinessPartnerNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('BusinessPartnerNo', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("');\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUser:Profile:Credentials:Login"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",147,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('Login', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentUser:Profile:Credentials:Login"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("');\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO:CustomerNo"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('CustomerNo', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:WebServerSecureURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('WebServerSecureURL', '");
 {String value = null;try{value=context.getFormattedValue(getObject("properties:WebServerSecureURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:WebServerURL"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('WebServerURL', '");
 {String value = null;try{value=context.getFormattedValue(getObject("properties:WebServerURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:URLMappingRESTWebadapter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('URLMappingRESTWebadapter', '");
 {String value = null;try{value=context.getFormattedValue(getObject("properties:URLMappingRESTWebadapter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {160}",e);}if (value==null) value="";out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:URLMappingPipelineWebadapter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('URLMappingPipelineWebadapter', '");
 {String value = null;try{value=context.getFormattedValue(getObject("properties:URLMappingPipelineWebadapter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",165,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('Domain', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentDomain:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:ServerGroup"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('ServerGroup', '");
 {String value = null;try{value=context.getFormattedValue(getObject("properties:ServerGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ApplicationBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",171,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('URLIdentifier', '");
 {String value = null;try{value=context.getFormattedValue(getObject("ApplicationBO:UrlIdentifier"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentRequest"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('LocaleID', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentRequest"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",177,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('CurrencyCode', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentRequest:CurrencyCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {178}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CustomerBO:CustomerType:CustomerTypeID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",180,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('CustomerTypeID', '");
 {String value = null;try{value=context.getFormattedValue(getObject("CustomerBO:CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {181}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:URLMappingStaticWebadapter"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set('URLMappingStaticWebadapter', '");
 {String value = null;try{value=context.getFormattedValue(getObject("properties:URLMappingStaticWebadapter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {184}",e);}if (value==null) value="";out.write(value);} 
      out.write('\'');
      out.write(')');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:AccountingJSMoneyFormats"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set(\"MoneyFormat\", {\n");
 while (loop("properties:AccountingJSMoneyFormats:EntrySet","Entry",null)) { 
      out.write('\n');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(':');
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {189}",e);}if (value==null) value="";out.write(value);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { 
      out.write(',');
 } 
 } 
      out.write("\n});\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("properties:ISMLDatePatterns"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",194,e);}if (_boolean_result) { 
      out.write("\nRESTConfiguration.set(\"DateFormat\", {\n");
 while (loop("properties:ISMLDatePatterns:EntrySet","Entry",null)) { 
      out.write('\n');
      out.write('"');
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";out.write(value);} 
      out.write("\": \"");
 {String value = null;try{value=context.getFormattedValue(getObject("Entry:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {197}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Entry") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { 
      out.write(',');
 } 
 } 
      out.write("\n});\n");
 } 
      out.write("</script>");
 out.print("</waplacement>"); 
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