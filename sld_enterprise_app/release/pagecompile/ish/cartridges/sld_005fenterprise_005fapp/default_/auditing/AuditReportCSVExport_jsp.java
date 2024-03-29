/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.auditing;

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
import com.intershop.component.auditing.capi.audititem.AuditItemBO;
import com.intershop.beehive.core.capi.request.Request;
import com.intershop.beehive.core.capi.paging.PageableIterator;

public final class AuditReportCSVExport_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 
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
      response.setContentType("application/octet-stream;charset=utf-8");
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
 
 

setEncodingType("application/octet-stream"); 








 context.setCustomTagTemplateName("formatobjectdisplay","inc/FormatObjectDisplay.isml",true,new String[]{"displayObject"},null); 


 context.setCustomTagTemplateName("formatitemdisplay","inc/FormatItemDisplayCSV.isml",true,new String[]{"displayItem"},null); 


 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AuditItemBOs")))).booleanValue() && ((Boolean) (hasLoopElements("AuditItemBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { 

	Request.getCurrent().getServletResponse().setHeader("Content-Disposition", "attachment;filename=\"AuditReportCSVExport.csv\"");
	// convert to sequence
/* Do not destroy the pageable as long as the pageable is used in the UI (e.g. for paging or restarting the export)	
	ResettableIterator<AuditItemBO> pageable = (ResettableIterator<AuditItemBO>)getObject("AuditItemBOs");
    getPipelineDictionary().put("AuditItemBOs", pageable.toSequence());
*/
	PageableIterator<AuditItemBO> pageable = (PageableIterator<AuditItemBO>)getObject("AuditItemBOs");
	pageable.setPageSize(0);
    getPipelineDictionary().put("LINE_SEPARATOR", System.getProperty("line.separator"));

      out.write("User ID;Context;Date/Time;Object Type;Domain;Action Type;Comment;Detail\n;;;;;;;Attribute Name;Locale ID;Old Value;New Value");


 while (loop("AuditItemBOs","AuditItemBO",null)) { 


 {Object temp_obj = (getObject("AuditItemBO:Extension(\"(Class)com.intershop.sellside.enterprise.capi.auditing.AuditItemBODisplayExtension\")")); getPipelineDictionary().put("AuditItem", temp_obj);} 


      out.write('\n');
 {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:UserID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');


 {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:ApplicationName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');


 {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(' ');
 {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:CreationDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');


 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("AuditItem:ObjectType"),null),(String)(getObject("LINE_SEPARATOR")),(String)("|")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');


 {String value = null;try{value=context.getFormattedValue(getObject("AuditItemBO:DomainRef:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');


 {String value = null;try{value=context.getFormattedValue(getObject("AuditItem:ActionType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');


 {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("AuditItem:Comment"),null),(String)(getObject("LINE_SEPARATOR")),(String)("|")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 

 {Object temp_obj = (getObject("AuditItem:AuditAttributeChanges")); getPipelineDictionary().put("AuditAttributeChanges", temp_obj);} 


 _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AuditAttributeChanges") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 


 {Object temp_obj = (new Double(1)); getPipelineDictionary().put("AuditAttributeChangeCount", temp_obj);} 


 while (loop("AuditAttributeChanges","Change",null)) { 


 {Object temp_obj = ((new Double( ((Number) getObject("AuditAttributeChangeCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("AuditAttributeChangeCount", temp_obj);} 


      out.write(';');
 {String value = null;try{value=context.getFormattedValue(getObject("Change:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');
 {String value = null;try{value=context.getFormattedValue(getObject("Change:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write(';');
 processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("Change:OldValue"))}, 42); 
      out.write(';');
 processOpenTag(response, pageContext, "formatobjectdisplay", new TagParameter[] {
new TagParameter("displayObject",getObject("Change:NewValue"))}, 42); 
 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuditAttributeChanges:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 


 _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("AuditAttributeChangeCount")).doubleValue() <=((Number)(getObject("AuditAttributeChanges:Size"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { 
      out.write("\n;;;;;;");
 } 
 } 


 } 


 } 


 } 


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
