/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.product.link;

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

public final class IncomingProductLinkCategoryList_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 URLPipelineAction action72 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null));String site72 = null;String serverGroup72 = null;String actionValue72 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null);if (site72 == null){  site72 = action72.getDomain();  if (site72 == null)  {      site72 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup72 == null){  serverGroup72 = action72.getServerGroup();  if (serverGroup72 == null)  {      serverGroup72 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductLinks-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print(context.getFormattedValue(context.getFormattedValue(getObject("IncomingCategoryLinksPageableName"),null) + context.getFormattedValue("_Form",null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue72, site72, serverGroup72,true)); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ChannelID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { 
      out.write("<input type=\"hidden\" name=\"ChannelID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ChannelID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 } 
      out.write("<input type=\"hidden\" name=\"ProductUUID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"ProductID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Product:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"hidden\" name=\"VarSortAttribute\" value=\"position\" />\n<input type=\"hidden\" name=\"HideClassificationCatalogs\" value=\"true\" />\n<input type=\"hidden\" name=\"LinkDirection\" value=\"Incoming\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkType")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("LinkTypeName")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue(getObject("LinkTypeName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedLinkType"),null).equals(context.getFormattedValue((getObject("LinkTypeName")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("confirmIncomingCategoryLinksDelete"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UUIDIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnassignSharedLinksDetected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {Object temp_obj = ("Are you sure that you want to remove these links? <br> Shared links will not be removed!"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} 
 } else { 
 {Object temp_obj = ("Are you sure that you want to remove these links?"); getPipelineDictionary().put("CategoryLinksMessage", temp_obj);} 
 } 
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","Conditions"),
new TagParameter("okbtnname","deleteIncomingCategoryLinks"),
new TagParameter("type","mda"),
new TagParameter("message",getObject("CategoryLinksMessage"))}, 28); 
 } else { 
      out.write("<!-- delete confirmation if nothing is selected-->");
 processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","category link"),
new TagParameter("type","mdea")}, 31); 
 } 
 } 
      out.write("</table>");
 } 
 {Object temp_obj = ("disabled='disabled'"); getPipelineDictionary().put("DisabledParameter", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 {Object temp_obj = (""); getPipelineDictionary().put("DisabledParameter", temp_obj);} 
 } 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" class=\"w e s\">\n<tr>\n<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"SelectedLinkType\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("LinkTypeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"incomingCategoryLinkTypeSelected\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Assign.button",null)),null));
      out.write("\" class=\"button\" ");
 {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("/>\n</td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IncomingCategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"submit\" name=\"confirmIncomingCategoryLinksDelete\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Unassign.button",null)),null));
      out.write("\" class=\"button\" ");
 {String value = null;try{value=context.getFormattedValue(getObject("DisabledParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(" />\n</td>");
 } 
      out.write("</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("IncomingCategoryLinksList") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Clipboard"),
new TagParameter("value6",getObject("ChannelID")),
new TagParameter("key2","LinkDirection"),
new TagParameter("value5",getObject("Product")),
new TagParameter("value8",getObject("SelectedLinkTypePC")),
new TagParameter("key0","Application"),
new TagParameter("value7",getObject("SelectedMenuItem")),
new TagParameter("value2","Incoming"),
new TagParameter("key5","Product"),
new TagParameter("value1",getObject("Clipboard")),
new TagParameter("key6","ChannelID"),
new TagParameter("key3","PermissionMap"),
new TagParameter("value4",getObject("DisabledParameter")),
new TagParameter("value3",getObject("PermissionMap")),
new TagParameter("key4","DisabledParameter"),
new TagParameter("key7","SelectedMenuItem"),
new TagParameter("key8","SelectedLinkTypePC"),
new TagParameter("mapname","params"),
new TagParameter("value0",getObject("CurrentApplication"))}, 70); 
 processOpenTag(response, pageContext, "grid", new TagParameter[] {
new TagParameter("currentapplication",getObject("CurrentApplication")),
new TagParameter("columnstemplate","product/link/ProductLinkCategoryListGridColumns.isml"),
new TagParameter("configuration","productlinks"),
new TagParameter("datatemplate","product/link/ProductLinkCategoryListGridData.isml"),
new TagParameter("pagesizeprefix",context.getFormattedValue(getObject("IncomingCategoryLinksPageableName"),null) + context.getFormattedValue("_PageSize",null)),
new TagParameter("pageable",getObject("IncomingCategoryLinksList")),
new TagParameter("id",getObject("IncomingCategoryLinksPageableName")),
new TagParameter("pageablename",getObject("IncomingCategoryLinksPageableName")),
new TagParameter("pagenumberprefix",context.getFormattedValue(getObject("IncomingCategoryLinksPageableName"),null) + context.getFormattedValue("_PageNumber",null)),
new TagParameter("params",getObject("params"))}, 81); 
 } else { 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n<tr>\n<td class=\"table_detail w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedLinkTypePC")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectedLinkTypePC"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.ThisProductDoesNotContainAnyCategoryLinksOfTheSele.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } else { 
 {out.write(localizeISText("sld_enterprise_app.ThisProductDoesNotContainAnyCategoryLinks.table_detail","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("<br/>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
 {out.write(localizeISText("sld_enterprise_app.ClickAssignToCreateANewCategoryLink.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
      out.write("</td>\n</tr>\n</table>");
 out.print("</form>"); 
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