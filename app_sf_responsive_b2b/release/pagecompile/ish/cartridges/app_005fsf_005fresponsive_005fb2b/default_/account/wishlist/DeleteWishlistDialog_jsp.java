/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fb2b.default_.account.wishlist;

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

public final class DeleteWishlistDialog_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.TRUE; } 
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
      out.write("<div class=\"modal-dialog\">\n<div class=\"modal-content\">\n<div class=\"modal-header\">\n<button type=\"button\" class=\"close\" data-dismiss=\"modal\" title=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\" aria-label=\"");
 {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("\"><span aria-hidden=\"true\">&times;</span></button>\n<h2 class=\"modal-title\">");
 {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.header","",null,getObject("WishlistBO:Name"),null,null,null,null,null,null,null,null,null));} 
      out.write("</h2>\n</div>");
 URLPipelineAction action17 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null));String site17 = null;String serverGroup17 = null;String actionValue17 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null);if (site17 == null){  site17 = action17.getDomain();  if (site17 == null)  {      site17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup17 == null){  serverGroup17 = action17.getServerGroup();  if (serverGroup17 == null)  {      serverGroup17 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewWishlist-DeleteWishlist",null)))),null));out.print("\"");out.print(" data-hijax=\"");out.print("true");out.print("\"");out.print(" class=\"");out.print("form-horizontal");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue17, site17, serverGroup17,true)); 
      out.write("<div class=\"modal-body\">\n<div class=\"form-group\">\n<div class=\"col-xs-12\">\n<p>");
 {out.write(localizeISText("account.order_template.delete.do_you_really.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</p>\n<input type=\"hidden\" name=\"WishlistID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("WishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Wishlists:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) getObject("WishlistBO:WishlistItemBOsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write("<fieldset>\n<div class=\"checkbox\">\n<label for=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<input type=\"checkbox\" value=\"true\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" \nid=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:MoveItemsBeforeDeletion:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" data-toggle=\"collapse\" data-target=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("targetWishlistSection\"/>");
 {out.write(localizeISText("account.order_template.delete.move_products.label","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label>\n</div>\n</fieldset>\n<div id=\"targetWishlistSection\" class=\"collapse row col-xs-6\">\n<select class=\"form-control\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("DeleteWishlistForm:TargetWishlistID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write(' ');
      out.write('>');
 while (loop("Wishlists","CurrentWishlistBO",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("WishlistBO:ID"),null).equals(context.getFormattedValue(getObject("CurrentWishlistBO:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("<option value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentWishlistBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("CurrentWishlistBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</option>");
 } 
 } 
      out.write("</select>\n</div>");
 } 
      out.write("</div>\n</div>\n</div>\n<div class=\"modal-footer\">\n<button class=\"btn btn-primary\" type=\"submit\" name=\"DeleteWishlist\">");
 {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.delete_button.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\" name=\"cancel\">");
 {out.write(localizeISText("account.wishlists.delete_wishlist_dialog.cancel_button.text","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</button>\n</div>");
 out.print("</form>"); 
      out.write("</div>\n</div>");
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
