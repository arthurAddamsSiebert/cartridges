/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fch_005fbase.default_.labeling.inc;

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

public final class ChannelLabelItem_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:Type"),null).equals(context.getFormattedValue("Product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("labelassignment:Object"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("labelassignment:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("type",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelLabelItem.Product.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("labelassignment:Object"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSelectWizard-Details",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("labelassignment:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:SKU"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("checkbox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedLabelAssignmentUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("labelassignment:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(labelassignment:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { 
 } else { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 }}}} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:Type"),null).equals(context.getFormattedValue("CatalogCategory",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("labelassignment:Object")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-ViewChannelCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("labelassignment:ID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("type",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
 {out.write(localizeISText("ChannelLabelItem.Category.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("labelassignment:Object"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-ViewChannelCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("labelassignment:ID"),null)))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("checkbox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedLabelAssignmentUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("labelassignment:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(labelassignment:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { 
 } else { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 }}}} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:Type"),null).equals(context.getFormattedValue("Pagelet",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { 
 {Object temp_obj = ("ViewPagelet-View"); getPipelineDictionary().put("ComponentDetailsPipeline", temp_obj);} 
 {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 60.",e);}} 
      out.write(' ');
      out.write('\n');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("labelassignment:Object"))))).booleanValue() && ((Boolean) ((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("ComponentDetailsPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("labelassignment:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("type",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("labelassignment:Object"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("labelassignment:Object:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("labelassignment:Object:Template"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { 
      out.write(' ');
 {out.write(localizeISText("ChannelLabelItem.PageTemplate.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
      out.write('\n');
 } else { 
      out.write(' ');
 {out.write(localizeISText("ChannelLabelItem.PageVariant.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("labelassignment:Object:Template"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { 
      out.write(' ');
 {out.write(localizeISText("ChannelLabelItem.ComponentTemplate.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } else { 
      out.write(' ');
 {out.write(localizeISText("ChannelLabelItem.Component.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 } 
 } 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("ComponentDetailsPipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("labelassignment:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("checkbox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedLabelAssignmentUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("labelassignment:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(labelassignment:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { 
 } else { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 }}}} 
      out.write(' ');
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:Type"),null).equals(context.getFormattedValue("PageletEntryPoint",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { 
 {try{executePipeline("ProcessContentRepository-GetContentRepository",java.util.Collections.emptyMap(),"cms");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 87.",e);}} 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("labelassignment:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {90}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {92}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("type",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)(getObject("labelassignment:Object:Page"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { 
      out.write(' ');
 {out.write(localizeISText("ChannelLabelItem.Page.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 } else { 
      out.write(' ');
 {out.write(localizeISText("ChannelLabelItem.Include.link",null,null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(' ');
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { 
      out.write("<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("cms:ContentRepository:UUID"),null))).addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Properties",null)).addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("labelassignment:ID"),null))),null));
      out.write("\" class=\"table_detail_link\">");
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("</a>");
 } else { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Object:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("checkbox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedLabelAssignmentUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("labelassignment:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(labelassignment:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
 _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { 
 } else { 
      out.write("disabled=\"disabled\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 }}}} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("labelassignment:Type")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("labelassignment:Type"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { 
 {Object temp_obj = (context.getFormattedValue("labeling/inc/",null) + context.getFormattedValue(getObject("labelassignment:Type"),null) + context.getFormattedValue("ChannelLabelItem",null)); getPipelineDictionary().put("templateName", temp_obj);} 
 _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(getObject("templateName"),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { 
 {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("templateName"),null), null, "110");} 
 } else { 
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_name",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {114}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("type",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("viewlink_id",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { 
 {String value = null;try{value=context.getFormattedValue(getObject("labelassignment:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displaytype"),null).equals(context.getFormattedValue("checkbox",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { 
      out.write("<input type=\"checkbox\" name=\"SelectedLabelAssignmentUUID\" value=\"");
      out.print(context.getFormattedValue(getObject("labelassignment:UUID"),null));
      out.write('"');
      out.write(' ');
 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("labelassignment:UUID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(labelassignment:UUID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { 
      out.write("checked=\"checked\"");
 } 
      out.write(' ');
      out.write('/');
      out.write('>');
 }}}} 
 } 
 } else { 
 {out.write(localizeISText("ChannelLabelItem.UndefinedOrEmptyLabelAssignmentType.input",null,null,null,null,null,null,null,null,null,null,null,null));} 
 } 
 }}}} 
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
