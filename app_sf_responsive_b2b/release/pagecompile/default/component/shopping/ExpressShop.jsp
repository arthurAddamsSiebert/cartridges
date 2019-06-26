<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/captcha/Modules", null, "5");} %><script type="text/javascript">RetailShop.onCollapseChangeArrow();</script><% processOpenTag(response, pageContext, "currentuserbo", new TagParameter[] {
new TagParameter("currentuserbo","UserBO")}, 9); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBO:Extension(\"UserBORoleExtension\"):hasRole(\"APP_B2B_OCI_USER\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("USER_HAS_ROLE_APP_B2B_OCI_USER", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("USER_HAS_ROLE_APP_B2B_OCI_USER", temp_obj);} %><% } %><script type="text/javascript">RetailShop.onCollapseChangeArrow();</script>
<div class="modal-dialog modal-lg"
data-testing-id="section-expressshop-dialog"
data-dynamic-block
data-dynamic-block-call-parameters="CID=<% {String value = null;try{value=context.getFormattedValue(getObject("Pagelet:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
data-dynamic-block-product-id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
>
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-testing-id="button-expressshop-close" data-dismiss="modal" title="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>" aria-label="<% {out.write(localizeISText("dialog.close.text","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span aria-hidden="true">&times;</span></button>
</div>
<div class="modal-body">
<div class="express-shop">
<div class="pull-right"><% processOpenTag(response, pageContext, "productrating", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("SimpleRatingView","false")}, 32); %></div>
<div class="row product-details">
<div class="col-sm-6 col-md-7">
<div class="col-xs-12 product-detail-img clearfix">
<div class="product-image-container"><% processOpenTag(response, pageContext, "productimagescarousel", new TagParameter[] {
new TagParameter("ExpressShop","true"),
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","L")}, 45); %><% processOpenTag(response, pageContext, "productlabel", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 50); %></div>
</div>
<div class="col-md-12 hidden-xs hidden-sm"><% processOpenTag(response, pageContext, "productalternateimages", new TagParameter[] {
new TagParameter("RichSnippetsEnabled",getObject("RichSnippetsEnabled")),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","S")}, 54); %></div>
</div>
<div class="col-sm-6 col-md-5 col-xs-12"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"expressshop/ProductInfos", null, "63");} %><div id="accordion" class="panel-group"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/DescriptionTab", null, "67");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/DetailsTab", null, "68");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/AttachmentsTab", null, "69");} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("USER_HAS_ROLE_APP_B2B_OCI_USER"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("USER_HAS_ROLE_APP_B2B_OCI_USER"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/PolicyTab", null, "72");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/ShippingTab", null, "73");} %><% } %></div>
</div>
</div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "slot", new TagParameter[] {
new TagParameter("slot","app_sf_responsive_cm:slot.marketing.product.pagelet2-Slot")}, 79); %></div>
</div>
</div>
</div>
<script type="text/javascript">
ProductDetail.productImageCarousel();
</script>
</div><% printFooter(out); %>