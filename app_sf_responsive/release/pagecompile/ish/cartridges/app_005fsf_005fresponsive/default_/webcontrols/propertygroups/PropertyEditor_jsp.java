/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-16 22:40:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.app_005fsf_005fresponsive.default_.webcontrols.propertygroups;

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
import com.intershop.ui.web.internal.property.mapping.UIMapper;
import com.intershop.ui.web.internal.property.mapping.UIMapperConfiguration;
import com.intershop.ui.web.internal.property.mapping.UIPropertyGroup;
import com.intershop.platform.property.capi.model.PropertyGroupDescriptor;

public final class PropertyEditor_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("\n\n\n\n");
 
setEncodingType("text/html"); 
      out.write("<div class=\"propertyeditor ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("displaymode"))))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("edit",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { 
      out.write(" propertyeditor-");
 {String value = null;try{value=context.getFormattedValue(getObject("displaymode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
      out.write('"');
      out.write('>');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("validationresult")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("validationresult:ID"),null).equals(context.getFormattedValue(getObject("propertydescriptor:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("validationresult")); getPipelineDictionary().put("UIPropertyGroup", temp_obj);} 
 } else { 

		UIMapper mapper = UIMapper.getApplicationInstance();
		UIPropertyGroup uiPropertyGroup = mapper.getUIPropertyGroup(getObject("owner"), (PropertyGroupDescriptor)getObject("propertydescriptor"));
		getPipelineDictionary().put("UIPropertyGroup", uiPropertyGroup);
		
 } 

	UIPropertyGroup uiPropertyGroup = (UIPropertyGroup)getObject("UIPropertyGroup");
	String json = UIMapper.toJSON(uiPropertyGroup);
	getPipelineDictionary().put("json", json);
	
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("hidetitle"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<h2 class=\"propertyeditor-title\">");
 {String value = null;try{value=context.getFormattedValue(getObject("UIPropertyGroup:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</h2>");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("formfieldname")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
 {Object temp_obj = ("PropertyGroupConfiguration"); getPipelineDictionary().put("formfieldname", temp_obj);} 
 } 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("jquery-migrate-1.2.1.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("propertygroups/utils.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("propertygroups/controller.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("propertygroups/container/property.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("JSWebLibraries")); 
      out.write("propertygroups/container/propertygroup.js");
 out.print("</waplacement>"); 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
      out.write("propertygroups/propertygroups.css");
 out.print("</waplacement>"); 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("stylesheet"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
 out.print(context.prepareWAPlacement("CSSWebLibraries")); 
 {String value = null;try{value=context.getFormattedValue(getObject("stylesheet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 out.print("</waplacement>"); 
 } 
 while (loop("UIPropertyGroup:ErrorMessages","ErrorMessage",null)) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ErrorMessage"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
      out.write("<div class=\"alert alert-danger\">\n<span>");
 {String value = null;try{value=context.getFormattedValue(getObject("ErrorMessage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</span>\n</div>");
 } 
 } 
 {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"Editors", null, "53");} 
      out.write("<div id=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("UIPropertyGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" class=\"propertyeditor-content\"></div>\n<script type=\"text/javascript\">\n'use strict';\n!function ($) {\nfunction id$(id) {\n// escape id selectors\nreturn $('");
      out.print(context.getFormattedValue("#",null));
      out.write("' + id.replace(/(:|\\.|\\[|\\])/g, '\\\\$1'));\n}\nvar groupID = '");
 {String value = null;try{value=context.getFormattedValue(getObject("UIPropertyGroup:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("',\n$el = id$(groupID),\n$form = $el.closest('form'),\njson = $.parseJSON(\"");
 {String value = null;try{value=context.getFormattedValue(getObject("json"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"),\nController = intershop.propertygroups.ui.Controller,\npropertyGroup = Controller.fromJSON(json),\npropertyGroupHandlerName= 'propertygroups_'+'");
 {String value = null;try{value=context.getFormattedValue(getObject("formfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("';\nController.getContainer('PropertyGroup').validationError = '");
 {out.write(localizeISText("webcontrols.PropertyEditor.PropertyGroup.ValidationError","javascript",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("';\n// add rendered editor to DOM\n$el.append(propertyGroup.render());\n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("displaymode"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("disabled",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { 
      out.write("\npropertyGroup.disable();\n");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("displaymode"))))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("displaymode"),null).equals(context.getFormattedValue("view",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("\npropertyGroup.view(); \n");
 } else { 
      out.write("\n// store PropertyGroup at form\nvar propertyGroups = $form.data(propertyGroupHandlerName) || [];\npropertyGroups.push({\njson: json,\npropertyGroup: propertyGroup\n});\n$form.data(propertyGroupHandlerName, propertyGroups);\n// add serialized values to surrounding form before submit\n$form\n.off('submit.'+ propertyGroupHandlerName)\n.on('submit.' + propertyGroupHandlerName, function onSubmit() {\nvar $form = $(this),\npropertyGroups = $form.data(propertyGroupHandlerName) || [],\nallGroups = {};\npropertyGroups.forEach(function eachPropertyGroup(group) {\nvar updatedJSON = Controller.toJSON(group.json, group.propertyGroup);\nallGroups[group.propertyGroup.id] = updatedJSON;\n});\n// remove existing serialized field\n$form.find('input[name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\"]').remove();\n$($.parseHTML('<input type=\"hidden\" name=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("formfieldname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} 
      out.write("\" />'))\n.val(JSON.stringify(allGroups))\n.prependTo($form);\n});\n$('.propertygroup-editor-value')\n.focus(function () {\n$('.propertygroup-property-helptext').stop(true).hide();\n$(this).closest('.propertygroup-property').find('.propertygroup-property-helptext:not(:empty)').fadeIn(400);\n})\n.blur(function() {\n$(this).closest('.propertygroup-property').find('.propertygroup-property-helptext:not(:empty)').hide();\n});\n");
 } 
      out.write(" \n}(jQuery);\n</script>\n</div> \n");
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
