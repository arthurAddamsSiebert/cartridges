/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:28:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fbo_005fdashboard.default_.dashboard;

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
import com.intershop.component.dashboard.capi.WidgetBO;
import com.intershop.sellside.enterprise.dashboard.internal.WidgetTypeUtil;
import com.intershop.application.backoffice.dashboard.internal.WidgetBOUtil;

public final class WidgetConfigurationDialog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"webcontrols/Modules", null, "2");} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SavedConfiguration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
      out.write("<script type=\"text/javascript\">");

		WidgetBO widgetBO = (WidgetBO)getObject("WidgetBO");
		
		// displayName of the widget
		getPipelineDictionary().put("WidgetDisplayName", WidgetBOUtil.getDisplayName(widgetBO));
		
		// url of the widget
		String url = WidgetTypeUtil.getURL(widgetBO);
		if (null != url)
		{
			getPipelineDictionary().put("WidgetTypeURL", url);
			
      out.write("\nwindow.$parentDocument.trigger('refreshwidget.dashboard', ['");
 {String value = null;try{value=context.getFormattedValue(getObject("WidgetBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("', '");
 {String value = null;try{value=context.getFormattedValue(getObject("WidgetDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("', '");
 {String value = null;try{value=context.getFormattedValue(getObject("WidgetTypeURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("']);\n");

		}
		else
		{
			
      out.write("\nwindow.$parentDocument.trigger('refreshwidget.dashboard', ['");
 {String value = null;try{value=context.getFormattedValue(getObject("WidgetBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("', '");
 {String value = null;try{value=context.getFormattedValue(getObject("WidgetDisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("']);\n");

		}
		
      out.write("\n$dialog.dialog('close');\n</script>");
 } else { 
 URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-SaveWidgetConfiguration",null)))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-SaveWidgetConfiguration",null)))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDashboard-SaveWidgetConfiguration",null)))),null));out.print("\"");out.print(" name=\"");out.print("updateWidgetConfiguration");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); 
      out.write("<input type=\"hidden\" name=\"DashboardID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DashboardID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"hidden\" name=\"WidgetID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WidgetID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<div class=\"dialog-content\">");
 processOpenTag(response, pageContext, "propertyeditor", new TagParameter[] {
new TagParameter("owner",getObject("WidgetBO")),
new TagParameter("stylesheet","propertygroups_bo.css"),
new TagParameter("hidetitle","true"),
new TagParameter("validationresult",getObject("ValidatedPropertyGroupConfiguration:get(DisplayNamePropertyGroup)")),
new TagParameter("propertydescriptor",getObject("DisplayNamePropertyGroup"))}, 37); 
 while (loop("WidgetBO:WidgetType:ConfigurationParameters","propertyGroup",null)) { 
 processOpenTag(response, pageContext, "propertyeditor", new TagParameter[] {
new TagParameter("owner",getObject("WidgetBO")),
new TagParameter("stylesheet","propertygroups_bo.css"),
new TagParameter("hidetitle","false"),
new TagParameter("validationresult",getObject("ValidatedPropertyGroupConfiguration:get(propertyGroup)")),
new TagParameter("propertydescriptor",getObject("propertyGroup"))}, 45); 
 } 
      out.write("</div>\n<div class=\"dialog-buttons\">\n<input type=\"submit\" class=\"button\" name=\"ok\" value=\"");
 {out.write(localizeISText("widget.dialog.configuration.button.ok","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" />\n<input type=\"button\" class=\"button\" name=\"cancel\" value=\"");
 {out.write(localizeISText("widget.dialog.configuration.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" data-action=\"dialog-close\" />\n</div>");
 out.print("</form>"); 
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
