<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} %><% {Object temp_obj = (getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:getImageViewIDsExcludePrimary(ImageType)")); getPipelineDictionary().put("ImageViews", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("IncludePrimaryImage")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("IncludePrimaryImage"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageViews") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><div class="product-img-thumbs" data-type="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("ImageViews","ImageView",null)) { %><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("Class","product-image"),
new TagParameter("ImageView",getObject("ImageView")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType",getObject("ImageType"))}, 10); %><% } %></div><% } %><% } else { %><div class="product-img-thumbs" data-type="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("Class","product-image"),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType",getObject("ImageType"))}, 16); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageViews") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% while (loop("ImageViews","ImageView",null)) { %><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("Class","product-image"),
new TagParameter("ImageView",getObject("ImageView")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType",getObject("ImageType"))}, 19); %><% } %><% } %></div><% } %><% printFooter(out); %>