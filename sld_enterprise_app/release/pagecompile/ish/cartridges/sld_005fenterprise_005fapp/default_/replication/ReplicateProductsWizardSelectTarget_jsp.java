/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.replication;

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

public final class ReplicateProductsWizardSelectTarget_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("listview","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-SelectTarget",null))))),
new TagParameter("wizard","true"),
new TagParameter("text",localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.ReplicateProducts.text",null)))}, 3); 
      out.write("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title aldi\">");
 {out.write(localizeISText("ReplicateProductsWizardSelectTarget.ReplicateProducts.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td class=\"table_title_description w e s\">");
 {out.write(localizeISText("ReplicateProductsWizardSelectTarget.SelectTargetSystemAndClickFinishToStartTheReplicat.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>");
 URLPipelineAction action216 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-Dispatch",null)))),null));String site216 = null;String serverGroup216 = null;String actionValue216 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-Dispatch",null)))),null);if (site216 == null){  site216 = action216.getDomain();  if (site216 == null)  {      site216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup216 == null){  serverGroup216 = action216.getServerGroup();  if (serverGroup216 == null)  {      serverGroup216 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewReplicateProducts-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ActionParameterForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue216, site216, serverGroup216,true)); 
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\n<tr>\n<td>");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentProductRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { 
 {Object temp_obj = (getObject("CurrentProductRepository:RepositoryDomain")); getPipelineDictionary().put("ProductLockPreferenceDomain", temp_obj);} 
 } else { 
 {Object temp_obj = (getObject("CurrentMasterRepository:OwningDomain")); getPipelineDictionary().put("ProductLockPreferenceDomain", temp_obj);} 
 } 
 {try{executePipeline("ProcessProductLock-GetLockPreference",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("PreferenceDomain",getObject("ProductLockPreferenceDomain"))))))),"ProductLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 26.",e);}} 
      out.write(' ');
      out.write('\n');
 {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:PageletLocking"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("UserLockConflictPolicySelectionDisabled", temp_obj);} 
 {Object temp_obj = ((((context.getFormattedValue(getObject("ProductLockInfoDictionary:CorrelatedLockingEnabled"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("CorrelatedLockingEnabled", temp_obj);} 
 {Object temp_obj = (getObject("ProductLockInfoDictionary:ReplicationAcquisitionTimeout")); getPipelineDictionary().put("ReplicationAcquisitionTimeout", temp_obj);} 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"replication/ReplicationTargetListInc", null, "30");} 
      out.write("<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"w e s\">\n<tr>");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("NoWizard")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("<td align=\"left\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">\n<input type=\"hidden\" name=\"ActionID\" value=\"ReplicateProducts\"/>\n<input type=\"submit\" name=\"actionList\" value=\"&lt;&lt;&nbsp;");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.Previous.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>");
 } 
      out.write("<td align=\"right\">\n<table border=\"0\" cellspacing=\"4\" cellpadding=\"0\">\n<tr>\n<td class=\"button\">");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "51");} 
      out.write("<input type=\"hidden\" name=\"ProductsPageableID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("Products:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"ProcessDescription\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.ReplicateSelectedProducts.input",null)),null));
      out.write("\"/>\n<input type=\"submit\" name=\"startReplication\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.Finish.button",null)),null));
      out.write("\" class=\"button\" ");
 _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (hasLoopElements("TargetClusters") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { 
      out.write("disabled=\"disabled\"");
 } 
      out.write("/>\n</td>\n<td class=\"button\">\n<input type=\"hidden\" name=\"PageableName\" value=\"Products\"/>\n<input type=\"hidden\" name=\"ProductID\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\"/>\n<input type=\"hidden\" name=\"IsSearchFired\" value=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" />\n<input type=\"submit\" name=\"cancel\" value=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ReplicateProductsWizardSelectTarget.Cancel.button",null)),null));
      out.write("\" class=\"button\"/>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>\n</td>\n</tr>\n</table>");
 out.print("</form>"); 
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