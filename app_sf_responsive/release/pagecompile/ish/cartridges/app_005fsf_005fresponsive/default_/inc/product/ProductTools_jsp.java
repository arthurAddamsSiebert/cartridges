/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.inc.product;

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

public final class ProductTools_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
 
response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); 
 {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} 
 {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/captcha/Modules", null, "5");} 
      out.write("<div class=\"row product-details-top-line\">\n<div class=\"col-md-12 pull-right\">");
 processOpenTag(response, pageContext, "productrating", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("SimpleRatingView","false")}, 9); 
      out.write("<ul class=\"share-tools pull-right\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ProductBO:isEndOfLife"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {try{executePipeline("DetermineRepositories-Channel",java.util.Collections.emptyMap(),"RepositoriesDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 17.",e);}} 
 {Object temp_obj = (getObject("RepositoriesDictionary:Repository:DisplayName")); getPipelineDictionary().put("ChannelName", temp_obj);} 
 {Object temp_obj = (replace(context.getFormattedValue(encodeString(context.getFormattedValue(localizeTextEx(context.getFormattedValue("email.recommended_product.heading",null),new ParameterList().addParameter(getObject("ChannelName"))),null),(String)("url")),null),(String)("\\+"),(String)("%20"))); getPipelineDictionary().put("EmailAFriendSubject", temp_obj);} 
 processOpenTag(response, pageContext, "setcanonicallink", new TagParameter[] {
new TagParameter("scope","request"),
new TagParameter("name","CurrentProductURL"),
new TagParameter("action","ViewProduct-Start"),
new TagParameter("parameters",new ParameterList().addParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))}, 20); 
 {Object temp_obj = (replace(context.getFormattedValue(encodeString(context.getFormattedValue(localizeTextEx(context.getFormattedValue("email.recommended_product.text",null),new ParameterList().addParameter(getObject("ProductBO:DisplayName")).addParameter(getObject("CurrentProductURL"))),null),(String)("url")),null),(String)("\\+"),(String)("%20"))); getPipelineDictionary().put("EmailAFriendBody", temp_obj);} 
      out.write("<li>\n<a href=\"mailto:?subject=");
      out.print(context.getFormattedValue(getObject("EmailAFriendSubject"),null));
      out.write("&body=");
      out.print(context.getFormattedValue(getObject("EmailAFriendBody"),null));
      out.write("\">\n<span class=\"glyphicon glyphicon-send\"></span>\n<span class=\"share-label\">");
 {out.write(localizeISText("product.email_a_friend.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>\n</li>");
 } 
      out.write("<li class=\"hidden-xs\">\n<a class=\"link-print\" href=\"javascript:window.print();\" rel=\"nofollow\">\n<span class=\"glyphicon glyphicon-print\"></span>\n<span class=\"share-label\">");
 {out.write(localizeISText("product.print_page.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</span>\n</a>\n</li>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("ProductBO:ProductMaster"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write("<li>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) getObject("ProductBO:isRetailSet")).booleanValue() && ((Boolean) (hasLoopElements("ProductBO:BundleInformationBO:BundledProductBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "addtowishlist", new TagParameter[] {
new TagParameter("DisplayType","share-tool"),
new TagParameter("DataAttributes",context.getFormattedValue("data-dialog-form=retailSetForm_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null)),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("class","btn-link btn-tool")}, 43); 
 } else { 
 processOpenTag(response, pageContext, "addtowishlist", new TagParameter[] {
new TagParameter("DisplayType","share-tool"),
new TagParameter("DataAttributes",context.getFormattedValue("data-dialog-form=productDetailForm_",null) + context.getFormattedValue(getObject("ProductBO:SKU"),null)),
new TagParameter("Currency",getObject("CurrentRequest:Currency")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("class","btn-link btn-tool")}, 50); 
 } 
      out.write("</li> \n<li class=\"hidden-xs\">");
 processOpenTag(response, pageContext, "addtoproductcompare", new TagParameter[] {
new TagParameter("DisplayType","share-tool"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 59); 
      out.write("</li>");
 } 
      out.write(" \n</ul>\n</div>\n</div>");
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
