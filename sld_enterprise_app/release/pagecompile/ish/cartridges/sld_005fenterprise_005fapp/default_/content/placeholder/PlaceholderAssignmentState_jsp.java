/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.placeholder;

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

public final class PlaceholderAssignmentState_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "pageletplaceholderdefinitionutil", new TagParameter[] {
new TagParameter("PageletPlaceholderDefinitionUtil","DefinitionUtil")}, 4); 
 {Object temp_obj = (getObject("PageletPlaceholder:TargetPlaceholderDefinition")); getPipelineDictionary().put("PlaceholderDefinition", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Pagelet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletPlaceholder:SourcePlaceholderDefinitionPO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null)).addURLParameter(context.getFormattedValue("PageletPlaceholderUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 8); 
      out.write("</a> ");
 {out.write(localizeISText("PlaceholderAssignmentState.AssignedTo.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PageletPlaceholder:SourcePlaceholderDefinitionPO"))}, 8); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("DefinitionUtil:AnAvailableMappingTarget(PageletPlaceholder)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null)).addURLParameter(context.getFormattedValue("PageletPlaceholderUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 10); 
      out.write("</a> ");
 {out.write(localizeISText("PlaceholderAssignmentState.NotAssigned.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null)).addURLParameter(context.getFormattedValue("PageletPlaceholderUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PlaceholderDefinition"))}, 12); 
      out.write("</a>");
 }} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletPlaceholder:SourcePlaceholderDefinitionPO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null)).addURLParameter(context.getFormattedValue("PageletPlaceholderUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 processOpenTag(response, pageContext, "pageletplaceholderinheritancepath", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholder",getObject("PageletPlaceholder"))}, 16); 
      out.write("</a> ");
 {out.write(localizeISText("PlaceholderAssignmentState.AssignedTo.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 processOpenTag(response, pageContext, "pageletplaceholderdefinitiondisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholderDefinition",getObject("PageletPlaceholder:SourcePlaceholderDefinitionPO"))}, 16); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("DefinitionUtil:AnAvailableMappingTarget(PageletPlaceholder)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null)).addURLParameter(context.getFormattedValue("PageletPlaceholderUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 processOpenTag(response, pageContext, "pageletplaceholderinheritancepath", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholder",getObject("PageletPlaceholder"))}, 18); 
      out.write("</a> ");
 {out.write(localizeISText("PlaceholderAssignmentState.NotAssigned.link1",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPlaceholderDefinition-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("PlaceholderDefinitionUUID",null),context.getFormattedValue(getObject("PlaceholderDefinition:UUID"),null)).addURLParameter(context.getFormattedValue("PageletPlaceholderUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 processOpenTag(response, pageContext, "pageletplaceholderinheritancepath", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletPlaceholder",getObject("PageletPlaceholder"))}, 20); 
      out.write("</a>");
 }} 
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
