/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content.inc;

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

public final class ContentEntryPointPageletAssignmentProperties_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("<!-- TEMPLATENAME: ContentEntryPointPageletAssignmentProperties.isml -->\n");
 
setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} 
 {Object temp_obj = (getObject("targetpageletviewpipelineparams:ContextObject")); getPipelineDictionary().put("ContextObject", temp_obj);} 
 {Object temp_obj = (getObject("targetpageletviewpipelineparams:ContextObjectName")); getPipelineDictionary().put("ContextObjectName", temp_obj);} 
 processOpenTag(response, pageContext, "contextobjecttype", new TagParameter[] {
new TagParameter("ContextObjectType","ContextObjectType"),
new TagParameter("ContextObject",getObject("ContextObject"))}, 7); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextObjectType"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ContextObject:DisplayName")); getPipelineDictionary().put("ContextObjectName", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ContentEntryPointPageletAssignmentProperties.UseTheCheckboxesAndClickAssignToAddThePageVariants",null))); getPipelineDictionary().put("ContextObjectDescriptionText", temp_obj);} 
 } else { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ContentEntryPointPageletAssignmentProperties.UseTheCheckboxesAndClickAssignToAddTheComponentsTo",null))); getPipelineDictionary().put("ContextObjectDescriptionText", temp_obj);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextObjectType"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ContextObject:Name")); getPipelineDictionary().put("ContextObjectName", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ContentEntryPointPageletAssignmentProperties.UseTheCheckboxesAndClickAssignToAddThePageVariants1",null))); getPipelineDictionary().put("ContextObjectDescriptionText", temp_obj);} 
 } else { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ContentEntryPointPageletAssignmentProperties.UseTheCheckboxesAndClickAssignToAddTheComponentsTo1",null))); getPipelineDictionary().put("ContextObjectDescriptionText", temp_obj);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ContextObjectType"),null).equals(context.getFormattedValue("pageletentrypoint",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("ContextObject:Id")); getPipelineDictionary().put("ContextObjectName", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ContentEntryPointPageletAssignmentProperties.UseTheCheckboxesAndClickAssignToAddThePageVariants2",null))); getPipelineDictionary().put("ContextObjectDescriptionText", temp_obj);} 
 } else { 
 {Object temp_obj = (localizeText(context.getFormattedValue("ContentEntryPointPageletAssignmentProperties.UseTheCheckboxesAndClickAssignToAddTheComponentsTo2",null))); getPipelineDictionary().put("ContextObjectDescriptionText", temp_obj);} 
 } 
 }}} 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key0","ContextObjectUUID"),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("value0",getObject("ContextObject:UUID")),
new TagParameter("mapname","PrepareExtendedHeadingParams")}, 31); 
 {try{executePipeline("ViewContentEntryPointPageletAssignments-PrepareExtendedHeading",((java.util.Map)(getObject("PrepareExtendedHeadingParams"))),"ExtendedHeadingValues");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 34.",e);}} 
 processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("ExtendedHeadingValues:ExtendedHeadingFormValuesMap"))}, 36); 
 {Object temp_obj = (getObject("ExtendedHeadingValues:WorkingContextTime")); getPipelineDictionary().put("WorkingContextTime", temp_obj);} 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td width=\"100%\" class=\"table_title aldi\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("ContextObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.AssignPageVariant.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("ContextObjectName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
      out.write('-');
      out.write(' ');
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.AssignComponent.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>\n<!-- Error Handling -->");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoValidPageSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\" class=\"error_box w e s\">\n<tr>\n<td class=\"error_icon middle e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"error middle\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.YouHaveNotSelectedAPageVariantToBeAssignedUseTheCh.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.YouHaveNotSelectedAComponentToBeAssignedUseTheChec.error",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>\n</table>");
 } 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/PageletAssignmentPropertiesErrors", null, "60");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchTitleAndErrors", null, "61");} 
      out.write("<!-- EO Error Handling -->\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ContentRepository:TypeCode")).doubleValue() !=((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.TheListShowsAllPageVariantsOfTheChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.TheListShowsAllComponentsOfTheChannel.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("ContextObjectDescriptionText"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("targetpageletviewpipelineparams:IsPage"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { 
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.TheListShowsAllPageVariantsOfTheOrganization.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ContentEntryPointPageletAssignmentProperties.TheListShowsAllComponentsOfTheOrganization.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("ContextObjectDescriptionText"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write("</td>\n</tr>\n</table>");
 processOpenTag(response, pageContext, "pageletassignmentproperties", new TagParameter[] {
new TagParameter("DatePatternLocale",getObject("locale")),
new TagParameter("AssignToObjectName",getObject("ContextObjectName")),
new TagParameter("IsPage",getObject("targetpageletviewpipelineparams:IsPage")),
new TagParameter("ShowHeading","true"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("AssignToObject",getObject("ContextObject"))}, 86); 
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
