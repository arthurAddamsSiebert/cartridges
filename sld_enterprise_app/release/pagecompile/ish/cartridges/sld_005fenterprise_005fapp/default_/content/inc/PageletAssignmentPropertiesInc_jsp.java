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

public final class PageletAssignmentPropertiesInc_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write("<!-- BEGIN TEMPLATE ");
 out.write(getTemplateName()); 
      out.write(" -->\n");
 
setEncodingType("text/html"); 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showheading"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { 
      out.write("<tr>\n<td class=\"infobox_title infobox_locale e s w\" style=\"padding: 4px;\" colspan=\"2\" nowrap=\"nowrap\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.PriorityAndVisibility.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assigntoobjectname")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("assigntoobjectname"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageletAssignmentPropertiesInc.For0.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("assigntoobjectname"),null)),null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n</tr>");
 } 
      out.write("<tr><td class=\"w e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n<tr>\n<td>\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" class=\"w e s\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assigntoobject")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("contentrepository")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Domain"),
new TagParameter("key0","ToObject"),
new TagParameter("value1",getObject("contentrepository:RepositoryDomain")),
new TagParameter("value0",getObject("assigntoobject")),
new TagParameter("mapname","PageSchedulesParams")}, 21); 
 {try{executePipeline("ProcessPageletAssignments-GetPageletAssignments",((java.util.Map)(getObject("PageSchedulesParams"))),"PageletAssignmentsDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} 
 processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("FromClass","com.intershop.component.pmc.capi.pagelet.Pagelet"),
new TagParameter("ContextObject",getObject("assigntoobject")),
new TagParameter("Domain",getObject("contentrepository:RepositoryDomain"))}, 26); 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PositionableHelper:MaxPosition"),null).equals(context.getFormattedValue(new Double(0.0),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_text\"><label class=\"label label_text\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Priority.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td class=\"fielditem2\" colspan=\"8\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ispage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
 {out.write(localizeISText("PageletAssignmentPropertiesInc.ThisIsTheFirstPageItWillBeAssignedWithTheHighestPr.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("PageletAssignmentPropertiesInc.ThisIsTheFirstComponentItWillBeAssignedWithTheHigh.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
      out.write("</td>\n<input type=\"hidden\" name=\"AssignmentPosition\" value=\"1\"/>\n</tr>");
 } else { 
      out.write("<tr>\n<td nowrap=\"nowrap\" class=\"label_select\"><label class=\"label label_select\" for=\"AssignmentPosition\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Priority.label1",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td class=\"fielditem2\" colspan=\"3\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignmentPosition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 getPipelineDictionary().put("CurrentPosition", Double.valueOf((String)getPipelineDictionary().get("AssignmentPosition"))); 
 } else { 
 {Object temp_obj = (getObject("PositionableHelper:MinPosition")); getPipelineDictionary().put("CurrentPosition", temp_obj);} 
 } 
 processOpenTag(response, pageContext, "getcontentsharinghelper", new TagParameter[] {
new TagParameter("ContentSharingHelper","SharingHelper"),
new TagParameter("RepositoryDomain",getObject("contentrepository:RepositoryDomain"))}, 49); 
 processOpenTag(response, pageContext, "positionselect", new TagParameter[] {
new TagParameter("CurrentPosition",getObject("CurrentPosition")),
new TagParameter("End",(new Double( ((Number) getObject("PositionableHelper:PositionablesCount")).doubleValue() +((Number) new Double(1)).doubleValue()))),
new TagParameter("SelectName","AssignmentPosition"),
new TagParameter("SelectClass","select inputfield_en"),
new TagParameter("Positionables",getObject("SharingHelper:LocalAssignments(PageletAssignmentsDictionary:Assignments)"))}, 50); 
      out.write("</td>\n<td class=\"table_detail\" width=\"30%\" colspan=\"4\">");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ispage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
      out.write('\n');
      out.write('(');
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Currently0PagesAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} 
      out.write(')');
      out.write('\n');
 } else { 
      out.write('\n');
      out.write('(');
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Currently0ComponentsAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} 
      out.write(')');
      out.write('\n');
 } 
      out.write("</td>\n</tr>");
 } 
 } else { 
      out.write("<tr>\n<td class=\"label_radio\" nowrap=\"nowrap\"><label class=\"label label_radio\" for=\"\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Priority.label2",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td class=\"input_radio\">\n<input type=\"radio\" name=\"AssignmentPositioning\" id=\"AssignmentPositioning_TOP\" value=\"TOP\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("TOP",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("AssignmentPositioning"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\nonclick=\"this.form.elements.AssignmentPosition.disabled=this.checked;\"/>\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text\" for=\"AssignmentPositioning_TOP\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Highest1.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"fielditem2\">&nbsp;</td>\n<td class=\"input_radio\">\n<input type=\"radio\" name=\"AssignmentPositioning\" id=\"AssignmentPositioning_POSITION\" value=\"POSITION\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("POSITION",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\nonclick=\"this.form.elements.AssignmentPosition.disabled=!this.checked;\"/>\n</td>\n<td class=\"fielditem2\" colspan=\"6\">\n<input type=\"text\" name=\"AssignmentPosition\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("AssignmentPosition"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" size=\"5\" class=\"inputfield_en\" onchange=\"this.form.elements.AssignmentPositioning[1].checked=true\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("AssignmentPositioning"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("POSITION",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(" />\n</td>\n</tr>\n<tr>\n<td class=\"fielditem2\">&nbsp;</td>\n<td class=\"input_radio\">\n<input type=\"radio\" name=\"AssignmentPositioning\" id=\"AssignmentPositioning_BOTTOM\" value=\"BOTTOM\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("BOTTOM",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write("\nonclick=\"this.form.elements.AssignmentPosition.disabled=this.checked;\"/>\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text\" for=\"AssignmentPositioning_BOTTOM\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Lowest.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>");
 } 
      out.write("<tr>\n<td colspan=\"9\">&nbsp;</td>\n</tr>\n<tr>\n<td class=\"label_radio\" nowrap=\"nowrap\"><label class=\"label label_radio\" for=\"\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Visibility.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(":<span class=\"star\">*</span></label></td>\n<td class=\"input_radio\">\n<input name=\"AssignmentOnline\" id=\"AssignmentOnline_false\" value=\"false\" type=\"radio\" \n");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentOnline"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" />\n</td>\n<td class=\"label_radio_text\"><label class=\"label label_radio_text\" for=\"AssignmentOnline_false\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>\n</tr>\n<tr>\n<td class=\"fielditem2\">&nbsp;</td>\n<td class=\"input_radio label_fix1\">\n<input name=\"AssignmentOnline\" id=\"AssignmentOnline_true\" value=\"true\" type=\"radio\"\n");
 _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("AssignmentOnline"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("AssignmentOnline"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(" \n/>\n</td>\n<td class=\"label_radio_text label_fix1\"><label class=\"label label_radio_text\" for=\"AssignmentOnline_true\">");
 {out.write(localizeISText("PageletAssignmentPropertiesInc.Visible.label",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</label></td>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentValidFrom_Day")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentValidFrom_Time")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { 
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentPropertiesInc.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("AssignmentValidFrom_Day")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 115); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Time"),
new TagParameter("TimeString",getObject("AssignmentValidFrom_Time")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 121); 
 } else { 
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentPropertiesInc.From.InputFieldLabel",null))),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 127); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Time"),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 133); 
 } 
      out.write("</tr>\n<tr>\n<td class=\"fielditem2\" colspan=\"3\">&nbsp;</td>");
 processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidTo_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentPropertiesInc.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("AssignmentValidTo_Day")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 142); 
 processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidTo_Time"),
new TagParameter("TimeString",getObject("AssignmentValidTo_Time")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 148); 
      out.write("</tr>\n<tr><td colspan=\"8\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/space.gif\" width=\"1\" height=\"4\" alt=\"\" border=\"0\"/></td></tr>\n</table>\n<input type=\"hidden\" name=\"DatePattern\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("datepatternlocale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(',');
 {String value = null;try{value=context.getFormattedValue(getObject("datepatternlocale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n</td>\n</tr>\n</table>\n<!-- END TEMPLATE ");
 out.write(getTemplateName()); 
      out.write(" -->");
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