/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content;

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

public final class PageletView_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery-ui-1.10.3.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/jquery-ui.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/themes/base/jquery.ui.theme.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/themes/backoffice/jquery.ui.theme.css");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery/lightbox/jquery.dialog.css");
 out.print("</waplacement>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PageLocatorName"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Pagelet:UUID")); getPipelineDictionary().put("PageLocatorName", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Pagelet:DisplayName(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Pagelet:DisplayName(Locale)")); getPipelineDictionary().put("DisplayName", temp_obj);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Pagelet:DisplayName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("Pagelet:DisplayName")); getPipelineDictionary().put("DisplayName", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("Pagelet:Id")); getPipelineDictionary().put("DisplayName", temp_obj);} 
 }} 
 while (loop("ApplicationState:Breadcrumbs","Current",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Current:ID"),null).equals(context.getFormattedValue("NewPagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("NewPageletMode", temp_obj);} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("removeLastBreadCrumb")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("removeLastBreadCrumb"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ApplicationState:getLastBreadcrumb:ID")); getPipelineDictionary().put("RemoveBreadCrumbID", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CurrentChannelPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} 
 {Object temp_obj = ("true"); getPipelineDictionary().put("IsChannel", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("CurrentUserPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} 
 {Object temp_obj = ("false"); getPipelineDictionary().put("IsChannel", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("SelectedTab"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Labels",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && !((Boolean) ((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_LABELS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {Object temp_obj = ("Content"); getPipelineDictionary().put("SelectedTab", temp_obj);} 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NewPageletMode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewPageletMode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewPagelet"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(getObject("SelectedTab"),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue(getObject("SelectedTab"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)).addURLParameter(context.getFormattedValue("NewPageletMode",null),context.getFormattedValue("true",null)))),
new TagParameter("id",context.getFormattedValue(getObject("PageLocatorName"),null) + context.getFormattedValue("PageletDetails",null)),
new TagParameter("text",getObject("DisplayName"))}, 43); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("RemoveBreadCrumbID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid",getObject("RemoveBreadCrumbID")),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(getObject("SelectedTab"),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue(getObject("SelectedTab"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)))),
new TagParameter("id",context.getFormattedValue(getObject("PageLocatorName"),null) + context.getFormattedValue("PageletDetails",null)),
new TagParameter("text",getObject("DisplayName"))}, 45); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(getObject("SelectedTab"),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null))).addURLParameter(context.getFormattedValue("AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue(getObject("SelectedTab"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null)))),
new TagParameter("id",context.getFormattedValue(getObject("PageLocatorName"),null) + context.getFormattedValue("PageletDetails",null)),
new TagParameter("text",getObject("DisplayName"))}, 47); 
 }} 
 processOpenTag(response, pageContext, "pagelettabs", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Assignment",getObject("Assignment")),
new TagParameter("PageletView",getObject("PageletView")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("SelectedTab",getObject("SelectedTab")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("IsChannel",getObject("IsChannel")),
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("ContextObject",getObject("ContextObject")),
new TagParameter("Pagelet",getObject("Pagelet")),
new TagParameter("PageletLockLost",getObject("PageletLockLost"))}, 51); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue(getObject("Pagelet:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("parametervalue6",getObject("PageLocatorName")),
new TagParameter("parametervalue5",getObject("SelectedMenuItem")),
new TagParameter("parametervalue4",getObject("SelectedTab")),
new TagParameter("currentobject",getObject("Pagelet")),
new TagParameter("parametervalue3",getObject("ContextObject:UUID")),
new TagParameter("parametername1","AssignmentUUID"),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametervalue1",getObject("Assignment:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("parametername3","ContextObjectUUID"),
new TagParameter("pagenumber",getObject("DetailsPageNumber")),
new TagParameter("nameforobjectuuid","PageletUUID"),
new TagParameter("pipeline","ViewPagelet-View"),
new TagParameter("parametername4","SelectedTab"),
new TagParameter("parametername5","SelectedMenuItem"),
new TagParameter("pagelocatorname",getObject("PageLocatorName")),
new TagParameter("parametername6","PageLocatorName")}, 66); 
 } else { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "86");} 
 } 
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
