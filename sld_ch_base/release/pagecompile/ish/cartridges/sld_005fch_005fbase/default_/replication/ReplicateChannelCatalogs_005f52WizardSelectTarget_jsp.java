/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.replication;

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

public final class ReplicateChannelCatalogs_005f52WizardSelectTarget_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
      out.write('\n');
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ReplicateChannelCatalogs_52WizardSelectTarget.ReplicateCategories.text",null)))}, 4); 
      out.write("\n\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td class=\"table_title aldi\">");
 {out.write(localizeISText("ReplicateChannelCatalogs_52WizardSelectTarget.ReplicateCategories.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n\t</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t<tr>\n\t\t<td class=\"table_title_description w e s\">\n\t\t\t");
 {out.write(localizeISText("ReplicateChannelCatalogs_52WizardSelectTarget.Step1Of1SelectTargetSystemAndClickFinish.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t\t</td>\n\t</tr>\n</table>\n");
 URLPipelineAction action27 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Dispatch",null)))),null));String site27 = null;String serverGroup27 = null;String actionValue27 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Dispatch",null)))),null);if (site27 == null){  site27 = action27.getDomain();  if (site27 == null)  {      site27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup27 == null){  serverGroup27 = action27.getServerGroup();  if (serverGroup27 == null)  {      serverGroup27 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue27, site27, serverGroup27,true)); 
      out.write("\n\t<input type=\"hidden\" name=\"CatalogCategoryID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n\t\t<tr>\n\t\t\t<td>\n\t\t\t\t");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTargetListInc", null, "23");} 
      out.write("\n\t\t\t\t<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n\t\t\t\t\t<tr>\n\t\t\t\t\t\t<td align=\"right\">\n\t\t\t\t\t\t\t<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n\t\t\t\t\t\t\t\t<tr>\n\t\t\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateChannelCatalogs_52WizardSelectTarget.ReplicateSelectedCategories.input",null)),null));
      out.write("\"/>\n\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"PageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageableID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"confirmStaging\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateChannelCatalogs_52WizardSelectTarget.Finish.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t\t<td class=\"button\">\n\t\t\t\t\t\t\t\t\t\t<input type=\"hidden\" name=\"PageLocatorName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n\t\t\t\t\t\t\t\t\t\t<input type=\"submit\" name=\"cancelStaging\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateChannelCatalogs_52WizardSelectTarget.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n\t\t\t\t\t\t\t\t\t</td>\n\t\t\t\t\t\t\t\t</tr>\n\t\t\t\t\t\t\t</table>\n\t\t\t\t\t\t</td>\n\t\t\t\t\t</tr>\n\t\t\t\t</table>\n\t\t\t</td>\n\t\t</tr>\n\t</table>\n");
 out.print("</form>"); 
      out.write("\t\t\t\t");
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
