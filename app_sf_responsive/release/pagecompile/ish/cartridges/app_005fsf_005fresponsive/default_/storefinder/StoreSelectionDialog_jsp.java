/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.storefinder;

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

public final class StoreSelectionDialog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "3");} 
      out.write("<div class=\"modal-dialog modal-lg\">\n<div class=\"modal-content\">\n<div class=\"modal-header\">\n<button type=\"button\" class=\"close\" data-dismiss=\"modal\" title=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" aria-label=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"><span aria-hidden=\"true\">&times;</span></button>\n<h2 class=\"modal-title\">");
 {out.write(localizeISText("store.store_finder.heading","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n</div>\n<div class=\"modal-body\">\n<p>");
 {out.write(localizeISText("store.dialog.message",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<div class=\"help-block\">");
 {out.write(localizeISText("store.store_finder.note",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 URLPipelineAction action44 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreAddresses-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))),null));String site44 = null;String serverGroup44 = null;String actionValue44 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreAddresses-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))),null);if (site44 == null){  site44 = action44.getDomain();  if (site44 == null)  {      site44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup44 == null){  serverGroup44 = action44.getServerGroup();  if (serverGroup44 == null)  {      serverGroup44 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreAddresses-Dispatch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null)))),null));out.print("\"");out.print(" name=\"");out.print("StoresFinderForm");out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal bv-form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue44, site44, serverGroup44,true)); 
      out.write("<input type=\"hidden\" data-form-action=\"true\"/>\n<div class=\"row\">\n<fieldset class=\"col-sm-12 col-md-8\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"storefinder/inc/StoreSearchForm", null, "21");} 
      out.write("</fieldset> \n</div>\n<a class=\"storesSelectConfirmation\" type=\"hidden\" href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStoreAddresses-ShowConfirmationDialog",null)))),null));
      out.write("\" data-hijax=\"true\"></a>");
 out.print("</form>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Stores")))).booleanValue() && ((Boolean) (hasLoopElements("Stores") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<div class=\"submit_Store\">\n<div class=\"alert alert-danger\" style=\"display:none\">");
 {out.write(localizeISText("store.store_select.error.required",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>\n<div class=\"row\">");
 while (loop("Stores","Store",null)) { 
      out.write("<div class=\"store-list-address col-md-4 col-sm-6 col-xs-12\">\n<div class=\"radio\">\n<label>\n<input required aria-required=\"true\" type=\"radio\" value=\"");
      out.print(context.getFormattedValue(getObject("Store:ID"),null));
      out.write("\" name=\"StoreAddressOption\" />\n<div data-store-id=\"");
      out.print(context.getFormattedValue(getObject("Store:ID"),null));
      out.write("\" data-store-name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Store:AddressBO:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" data-store-address=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Store:AddressBO:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&nbsp;");
 {String value = null;try{value=context.getFormattedValue(getObject("Store:AddressBO:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "address", new TagParameter[] {
new TagParameter("address",getObject("Store:AddressBO"))}, 42); 
      out.write("</div>\n</label>\n</div>\n</div>");
 } 
      out.write("</div>\n<div class=\"row\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ListNavigationVO:PageCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write("<div class=\"pagination clearfix col-xs-12\">");
 processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline",context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Paging",null)),
new TagParameter("pagecount",getObject("ListNavigationVO:PageCount")),
new TagParameter("itemcount",getObject("ListNavigationVO:ElementCount")),
new TagParameter("currentpage",getObject("ListNavigationVO:CurrentPage")),
new TagParameter("hijax","true"),
new TagParameter("params",getObject("ListNavigationVO:GenericHandlerPipelineParams"))}, 52); 
      out.write("</div>");
 } 
      out.write("</div>\n</div>");
 } else { 
      out.write("<div class=\"help-block\">");
 {out.write(localizeISText("store.dialog.no_search_results.text",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</div>");
 } 
 } 
      out.write(" \n</div>\n<div class=\"modal-footer\">\n<div class=\"form_group\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("<button type=\"submit\" class=\"btn btn-primary selectStore\" name=\"selectAddress\">");
 {out.write(localizeISText("store.dialog.button.ok",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>");
 } 
      out.write("<button type=\"button\" data-dismiss=\"modal\" name=\"cancel\" class=\"btn btn-default\" >");
 {out.write(localizeISText("store.dialog.button.cancel",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>\n</div>\n</div>\n</div>");
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
