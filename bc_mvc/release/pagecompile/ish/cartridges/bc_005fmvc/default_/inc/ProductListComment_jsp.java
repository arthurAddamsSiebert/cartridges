/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:57 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fmvc.default_.inc;

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
import com.intershop.beehive.core.capi.naming.*;
import com.intershop.beehive.core.capi.profile.*;
import com.intershop.component.foundation.capi.comment.*;

public final class ProductListComment_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
    implements org.apache.jasper.runtime.JspSourceDependent {

 protected Boolean printTemplateMarker() { return Boolean.FALSE; } 

	ProfileMgr profileMgr = (ProfileMgr)NamingMgr.getInstance().lookupManager(ProfileMgr.REGISTRY_NAME);

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
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/xml;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 0, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 
 


setEncodingType("text/xml"); 
      out.write('\n');
      out.write('\n');
      out.write('\n');
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "6");} 
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

	Comment comment = (Comment)getObject("comment");

	Profile profile = profileMgr.getProfile(comment.getAuthor());
	getPipelineDictionary().put("commentUser", profile);

      out.write("\n\n<comment>\n\n\t");
 while (loop("comment:AttributeValues","av",null)) { 
      out.write('\n');
      out.write('	');
      out.write('	');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("av:Name"),null).equals(context.getFormattedValue("text",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write("\n\t\t\t<text xml:lang=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("av:XMLLocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('>');
 {String value = null;try{value=context.getFormattedValue(getObject("av:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</text>\n\t\t");
 } 
      out.write('\n');
      out.write('	');
 } 
      out.write("\t\n\n\t<creation-date>");
 processOpenTag(response, pageContext, "datetime", new TagParameter[] {
new TagParameter("date",getObject("comment:CreationTime"))}, 27); 
      out.write("</creation-date>\n\n\t");
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("commentUser"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { 
      out.write("<author business-partner-no=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("commentUser:DataSheet:BusinessPartnerNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("\" domain=\"");
 {String value = null;try{value=context.getFormattedValue(getObject("commentUser:Domain:DomainName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write('"');
      out.write('/');
      out.write('>');
 } 
      out.write("\n\n\t<visibility>\t\n\t");

		if ((CommentsConstants.PRC_SCOPE_BUYER & comment.getTypeCode()) != 0)
		{
			
      out.write("\n\t\t\t<visible-to name=\"BUYER\"/>\n\t\t\t");

		}
		if ((CommentsConstants.PRC_SCOPE_APPROVER & comment.getTypeCode()) != 0)
		{
			
      out.write("\n\t\t\t<visible-to name=\"APPROVER\"/>\n\t\t\t");

		}
		if ((CommentsConstants.PRC_SCOPE_ORDERMGR & comment.getTypeCode()) != 0)
		{
			
      out.write("\n\t\t\t<visible-to name=\"ORDER_MANAGER\"/>\n\t\t\t");

		}
		if ((CommentsConstants.PRC_SCOPE_SUPPLIER & comment.getTypeCode()) != 0)
		{
			
      out.write("\n\t\t\t<visible-to name=\"SUPPLIER\"/>\n\t\t\t");

		}
		if ((CommentsConstants.PRC_SCOPE_SELLER & comment.getTypeCode()) != 0)
		{
			
      out.write("\n\t\t\t<visible-to name=\"SELLER\"/>\n\t\t\t");

		}
		if ((CommentsConstants.PRC_SCOPE_SOURCINGMGR & comment.getTypeCode()) != 0)
		{
			
      out.write("\n\t\t\t<visible-to name=\"SOURCING_MANAGER\"/>\n\t\t\t");

		}
	
      out.write("\n\t</visibility>\n\n</comment>\n");
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