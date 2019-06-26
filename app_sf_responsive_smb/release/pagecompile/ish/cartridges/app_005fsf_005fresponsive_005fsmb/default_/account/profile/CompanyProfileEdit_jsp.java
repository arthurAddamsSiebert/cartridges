/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fsmb.default_.account.profile;

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

public final class CompanyProfileEdit_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
setEncodingType("text/html"); 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
      out.write("<div class=\"breadcrumbs row\">");
 processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("account.profile.link",null)))}, 5); 
      out.write("</div>\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 10); 
      out.write("</div>\n<div class=\"account-wrapper\">\n<div class=\"row account-main\">\n<div class=\"col-md-3 account-nav-box\">");
 processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","PROFILE")}, 17); 
      out.write("</div>\n<div class=\"col-md-9\">\n<div class=\"marketing-area\">");
 processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 22); 
      out.write("</div>\n<h1>");
 {out.write(localizeISText("account.company_profile.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h1>\n<p>");
 {out.write(localizeISText("account.company_profile.heading.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>");
 {Object temp_obj = ("true"); getPipelineDictionary().put("errormarkup", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("CurrentForm:CompanyName:isError(\"error.editedByAnother\")")).booleanValue() || ((Boolean) getObject("CurrentForm:CompanyName2:isError(\"error.editedByAnother\")")).booleanValue() || ((Boolean) getObject("CurrentForm:Industry:isError(\"error.editedByAnother\")")).booleanValue() || ((Boolean) getObject("CurrentForm:TaxationID:isError(\"error.editedByAnother\")")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("errormarkup", temp_obj);} 
      out.write("<a class=\"kor-warning-editedByAnother kor-open-as-dialog-without-ajax\"></a>\n<div class=\"kor-dialog-content\">\n<div class=\"kor-content-contents\">\n<h2");
 {out.write(localizeISText("account.company_profile.warning","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n<p>");
 {out.write(localizeISText("account.company_profile.warning.editedByAnother","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<div class=\"ish-field-buttonGroup\">\n<a class=\"ish-button\" href=\"");
 {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCompanyProfileSettings-ViewProfilePreferences",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.reloadpage.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n</div>\n</div>\n<script type=\"text/javascript\">\n$(\".kor-warning-editedByAnother\").click();\n</script>");
 } 
      out.write("<div>");
 URLPipelineAction action1 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCompanyProfileSettings-UpdateProfile",null)))),null));String site1 = null;String serverGroup1 = null;String actionValue1 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCompanyProfileSettings-UpdateProfile",null)))),null);if (site1 == null){  site1 = action1.getDomain();  if (site1 == null)  {      site1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup1 == null){  serverGroup1 = action1.getServerGroup();  if (serverGroup1 == null)  {      serverGroup1 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewCompanyProfileSettings-UpdateProfile",null)))),null));out.print("\"");out.print(" name=\"");out.print("UpdateCompanyProfileForm");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue1, site1, serverGroup1,true)); 
      out.write("<p class=\"indicates-required\"><span class=\"required\">*</span>");
 {out.write(localizeISText("account.required_field.message","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<div class=\"form-group\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName:FormValue_CompanyName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"col-md-3 col-sm-3 control-label\">");
 {out.write(localizeISText("account.address.company_name.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<span class=\"required\">*</span>\n</label>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName:Original_CompanyName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:CompanyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<div class=\"col-md-4 col-sm-6\">\n<input type=\"text\" class=\"form-control\" maxlength=\"60\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName:FormValue_CompanyName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName:FormValue_CompanyName:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName:FormValue_CompanyName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nrequired\ndata-bv-notempty-message=\"");
 {out.write(localizeISText("account.address.company_name.error.required","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"\n/>\n</div>\n</div>\n<div class=\"form-group\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName2:FormValue_CompanyName2:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"col-md-3 col-sm-3 control-label\">");
 {out.write(localizeISText("account.address.company_name_2.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName2:Original_CompanyName2:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:CompanyName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<div class=\"col-md-4 col-sm-6\">\n<input type=\"text\" class=\"form-control\" maxlength=\"60\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName2:FormValue_CompanyName2:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName2:FormValue_CompanyName2:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:CompanyName2:FormValue_CompanyName2:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n/>\n</div>\n</div>\n<div class=\"form-group\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Industry:FormValue_Industry:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"col-md-3 col-sm-3 control-label\">");
 {out.write(localizeISText("account.companyprofile.industry.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Industry:Original_Industry:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:Industry"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<div class=\"col-md-4 col-sm-6\">\n<input type=\"text\" class=\"form-control\" maxlength=\"60\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Industry:FormValue_Industry:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Industry:FormValue_Industry:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {106}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:Industry:FormValue_Industry:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {107}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n/>\n</div>\n</div>\n<div class=\"form-group\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:TaxationID:FormValue_TaxationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"col-md-3 col-sm-3 control-label\">");
 {out.write(localizeISText("account.companyprofile.taxationid.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:TaxationID:Original_TaxationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CompanyCustomer:TaxationID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<div class=\"col-md-4 col-sm-6\">\n<input type=\"text\" class=\"form-control\" maxlength=\"60\"\nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:TaxationID:FormValue_TaxationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nname=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:TaxationID:FormValue_TaxationID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {122}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\nvalue=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentForm:TaxationID:FormValue_TaxationID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"\n/>\n</div>\n</div>\n<div class=\"form-group\">\n<div class=\"col-sm-offset-3 col-sm-8\">\n<button class=\"btn btn-primary\" type=\"submit\" value=\"UpdateProfile\" name=\"UpdateProfile\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("errormarkup"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { 
      out.write("disabled");
 } 
      out.write('>');
 {out.write(localizeISText("account.update.button.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<a class=\"btn btn-default\" href=\"");
 {String value = null;try{value=context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewProfileSettings-ViewProfile",null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {133}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("account.cancel.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n</div>\n</div>");
 out.print("</form>"); 
      out.write("</div>\n</div>\n</div>\n</div>");
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
