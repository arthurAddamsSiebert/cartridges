/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fenterprise_005fapp.default_.inc;

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

public final class ProductLockInformation_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductLockActivated"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockLost"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"4\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"error_icon e\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/error.gif\" width=\"16\" height=\"15\" alt=\"\" border=\"0\"/></td>\n<td class=\"confirm\" width=\"100%\">");
 {out.write(localizeISText("ProductLockInformation.TheChangesYouHaveMadeCannotBeSaved.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { 
      out.write("<br/>");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Resource:ResourceOwner:Type"),null).equals(context.getFormattedValue("Instance Acquisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductLockInformation.NowThisProductIsLockedByASystemProcess.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:User:Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductLockInformation.NowThisProductIsBeingEditedA.confirm",null,null,context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:FirstName"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:LastName"),null)),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:Credentials:Login"),null)),null) + context.getFormattedValue(")",null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductLockInformation.NowThisProductIsBeingEditedB.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
 {out.write(localizeISText("ProductLockInformation.PleaseTryAgainLater.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
 processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("Resource"))}, 23); 
 } 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\" class=\"notification w e s\">\n<tr>\n<td class=\"e\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-DispatchLocking",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("ReleaseLock",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null))),null));
      out.write("\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/lockedForMe.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.title",null)),null));
      out.write("\" border=\"0\" align=\"middle\"/></a>");
 } else { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/lockedForMe.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockedForEditing.title",null)),null));
      out.write("\" border=\"0\" align=\"middle\"/>");
 } 
      out.write("</td>\n<td width=\"100%\">");

								int lifeTime  = ((Integer)getObject("ProductLockLifetime")).intValue();
								int h = lifeTime/3600;
								int mod = lifeTime%3600;
								int m = mod/60;
								int s = mod%60;
							
      out.write("<span>");
 {out.write(localizeISText("ProductLockInformation.YouHaveLockedThisProductForEditing",null,null, 
 h 
 , 
 m 
 , 
 s 
 ,null,null,null,null,null,null,null));} 
      out.write("</span>\n</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForOther"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\" class=\"confirm_box w e s\">\n<tr>\n<td class=\"confirm e\">\n<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/lockedForOther.gif\" align=\"middle\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTreeInc.LockedByOther.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTreeInc.LockedByOther.alt",null)),null));
      out.write("\" border=\"0\"/>\n</td> \n<td class=\"confirm\" width=\"100%\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Resource:ResourceOwner:Type"),null).equals(context.getFormattedValue("Instance Acquisition",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyLocked.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Resource:ResourceOwner:User:Profile"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyBeingEditedA.confirm",null,null,context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:FirstName"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:DataSheet:LastName"),null)),null) + context.getFormattedValue(" (",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("Resource:ResourceOwner:User:Profile:Credentials:Login"),null)),null) + context.getFormattedValue(")",null),null,null,null,null,null,null,null,null,null));} 
 } else { 
 {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyBeingEditedB.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } 
 processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("Resource"))}, 75); 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 } else { 
      out.write("<tr>\n<td>\n<table border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\" class=\"object_state w e s\">\n<tr>\n<td class=\"e\">");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CONTENT")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-DispatchLocking",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Action",null),context.getFormattedValue("GetLock",null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null)).addURLParameter(context.getFormattedValue(getObject("SelectedTab"),null),context.getFormattedValue("Target",null))),null));
      out.write("\"><img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/unlocked.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.title",null)),null));
      out.write("\" border=\"0\" align=\"middle\"/></a>");
 } else { 
      out.write("<img src=\"");
      out.print(context.getFormattedValue(context.webRoot(),null));
      out.write("/images/unlocked.gif\" alt=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.alt",null)),null));
      out.write("\" title=\"");
      out.print(context.getFormattedValue(localizeText(context.getFormattedValue("ProductLockInformation.LockProduct.title",null)),null));
      out.write("\" border=\"0\" align=\"middle\"/>");
 } 
      out.write("</td>\n<td class=\"\" width=\"100%\">");
 {out.write(localizeISText("ProductLockInformation.ThisProductIsCurrentlyUnlocked",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</td>\n</tr>\n</table>\n</td>\n</tr>");
 }}} 
      out.write(' ');
      out.write('\n');
 } 
      out.write(' ');
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