/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive_005fcm.default_.component.common;

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

public final class Collection_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} 
 processOpenTag(response, pageContext, "slotiterator", new TagParameter[] {
new TagParameter("Slot",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("AssignmentsAlias","CollectionPageletAssignments")}, 4); 
 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CollectionPageletAssignments") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("PageletConfigurationParameters:CollectionType"),null).equals(context.getFormattedValue("accordion",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","CollectionID")}, 10); 
 {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("RenderedInCollection", temp_obj);} 
 {Object temp_obj = (getObject("PageletConfigurationParameters:ActiveElementID")); getPipelineDictionary().put("ActiveElementID", temp_obj);} 
      out.write("<div class=\"collection accordion panel-group ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:CSSClass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\" id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" role=\"tablist\" aria-multiselectable=\"true\">");
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.collection.items.pagelet2-Slot")}, 15); 
      out.write("</div>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("PageletConfigurationParameters:CollectionType"),null).equals(context.getFormattedValue("tabset",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","RenderEntityID")}, 21); 
 processOpenTag(response, pageContext, "renderentityrenderingstart", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 22); 
      out.write("<div class=\"collection tabset ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:CSSClass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\">\n<ul class=\"nav nav-tabs\" role=\"tablist\">");
 while (loop("CollectionPageletAssignments","CollectionPageletAssignment",null)) { 
      out.write("<li role=\"presentation\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null).equals(context.getFormattedValue(getObject("PageletConfigurationParameters:ActiveElementID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("class=\"active\"");
 } 
      out.write("> \n<a href=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" aria-controls=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" role=\"tab\" data-toggle=\"tab\">");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionPageletAssignment:From:ConfigurationParametersAsMap:Title:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</li>");
 } 
      out.write("</ul>\n<div class=\"tab-content\">");
 processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("ComponentHierarchyKey",getObject("ComponentHierarchyKey")),
new TagParameter("Slot",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 34); 
 while (loop("CollectionPageletAssignments","CollectionPageletAssignment",null)) { 
 processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("CollectionPageletAssignment")),
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 36); 
      out.write("<div id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" role=\"tabpanel\" class=\"tab-pane ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null).equals(context.getFormattedValue(getObject("PageletConfigurationParameters:ActiveElementID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
      out.write("active");
 } 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "pageletassignment", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("CollectionPageletAssignment"))}, 38); 
      out.write("</div>");
 } 
 processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 41); 
      out.write("</div>\n</div>");
 processOpenTag(response, pageContext, "renderentityrenderingend", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 44); 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletConfigurationParameters:CollectionType"),null).equals(context.getFormattedValue("toclist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","RenderEntityID")}, 48); 
 processOpenTag(response, pageContext, "renderentityrenderingstart", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 49); 
      out.write("<div class=\"toclist ");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:CSSClass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("\">\n<a class=\"link-anker\" name=\"top\"></a>\n<ul class=\"collection\">");
 while (loop("CollectionPageletAssignments","CollectionPageletAssignment",null)) { 
      out.write("<li>\n<a href=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionPageletAssignment:From:ConfigurationParametersAsMap:Title:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>\n</li>");
 } 
      out.write("</ul>");
 processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("ComponentHierarchyKey",getObject("ComponentHierarchyKey")),
new TagParameter("Slot",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 61); 
 while (loop("CollectionPageletAssignments","CollectionPageletAssignment",null)) { 
 processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("CollectionPageletAssignment")),
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 63); 
      out.write("<div class=\"toclist-entry\" data-entry-id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<a class=\"link-anker\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("CollectionPageletAssignment:From:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"></a>\n<div class=\"toclist-content\">");
 processOpenTag(response, pageContext, "pageletassignment", new TagParameter[] {
new TagParameter("PageletAssignment",getObject("CollectionPageletAssignment"))}, 67); 
      out.write("</div>\n<p><a href=\"");
      out.print(context.getFormattedValue("#",null));
      out.write("top\">");
 {out.write(localizeISText("helpdesk.faq.back2top","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a></p>\n</div>");
 } 
 processOpenTag(response, pageContext, "createplaceholderrenderevents", new TagParameter[] {
new TagParameter("RenderContextID",getObject("RenderEntityID"))}, 72); 
      out.write("</div>");
 processOpenTag(response, pageContext, "renderentityrenderingend", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("Pagelet:SubSlot(\"app_sf_responsive_cm:slot.collection.items.pagelet2-Slot\")")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 74); 
 } else { 
      out.write("<div class=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageletConfigurationParameters:CSSClass"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("PageletConfigurationParameters:CSSClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write('>');
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.collection.items.pagelet2-Slot")}, 79); 
      out.write("</div>");
 }}} 
 } else { 
 processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.collection.items.pagelet2-Slot")}, 85); 
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
