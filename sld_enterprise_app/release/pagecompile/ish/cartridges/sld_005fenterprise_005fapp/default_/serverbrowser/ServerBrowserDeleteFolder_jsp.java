/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.serverbrowser;

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

public final class ServerBrowserDeleteFolder_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n<?is-template class=\"");
      out.print(getClass().getName());
      out.write("\" credits=\"Copyright (C) 2008 Intershop Communications AG, all rights reserved.\"?>\n<html>\n    <head>");
 insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); 
      out.write("\n        <title>");
 {out.write(localizeISText("ServerBrowserDeleteFolder.DeleteFolder.title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n        <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser.css\">\n        <script type=\"text/javascript\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/tinymce/js/tinymce/tiny_mce_popup.js\"></script>\n        ");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuard.isml", null, "8");} 
      out.write("\n    </head>\n    <body>\n        ");
 URLPipelineAction action207 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteSubmit",null)))),null));String site207 = null;String serverGroup207 = null;String actionValue207 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteSubmit",null)))),null);if (site207 == null){  site207 = action207.getDomain();  if (site207 == null)  {      site207 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup207 == null){  serverGroup207 = action207.getServerGroup();  if (serverGroup207 == null)  {      serverGroup207 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-DeleteSubmit",null)))),null));out.print("\"");out.print(" name=\"");out.print("DeleteFolderForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue207, site207, serverGroup207,true)); 
      out.write("\n            <div class=\"server-dialog-content\">  \n\t            <div class=\"label_output\">\n\t                ");
 {out.write(localizeISText("ServerBrowserDeleteFolder.AreYouSureThatYouWantToDelete0AllImagesAndSubFolde",null,null,encodeString(context.getFormattedValue(getObject("OldName"),null)),null,null,null,null,null,null,null,null,null));} 
      out.write("\n\t            </div>\n            </div>\n            <div class=\"bottom_panel\">\n                <input type=\"hidden\" name=\"ContextURI\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n                <input id=\"submit\" type=\"submit\" class=\"button dialog-button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserDeleteFolder.Delete.button",null)),null));
      out.write("\"/>\n                <input type=\"reset\" class=\"button dialog-button secondary-button\" onclick=\"tinyMCEPopup.close();\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserDeleteFolder.Cancel.button",null)),null));
      out.write("\">\n            </div>\n        ");
 out.print("</form>"); 
      out.write("\n        <script type=\"text/javascript\">\n   \t\t\tCSRFGuard.injectTokens(document['DeleteFolderForm']);\n   \t\t</script>\n    </body>\n</html>\n");
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
