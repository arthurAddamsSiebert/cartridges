/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.content;

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

public final class ConfigurationParameters_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 {Object temp_obj = ("false"); getPipelineDictionary().put("isSomethingVisible", temp_obj);} 
 while (loop("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions","cPD",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("cPD:Visible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("isSomethingVisible", temp_obj);} 
 if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",4);}else{getLoopStack().pop();break;} 
 } 
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("isSomethingVisible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "7");} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "8");} 
 processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 9); 
 processOpenTag(response, pageContext, "uidefinitionutils", new TagParameter[] {
new TagParameter("UIDefinitionUtils","UIDefinitionUtils")}, 10); 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 11); 
 processOpenTag(response, pageContext, "configurationparameterctnreditable", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ConfigurationParameterCtnr")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap",getObject("PermissionMap")),
new TagParameter("Result","IsPageletEditable")}, 12); 
      out.write(' ');
      out.write('\n');
 {Object temp_obj = (replace(context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null),(String)("\\."),(String)("-"))); getPipelineDictionary().put("ContainerIDSuffix", temp_obj);} 
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/js/parameter.js\"></script>");
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value1","PageletParameters_Open"),
new TagParameter("value0",context.getFormattedValue(getObject("TargetPipeline_PageletUUID"),null) + context.getFormattedValue("_DisplayOptions",null)),
new TagParameter("mapname","DisplayOptionParameters")}, 17); 
 {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(getObject("DisplayOptionParameters"))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 20.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("DisplayOption:Value")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} 
 } else { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} 
 } 
 URLPipelineAction action460 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameters-Dispatch",null)))),null));String site460 = null;String serverGroup460 = null;String actionValue460 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameters-Dispatch",null)))),null);if (site460 == null){  site460 = action460.getDomain();  if (site460 == null)  {      site460 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup460 == null){  serverGroup460 = action460.getServerGroup();  if (serverGroup460 == null)  {      serverGroup460 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewConfigurationParameters-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ConfigParametersForm");out.print("\"");out.print(" onsubmit=\"");out.print("selectOptionsForSubmit()");out.print("\"");out.print(" id=\"");out.print(context.getFormattedValue(context.getFormattedValue("cpo-form-",null) + context.getFormattedValue(getObject("ContainerIDSuffix"),null),null));out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue460, site460, serverGroup460,true)); 
      out.write("<!-- Configuration Parameter List -->");
 {Object temp_obj = (context.getFormattedValue("WebForm_",null) + context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null)); getPipelineDictionary().put("WebFormKey", temp_obj);} 
 {Object temp_obj = (getObject("CurrentSession:Object(WebFormKey)")); getPipelineDictionary().put("ConfigurationParameterWebForm", temp_obj);} 
      out.write("<input type=\"hidden\" name=\"PageLocatorName\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("PageLocatorName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("CollapsibleFrame"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("CollapsibleFrame"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
 {Object temp_obj = ("false"); getPipelineDictionary().put("CollapsibleFrame", temp_obj);} 
      out.write(' ');
      out.write('\n');
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CollapsibleFrame"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "pipelinecallutils", new TagParameter[] {
new TagParameter("Utils","URLUtils")}, 40); 
      out.write(' ');
      out.write('\n');
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("key2","DisplayOptionValue"),
new TagParameter("value5","true"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value2",(((Boolean) ((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("key5","ContextPipeline_removeLastBreadCrumb"),
new TagParameter("value1","PageletParameters_Open"),
new TagParameter("key3","ContextPipeline"),
new TagParameter("value4",getObject("TargetPipelineMap")),
new TagParameter("value3",getObject("TargetPipelineMap:TargetPipeline")),
new TagParameter("key4","ContextPipeline_"),
new TagParameter("mapname","URLParameters"),
new TagParameter("value0",context.getFormattedValue(getObject("TargetPipeline_PageletUUID"),null) + context.getFormattedValue("_DisplayOptions",null))}, 41); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" class=\"aldi\">\n<tr>\n<td class=\"table_title2\" nowrap=\"nowrap\" colspan=\"2\">\n<a href=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("URLUtils:URLFromMap(\"ViewDisplayOptions-SetDisplayOption\",URLParameters)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";out.write(value);} 
      out.write("\" \nclass=\"");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { 
 {out.write(localizeISText("ConfigurationParameters.Table_opened.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ConfigurationParameters.Table_closed.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write('"');
      out.write('>');
 {out.write(localizeISText("ConfigurationParameters.Parameters.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" \n</a>\n</td>\n</tr> \n</table> \n");
 processOpenTag(response, pageContext, "configurationparametererrors", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ConfigurationParameterCtnr")),
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Class","error_box w e s")}, 59); 
      out.write(' ');
      out.write('\n');
 } 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "uiscripthandlers", new TagParameter[] {
new TagParameter("ConfigurationParameterCtnr",getObject("ConfigurationParameterCtnr")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 67); 
      out.write(" \n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e hover-table ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentPagelet"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
      out.write('s');
 } 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("Class"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CollapsibleFrame"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
      out.write(" \n<tr><td colspan=\"4\"><img width=\"1\" height=\"4\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td></tr> \n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/inc/UIScriptMessage", null, "73");} 
      out.write(' ');
      out.write('\n');
 } 
 while (loop("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions","ConfigurationParameterDefinition",null)) { 
      out.write(' ');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/ConfigurationParameterUIRow", null, "76");} 
      out.write(' ');
      out.write('\n');
 } 
      out.write(" \n<tr><td colspan=\"4\"><img width=\"1\" height=\"4\" border=\"0\" alt=\"\" src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\"/></td></tr> \n</table> \n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s sfe-hidden ");
 {String value = null;try{value=context.getFormattedValue(getObject("Class"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\">\n<tr>\n<td colspan=\"4\" align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr class=\"cpo-non-revert-buttons\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("<td class=\"button\">\n<input type=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameters.RevertToInheritedValues.button",null)),null));
      out.write("\" class=\"button cpo-action-start-revert");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write(" cpo-disabled");
 } 
      out.write("\" id=\"sfe-start-revert-");
 {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td> \n");
 } 
      out.write(" \n<td class=\"button\">\n<input name=\"LocaleId\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input name=\"ConfigurationParameterCtnrUUID\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input name=\"ContentRepositoryUUID\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ContentRepository:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"Update\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameters.Apply.button",null)),null));
      out.write("\" class=\"button sfe-action-inline sfe-layout-change\" id=\"sfe-save-");
 {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n<td class=\"button\">");
 while (loop("TargetPipelineMap:KeySet","Key",null)) { 
      out.write("<input name=\"");
 {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("TargetPipeline_",null) + context.getFormattedValue(getObject("Key"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" type=\"hidden\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("TargetPipelineMap:get(Key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("<input type=\"submit\" name=\"reset\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameters.Reset.button",null)),null));
      out.write("\" class=\"button sfe-action-inline\" id=\"sfe-reset-");
 {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";out.write(value);} 
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n</tr>\n<tr class=\"cpo-hidden cpo-revert-buttons\">\n<td class=\"button\">\n<input type=\"submit\" name=\"RevertToInheriting\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameters.Revert.button",null)),null));
      out.write("\" class=\"button sfe-action-inline sfe-layout-change\" id=\"sfe-revert-");
 {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";out.write(value);} 
      out.write("\"/>\n</td>\n<td class=\"button\">\n<input type=\"button\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameters.Cancel.button",null)),null));
      out.write("\" class=\"button cpo-action-cancel-revert\" id=\"sfe-cancel-revert-");
 {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 } 
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
