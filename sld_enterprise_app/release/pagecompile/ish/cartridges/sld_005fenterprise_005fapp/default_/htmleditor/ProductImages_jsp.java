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
import com.intershop.beehive.core.capi.domain.Domain;
import com.intershop.beehive.core.capi.domain.DomainMgr;
import com.intershop.beehive.core.capi.naming.NamingMgr;

public final class ProductImages_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"htmleditor/Modules.isml", null, "2");} 

    final DomainMgr domainManager = NamingMgr.getManager(DomainMgr.class);
    final Domain unitDomain = domainManager.getDomainByUUID(String.valueOf(getObject("OrganizationDomainId")));
    if (unitDomain != null) {
        final Domain siteDomain = unitDomain.isMereUnit() ? unitDomain.getSite() : unitDomain;
        getPipelineDictionary().put("SiteDomain", siteDomain);
    }
 
      out.write("<collection id = \"foo\">\n<uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetProductImages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/htmleditor/kupuimages/folder.png</icon>\n<title>");
 {String value = null;try{value=context.getFormattedValue(getObject("Directory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n<src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetProductImages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n<items>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Directory:Root")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
      out.write("<collection id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Directory:Parent:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetProductImages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("Directory:Parent:Path"),null)).addURLParameter(context.getFormattedValue("AsLink",null),context.getFormattedValue(getObject("AsLink"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("Subdir:Object:SiteName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/ic_folder.gif</icon>");
 } else { 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/icon_shared_folder.gif</icon>\n<readonly>true</readonly>");
 } 
      out.write("<title>[..]</title>\n<src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetProductImages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("Directory:Parent:Path"),null)).addURLParameter(context.getFormattedValue("AsLink",null),context.getFormattedValue(getObject("AsLink"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n<items></items>\n</collection> \n");
 } 
 while (loop("Directory:Directories","SubDirectory",null)) { 
      out.write("<collection id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("SubDirectory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetProductImages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("SubDirectory:Path"),null)).addURLParameter(context.getFormattedValue("AsLink",null),context.getFormattedValue(getObject("AsLink"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("Subdir:Object:SiteName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/ic_folder.gif</icon>");
 } else { 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/icon_shared_folder.gif</icon>\n<readonly>true</readonly>");
 } 
      out.write("<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/ic_folder.gif</icon>\n<title>");
 {String value = null;try{value=context.getFormattedValue(getObject("SubDirectory:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n<src>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("HtmlEditor-GetProductImages",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("SubDirectory:Path"),null)).addURLParameter(context.getFormattedValue("AsLink",null),context.getFormattedValue(getObject("AsLink"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</src>\n<items></items>\n</collection> \n");
 } 
 while (loop("Files","File",null)) { 
      out.write("<resource id=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("File:Name"),null) + context.getFormattedValue(getObject("File:Extension"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<title>");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("File:Name"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("File:Extension"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</title>\n<description></description>\n<size>");
      out.print(context.getFormattedValue(stringToXml(context.getFormattedValue(getObject("File:Size"),null)),null));
      out.write("(byte)</size>\n<height></height>\n<width></width>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("File:SiteDomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("<readonly>true</readonly>\n<icon>");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser/shared_content.gif</icon>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AsLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("<uri>https://./?[islink]isstatic://./?");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("[/islink]</uri>");
 } else { 

	            		com.intershop.beehive.core.capi.pipeline.PipelineDictionary dict = 
	            			getPipelineDictionary();
	            		String descriptor = (String)getObject("File:ContentDescriptor");
	            		descriptor = contentURL(descriptor, (String)dict.get("LoacaleID"));
	            		String domain = (String)getObject("RepDomain:DomainName")+"-Site";
	            		String currentDomain = (String) getObject("CurrentDomain:DomainName");
	            		String start = descriptor.substring(0,descriptor.indexOf(currentDomain));
	            		String end = descriptor.substring(descriptor.indexOf(currentDomain)+currentDomain.length(),descriptor.length());
	            		dict.put("ImageUrl",start+domain+end);
	            	
      out.write("<preview>");
 {String value = null;try{value=context.getFormattedValue(getObject("ImageUrl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</preview>\n<uri>");
 {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-Thumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("URI",null),context.getFormattedValue(context.getFormattedValue("isstatic://./?",null) + context.getFormattedValue(getObject("File:ContentDescriptor"),null),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</uri>\n<encodeduri>https://./?[ismediaobject]isstatic://./?");
 {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('|');
 {String value = null;try{value=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("[/ismediaobject]</encodeduri>");
 } 
      out.write("</resource>");
 } 
 processOpenTag(response, pageContext, "kupuresourcepaging", new TagParameter[] {
new TagParameter("Pageable",getObject("Files")),
new TagParameter("ResourceIdPrefix",getObject("Directory:Name")),
new TagParameter("GetterPipeline","HtmlEditor-GetProductImages"),
new TagParameter("GetterValue0",getObject("Directory:Path")),
new TagParameter("GetterParam0","DirectoryPath")}, 84); 
      out.write("</items>\n</collection>");
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
