/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.product;

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

public final class ChannelProductValidationRuleDialogScript_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("<script type=\"text/javascript\">\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("applyRuleConfiguration').click(function () {\n\tvar $dialog = $('");
      out.print(context.getFormattedValue("#",null));
      out.write("ProductValidationDialog'),\n\t\t$ok = $(this),\n\t\t$form = $('form[name=\"ProductValidationRuleForm\"]'),\n\t\tparams = $form.serialize(),\n\t\tvalid = true;\n\t\t\n\t// disable button once clicked\n\t$ok.prop('disabled', true);\n\t// hide label error class\n\thideLabelErrors();\n\n\t$.post('");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleConfiguration-CreateOrUpdateRule",null)))),null));
      out.write("', params)\n\t\t.done(function (response) {\n\t\t\t// this var is used for collecting error container ids of those error containers that should be shown\n\t\t\tvar errorContainerIDs = [],\n\t\t\tvalidationRuleNotAvailable = false;\n\t\t\t$.each(response, function (key, value) {\n\t\t\t    if (!validationRuleNotAvailable) {\n\t\t\t        if (key === 'ValidationRuleConfigurationNotFound') {\n\t\t\t\t        validationRuleNotAvailable = true;\n\t\t\t\t        return;\n\t\t\t\t    }\n\t\t\t\t\tvar formName = key;\n\t\t\t\t\t$(this).each(function (key, value) {\n\t\t\t\t\t\tif (value !== '') {\n\t\t\t\t\t\t\tvalid = false;\n\t\t\t\t\t\t\t$('label[for=\"' + formName + '_' + value + '\"]').addClass('label_error');\n\t\t\t\t\t\t\terrorContainerIDs.push(formName + '_' + value + '_ErrorContainer');\n\t\t\t\t\t\t}\n\t\t\t\t\t});    \n\t\t\t    }\n\t\t\t});\n\t\t\t\n\t\t\tif (!validationRuleNotAvailable) {\n\t\t\t    var firstErrorContainer;\n\t\t\t \t// iterate each error container and check if it should be hidden or shown\n\t\t\t\t$('.ErrorContainer').each(function () {\n\t\t\t\t\tvar id = $(this).attr('id');\n\t\t\t\t\tif (errorContainerIDs.indexOf(id) == -1) {\n");
      out.write("\t\t\t\t\t\t$(this).hide();\n\t\t\t\t\t}\n\t\t\t\t\telse {\n\t\t\t\t\t    if(typeof firstErrorContainer === 'undefined') {\n\t\t\t\t\t        firstErrorContainer = $(this);\n\t\t\t\t\t    }\n\t\t\t\t\t\t$(this).show();\n\t\t\t\t\t}\n\t\t\t\t});\n\n\t\t\t\t// if validation is successful, close the dialog\n\t\t\t\tif (valid) {\n\t\t\t\t\t$dialog.dialog('close');\n\t\t\t\t\twindow.location.href = '");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null)))),null));
      out.write("';\n\t\t\t\t}\n\t\t\t\telse if (typeof firstErrorContainer != 'undefined')\n\t\t\t\t{\n\t\t\t\t    var targetPosition = firstErrorContainer.position();\n\t\t\t\t \tvar scrolPosition = $('.dialog-content').scrollTop() + targetPosition.top;\n\t\t\t\t \t$('.dialog-content').scrollTop(scrolPosition);    \n\t\t\t\t}\n\t\t\t} else {\n\t\t\t    $dialog.dialog('close');\n\t\t\t    window.location.href = '");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductValidationRuleList-Refresh",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("validationRuleNotAvailable",null),context.getFormattedValue("true",null)))),null));
      out.write("';\n\t\t\t}\n\t\t\t// now enable ok button to make it available for submitting new data\n\t\t\t$ok.prop('disabled', false);\n\t\t});\n});\n\n// open dialog\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("ProductValidationDialog').on('dialogopen', function () {\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { 
      out.write("\n\t\t$('.rule_configuration_input').prop('disabled', true);\n\t");
 } 
      out.write("\n});\n\n// close dialog\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("ProductValidationDialog').on('dialogclose', function () {\n\tresetFormInputs();\n\thideAllRuleDivs();\n\tenableRuleDivsElements();\n\thideLabelErrors();\n\thideErrors();\n\t// enable rule type select box\n\t$('");
      out.print(context.getFormattedValue("#",null));
      out.write("ValidationRuleConfigurationForm_RuleType').prop('disabled', false);\n});\n\n// binds change callback function for rule type selection box\n$('");
      out.print(context.getFormattedValue("#",null));
      out.write("ValidationRuleConfigurationForm_RuleType').on('change', function (ev) {\n\tvar value = $(this).val();\n\tif (value === '') {\n\t\t// hide all rule divs\n\t\t$('.RuleDescriptorDiv').each(function () {\n\t\t\t$(this).hide();\n\t\t});\n\t\treturn;\n\t}\n\n\t// show the currently active rule div and enable inputs in it\n\tvar ruleDescriptorID = '");
      out.print(context.getFormattedValue("#",null));
      out.write("RuleDescriptorDiv_' + value;\n\tvar ruleDiv = $(ruleDescriptorID);\n\truleDiv.find('input,select').each(function () {\n\t\t$(this).prop('disabled', false);\n\t});\n\truleDiv.show();\n\n\t// disable inactive rule divs inputs\t\t\n\tdisableInactiveRuleDivsInputs(value);\n});\n\n// reset all form inputs that meet the conditions\nfunction resetFormInputs() {\n\t$(':input', '");
      out.print(context.getFormattedValue("#",null));
      out.write("ProductValidationRuleForm').each(function () {\n\t\tvar name = $(this).attr('name');\n\t\tvar type = $(this).attr('type');\n\t\tif (!((type === 'hidden' && (name === 'SynchronizerToken' || name === 'AllLocales' || name === 'AllCurrencies')) || type === 'button')) {\n\t\t\tif (!$(this).is('input:checkbox')) {\n\t\t\t\t$(this).val('');\n\t\t\t}\n\t\t\t$(this).removeAttr('checked').removeAttr('selected');\n\t\t}\n\t});\n\n\t$('");
      out.print(context.getFormattedValue("#",null));
      out.write("assignedLocales').children().empty();\n}\n\n// disable inputs of all currently inactive rule divs and hide the divs\nfunction disableInactiveRuleDivsInputs(value) {\n\t$('.RuleDescriptorDiv').each(function () {\n\t\tif (('RuleDescriptorDiv_' + value) !== $(this).attr('id')) {\n\t\t\t$(this).find('input,select').prop('disabled', 'disabled');\n\t\t\t$(this).hide();\n\t\t}\n\t});\n}\n\n// hides all rule divs\nfunction hideAllRuleDivs() {\n\t$('.RuleDescriptorDiv').hide();\n}\n\n// enables all elements in the rule divs\nfunction enableRuleDivsElements() {\n\t$('.RuleDescriptorDiv').find('*').prop('disabled', false);\n}\n\n// remove label_error class\nfunction hideLabelErrors() {\n\t$('label.label_error').removeClass('label_error');\n}\n\n// hide errors\nfunction hideErrors() {\n\t$('.ErrorContainer').hide();\n}\n\n// replaces all occurances of find with replace in the given str\nfunction replaceAll(find, replace, str) {\n\treturn str.replace(new RegExp(find, 'g'), replace);\n}\n</script>\n");
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
