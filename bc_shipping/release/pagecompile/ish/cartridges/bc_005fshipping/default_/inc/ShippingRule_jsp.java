/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:30:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.bc_005fshipping.default_.inc;

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
import com.intershop.component.shipping.capi.shippingrule.*;

public final class ShippingRule_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
      out.write("\n\n\n\n");
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"impex/Modules", null, "5");} 
      out.write('\n');
 context.setCustomTagTemplateName("customattributes","inc/CustomAttributes",false,new String[]{"attributes"},null); 
      out.write('\n');
 context.setCustomTagTemplateName("shippingcondition","inc/ShippingCondition",false,new String[]{"shippingcondition"},null); 
      out.write('\n');

	ShippingRule shippingRuleObj = (ShippingRule) getObject("shippingrule");
	

      out.write("\t\n\t\n <shipping-rule>\n      <id>");
 {String value = null;try{value=context.getFormattedValue(getObject("shippingrule:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</id>\n      <active>");
 {String value = null;try{value=context.getFormattedValue(getObject("shippingrule:Active"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</active>\n      ");

            getPipelineDictionary().put("shippingRuleCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(shippingRuleObj.createCustomAttributesIterator(), shippingRuleObj));
	   
      out.write("\n        ");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("shippingRuleCustomAttributes"))}, 21); 
      out.write("\t \n\t\t\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingrule:Condition")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingrule:Condition"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
      out.write("\t\t\n\t\t\t");
 processOpenTag(response, pageContext, "shippingcondition", new TagParameter[] {
new TagParameter("shippingcondition",getObject("shippingrule:Condition"))}, 24); 
      out.write('\n');
      out.write('	');
      out.write('	');
 } 
      out.write("\n\t\t\n\t\t");
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingrule:getAction")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("shippingrule:getAction"),null).equals(context.getFormattedValue(getObject("null"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { 
      out.write("\n\t\t<shipping-action>\n\t\t\t<type>");
 {String value = null;try{value=context.getFormattedValue(getObject("shippingrule:getAction:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</type>\n\t\t\t");

			ShippingAction shippingActionObj = shippingRuleObj.getAction();
            getPipelineDictionary().put("shippingActionCustomAttributes", new com.intershop.beehive.core.capi.impex.AttributeValueIterator(shippingActionObj.createCustomAttributesIterator(), shippingActionObj));
			
      out.write("\n\t\t\t");
 processOpenTag(response, pageContext, "customattributes", new TagParameter[] {
new TagParameter("attributes",getObject("shippingActionCustomAttributes"))}, 34); 
      out.write("\t\n\t\t</shipping-action>\n\t\t");
 } 
      out.write("\n</shipping-rule>\n\t\n\t\t\n\t\n\t\n\t\n\t\n");
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
