/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.viewcontext;

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

public final class ViewContext_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} 
 processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 6); 
 processOpenTag(response, pageContext, "displayname", new TagParameter[] {
new TagParameter("Nameable",getObject("ViewContext")),
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Print","false"),
new TagParameter("NameableDisplayName","ViewContextDisplayName")}, 11); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Properties",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Properties.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 14); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Assignments",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ViewContext:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Pages.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Assignments",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 17); 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Includes.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Assignments",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 19); 
 } 
 } else { 
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("removeid","NewViewContext"),
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("ViewContext.Details.text1",null)),null)),
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewViewContext-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ViewContextUUID",null),context.getFormattedValue(getObject("ViewContext:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Details",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue(getObject("SelectedMenuItem"),null)))),
new TagParameter("id","ViewContext"),
new TagParameter("text",getObject("ViewContextDisplayName"))}, 22); 
 }} 
 processOpenTag(response, pageContext, "viewcontexttabs", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ViewContext",getObject("ViewContext")),
new TagParameter("SelectedTab",getObject("SelectedTab")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 27); 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("PageLocatorName"),null).equals(context.getFormattedValue(getObject("ViewContext:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "objectdetailspagingbar", new TagParameter[] {
new TagParameter("parametervalue6",getObject("PageLocatorName")),
new TagParameter("parametervalue5",getObject("SelectedMenuItem")),
new TagParameter("parametervalue4",getObject("SelectedTab")),
new TagParameter("currentobject",getObject("ViewContext")),
new TagParameter("parametervalue2",getObject("ContentRepository:UUID")),
new TagParameter("parametername2","ContentRepositoryUUID"),
new TagParameter("pagenumber",getObject("DetailsPageNumber")),
new TagParameter("nameforobjectuuid","ViewContextUUID"),
new TagParameter("pipeline","ViewViewContext-View"),
new TagParameter("parametername4","SelectedTab"),
new TagParameter("parametername5","SelectedMenuItem"),
new TagParameter("pagelocatorname",getObject("PageLocatorName")),
new TagParameter("parametername6","PageLocatorName")}, 36); 
 } else { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "52");} 
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