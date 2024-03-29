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

public final class ServerBrowserUploadPrompt_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {


    private static String getURIPath(final Object o) {
        final String isfileURI = String.valueOf(o);
        final String prefix = "isfile://";
        if (!isfileURI.startsWith(prefix)) {
            return isfileURI;
        }
        final int unitStart = isfileURI.indexOf('/', prefix.length());
        final int unitEnd = isfileURI.indexOf('/', unitStart + 1);
        final int localeEnd = isfileURI.indexOf('/', unitEnd + 1);
        if (unitStart == -1 || unitEnd == -1 || localeEnd == -1) {
            // No unit found.
            return isfileURI;
        } else {
            return isfileURI.substring(localeEnd + 1);
        }
    }

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
      out.write('\n');
      out.write("\n<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n<html>\n    <head>");
 insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); 
      out.write("\n        <title>");
 {out.write(localizeISText("ServerBrowserUploadPrompt.UploadFiles.title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</title>\n        <link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/css/ServerBrowser.css\">\n        <script type=\"text/javascript\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/tinymce/js/tinymce/tiny_mce_popup.js\"></script>\n\t\t");
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
 out.print("</waplacement>"); 
      out.write("\n\t\t<script type=\"text/javascript\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/js/jquery.js\"></script>\n\t\t<script type=\"text/javascript\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/js/jquery-migrate-1.2.1.js\"></script>\n        <script type=\"text/javascript\">\n\t\t$(function () {\n\t\t\tvar fieldsPanel = $('#uploadFileFields'),\n\t\t\t\tfieldId = 1;\n\n\t        function addField() {\n\t\t\t\tvar fields = $('#uploadFileFields'),\n\t\t\t\t\tname = 'file' + (fieldId++),\n\t\t\t\t\tblueprint = $('#blueprint-folder').clone();\n\t\t\t\t\n\t\t\t\tblueprint.removeAttr('id');\n\t\t\t\t// set name of the fields\n\t\t\t\tblueprint.children('label').attr('for', name);\n\t\t\t\tblueprint.children('input[type=\"file\"]').attr('name', name).attr('id', name).attr('class', 'dialog-fileinput');\n\n\t\t\t\t// add the blueprint to the form\n\t\t\t\tfields.append(blueprint);\n\t\t\t}\n\n\t\t\tfunction removeField(event) {\n\t\t\t\tevent.preventDefault();\n\t\t\t\t\n\t\t\t\t$(this).parent().remove();\n\n\t\t\t\t// only add a new field if there are no fields left\n\t\t\t\tif (fieldsPanel.children().length === 0) {\n\t\t\t\t\taddField();\n\t\t\t\t}\n\t\t\t}\n\n\t\t\t// listen to all change events\n\t\t\tfieldsPanel.on('change', 'input[type=\"file\"]', function() {\n\t\t\t\tif ($(this).parent().next().length == 0) {   // only if the last input field changed create an additional input field\n");
      out.write("\t\t\t\t\taddField();\n\t\t\t\t}\t\n\t\t\t});\n\n\t\t\t// listen to all remove buttons\n\t\t\tfieldsPanel.on('click', '.remove-btn', removeField);\n\n\t\t\t// add initial field\n\t\t\taddField();\n\n\t\t\t// focus fix for IE8\n\t\t\twindow.setTimeout(function () {\n\t\t\t\t$('input[type=\"file\"]:first').focus();\n\t\t\t}, 100);\n\t\t\twindow.setTimeout(function () {\n\t\t\t\t$('input[type=\"file\"]:first').focus();\n\t\t\t}, 500);\n\t\t});\n   \t\t</script>\n        ");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuard.isml", null, "81");} 
      out.write("\n    </head>\n    <body>\n\t\t");
 URLPipelineAction action206 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadSubmit",null)))),null));String site206 = null;String serverGroup206 = null;String actionValue206 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadSubmit",null)))),null);if (site206 == null){  site206 = action206.getDomain();  if (site206 == null)  {      site206 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup206 == null){  serverGroup206 = action206.getServerGroup();  if (serverGroup206 == null)  {      serverGroup206 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("POST");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-UploadSubmit",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("FileUploadForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue206, site206, serverGroup206,true)); 
      out.write("\n        \t<input type=\"hidden\" name=\"ContextURI\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {85}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n        \t<div class=\"server-dialog-content\">\n\t\t\t\t<div>\n\t            \t<label>");
 {out.write(localizeISText("ServerBrowserUploadPrompt.UploadTo",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(": </label>\n\t            \t<span class=\"label_output\">");
      out.print(stringToHtml(getURIPath(getObject("ContextURI"))));
      out.write("</span>\n\t            </div>\n\t            <div id=\"uploadFileFields\"></div>\t           \n\t        </div>\n            <div id=\"uploadFormControls\" class=\"bottom_panel\">\n                <input id=\"submit\" type=\"submit\" class=\"button dialog-button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.Upload.button",null)),null));
      out.write("\"/>\n                <input type=\"reset\" class=\"button dialog-button secondary-button\" onclick=\"tinyMCEPopup.close();\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.Cancel.button",null)),null));
      out.write("\">\n            </div>\n        ");
 out.print("</form>"); 
      out.write("\n        <script type=\"text/javascript\">\n\t\t\tCSRFGuard.injectTokens(document['FileUploadForm']);\n\t   \t</script>\n        <div id=\"blueprint\" style=\"display: none;\">\n            <div id=\"blueprint-folder\">\n                <label>");
 {out.write(localizeISText("ServerBrowserUploadPrompt.SelectFile.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":</label>\n                <input type=\"file\" size=\"40\"/>\n                <input type=\"reset\" class=\"button remove-btn\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.Delete.button",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ServerBrowserUploadPrompt.DoNotUploadThisFile.button",null)),null));
      out.write("\">\n            </div>\n        </div>\n    </body>\n</html>\n");
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
