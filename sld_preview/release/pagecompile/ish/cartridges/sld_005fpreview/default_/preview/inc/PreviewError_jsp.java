/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: JspCServletContext/1.0
 * Generated at: 2019-02-13 15:29:26 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package ish.cartridges.sld_005fpreview.default_.preview.inc;

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

public final class PreviewError_jsp extends com.intershop.beehive.core.internal.template.AbstractTemplate
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
 
      out.write('\n');
 
setEncodingType("text/html"); 

PipelineDictionary dict = getPipelineDictionary();
String key = null;
Object val = null;
int i = 1;
while ((key=dict.get("parametername"+i))!=null){
	val = dict.get("parametervalue"+i);
	dict.put(key, val);
	i++;
}

 _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_GENERAL_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.AGeneralErrorOccurredDuringPreview","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_DEFAULT_APPLICATION_NOT_PREVIEWABLE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.YouCannotPreviewThisPromotion","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_APPLICATION_NOT_PREVIEWABLE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.TheSelectedApplicationIsNotAvailable","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAccount-Show",null)))),null));
      out.write("\" class=\"action_link fielditem_comment\">");
 {out.write(localizeISText("PreviewError.SelectApplication.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_CHANNEL_NOT_DEFINED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.ToPreviewTheSelectedObjectPreviewChannelMustBeSelected.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPreferences-ChannelList",null)))),null));
      out.write("\" class=\"action_link fielditem_comment\">");
 {out.write(localizeISText("PreviewError.SelectChannel.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_PRODUCT_NOT_AVAILABLE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.ToPreviewTheProductItMustBeSharedToPreviewChannel.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSharing-Overview",null)))),null));
      out.write("\" class=\"action_link fielditem_comment\">");
 {out.write(localizeISText("PreviewError.ShareProduct.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_PRODUCT_FROM_MASTER_NOT_ONLINE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.ThisSharedProductIsCurrentlyNotOnlineInPreviewChannel.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_PRODUCT_NOT_ONLINE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.ThisProductIsCurrentlyNotOnline.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_PRODUCT_ONLINE_BUT_EXPIRED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.ThisProductIsCurrentlyOnlineButHasExpired.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_PRODUCT_FROM_MASTER_ONLINE_BUT_EXPIRED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.InTheSelectedChannelTheProductIsOnlineButExpired.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_CATEGORY_FROM_MASTER_NOT_ONLINE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.InTheSelectedChannelTheCategoryIsNotOnline.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_CATEGORY_NOT_ONLINE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.TheCategoryIsNotOnlineNow.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_CATALOG_FROM_MASTER_NOT_ONLINE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.InTheSelectedChannelTheCatalogIsNotOnline.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_CATALOG_NOT_ONLINE_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.TheCatalogIsNotOnline.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PREVIEW_CATALOG_NOT_SHARED_TO_CHANNEL_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.TheCatalogIsNotSharedToThePreviewChannel.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write(" &quot;");
 {String value = null;try{value=context.getFormattedValue(getObject("MasterPageEditingChannel:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} 
      out.write("&quot;.&nbsp;<a href=\"");
      out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogChannelList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCatergoryID",null),context.getFormattedValue(getObject("CatalogCategoryID"),null))).addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("CatalogUUID"),null))),null));
      out.write("\" class=\"action_link fielditem_comment\">");
 {out.write(localizeISText("PreviewError.ShareCatalog.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write("</a>\n");
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("PROMOTION_HAS_EXPIRED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.YouCannotPreviewThisPromotionBecauseExpired.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("ABTEST_HAS_EXPIRED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.YouCannotPreviewThisABTestBecauseExpired.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewError"),null).equals(context.getFormattedValue("CAMPAIGN_HAS_EXPIRED_ERROR",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.YouCannotPreviewThisCampaignBecauseExpired.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 } else { 
      out.write('\n');
 {out.write(localizeISText("PreviewError.PreviewForThisProductFailed.link","",null,null,null,null,null,null,null,null,null,null,null));} 
      out.write('\n');
 }}}}}}}}}}}}}}}}} 
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
