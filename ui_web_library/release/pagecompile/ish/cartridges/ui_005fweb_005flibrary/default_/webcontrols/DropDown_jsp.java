/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-07 18:11:27 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.ui_005fweb_005flibrary.default_.webcontrols;

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

public final class DropDown_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write('\n');
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/jquery-ui.css");
 out.print("</waplacement>"); 
      out.write('\n');
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/themes/base/jquery.ui.theme.css");
 out.print("</waplacement>"); 
      out.write('\n');
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery-ui-1.10.3/themes/backoffice/jquery.ui.theme.css");
 out.print("</waplacement>"); 
      out.write('\n');
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery/dropdown/jquery.dropdown.css");
 out.print("</waplacement>"); 
      out.write('\n');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery.js");
 out.print("</waplacement>"); 
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery-migrate-1.2.1.js");
 out.print("</waplacement>"); 
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery-ui-1.10.3.js");
 out.print("</waplacement>"); 
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery/dropdown/jquery.dropdown.js");
 out.print("</waplacement>"); 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("search",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery/dropdown/jquery.dropdown.filter.css");
 out.print("</waplacement>"); 
      out.write('\n');
      out.write('	');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery/dropdown/jquery.dropdown.filter.js");
 out.print("</waplacement>"); 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("toggle",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("jquery/dropdown/jquery.dropdown.toggle.css");
 out.print("</waplacement>"); 
      out.write('\n');
      out.write('	');
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery/dropdown/jquery.dropdown.toggle.js");
 out.print("</waplacement>"); 
      out.write('\n');
 }} 
      out.write('\n');
      out.write('\n');
 {Object temp_obj = (context.getFormattedValue("#",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("selector", temp_obj);} 
      out.write('\n');
      out.write('\n');
 out.print(context.prepareWAPlacement("JSWebControls")); 
      out.write("\n\t$(\"");
 {String value = null;try{value=context.getFormattedValue(getObject("selector"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\").dropdown({\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("autoopen")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("autoopen"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write("\n\t\t\tautoOpen: true\n\t\t");
 } else { 
      out.write("\n\t\t\tautoOpen: false\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("checkalltext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tcheckAllText: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("checkalltext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("classes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("multiple")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("search",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = (" ui-dropdown-multisearch"); getPipelineDictionary().put("multifilterclasses", temp_obj);} 
      out.write("\n\t\t\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("toggle",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\t");
 {Object temp_obj = (" ui-dropdown-multitoggle"); getPipelineDictionary().put("multifilterclasses", temp_obj);} 
      out.write("\n\t\t\t\t");
 }} 
      out.write("\n\t\t\t");
 } 
      out.write("\n\t\t\tclasses: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("classes"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
 {String value = null;try{value=context.getFormattedValue(getObject("multifilterclasses"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && !((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\theader: true\n\t\t");
 } else { 
      out.write("\n\t\t\t,\n\t\t\theader: false\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("height"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\theight: ");
 {String value = null;try{value=context.getFormattedValue(getObject("height"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("hide"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\thide: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("hide"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("minwidth"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tminWidth: ");
 {String value = null;try{value=context.getFormattedValue(getObject("minwidth"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("multiple")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tmultiple: true\n\t\t");
 } else { 
      out.write("\n\t\t\t,\n\t\t\tmultiple: false\n\t\t");
 } 
      out.write("\n\n       \t,\n       \tcheckAllText: '");
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.DropDown.CheckAll",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("'\n       \t,\n       \tuncheckAllText: '");
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.DropDown.UncheckAll",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("'\n       \t,\n        selectedText: '");
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.DropDown.Selected",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("'\n\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("noneselectedtext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tnoneSelectedText: '");
 {String value = null;try{value=context.getFormattedValue(getObject("noneselectedtext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {80}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("'\n\t\t");
 } else { 
      out.write("\n\t\t\t,\n\t\t    noneSelectedText: '");
 {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.DropDown.SelectOptions",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {83}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("'\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("position")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("position"),null).equals(context.getFormattedValue("above",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tposition: {\n\t\t\t\tmy: \"left bottom\",\n\t\t\t\tat: \"left top\",\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("collision"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\tcollision: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("collision"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\tcollision: \"flip\"\n\t\t\t\t");
 } 
      out.write("\n\t\t\t}\n\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("position")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("position"),null).equals(context.getFormattedValue("centered",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tposition: {\n\t\t\t\tmy: \"center\",\n\t\t\t\tat: \"center\",\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("collision"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\tcollision: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("collision"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\tcollision: \"flip\"\n\t\t\t\t");
 } 
      out.write("\n\t\t\t}\n\t\t");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("position")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("position"),null).equals(context.getFormattedValue("below",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tposition: {\n\t\t\t\tmy: \"left top\",\n\t\t\t\tat: \"left bottom\",\n\t\t\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("collision"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { 
      out.write("\n\t\t\t\t\tcollision: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("collision"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t\t\t");
 } else { 
      out.write("\n\t\t\t\t\tcollision: \"flip\"\n\t\t\t\t");
 } 
      out.write("\n\t\t\t}\n\t\t");
 }}} 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectedlist"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tselectedList: ");
 {String value = null;try{value=context.getFormattedValue(getObject("selectedlist"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write('\n');
      out.write('	');
      out.write('	');
 } else { 
      out.write("\n\t\t\t,\n\t\t\tselectedList: 0\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectedtext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",126,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tselectedText: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("selectedtext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("show"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tshow: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("show"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("uncheckalltext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",134,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tuncheckAllText: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("uncheckalltext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {136}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write("\n\t})\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("search",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { 
      out.write("\n\t.dropdownfilter({\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filterautoreset")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filterautoreset"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { 
      out.write("\n\t\t\tautoReset: true\n\t\t");
 } else { 
      out.write("\n\t\t\tautoReset: false\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filterlabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tlabel: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("filterlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filterplaceholder"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tplaceholder: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("filterplaceholder"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write("\n\t})\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filter")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filter"),null).equals(context.getFormattedValue("toggle",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { 
      out.write("\n\t.dropdowntoggle({\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filterautoreset")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filterautoreset"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",157,e);}if (_boolean_result) { 
      out.write("\n\t\t\tautoReset: true\n\t\t");
 } else { 
      out.write("\n\t\t\tautoReset: false\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("filterlabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tlabel: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("filterlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("filteroncreate")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("filteroncreate"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",166,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\tfilterOnCreate: false\n\t\t");
 } else { 
      out.write("\n\t\t\t,\n\t\t\tfilterOnCreate: true\n\t\t");
 } 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("togglename"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { 
      out.write("\n\t\t\t,\n\t\t\ttoggleName: \"");
 {String value = null;try{value=context.getFormattedValue(getObject("togglename"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {175}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"\n\t\t");
 } 
      out.write("\n\t})\n");
 }} 
      out.write('\n');
      out.write(';');
      out.write('\n');
 out.print("</waplacement>"); 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("uitemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("uitemplate"),null), null, "183");} 
      out.write('\n');
 } 
      out.write('\n');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("scripttemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",186,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('	');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("scripttemplate"),null), null, "187");} 
      out.write('\n');
 } 
      out.write('\n');
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