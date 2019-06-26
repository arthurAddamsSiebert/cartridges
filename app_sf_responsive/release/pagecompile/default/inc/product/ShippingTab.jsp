<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "4");} %><% {try{executePipeline("ProcessProductTabs-GetShippingDetails",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductBO",getObject("ProductBO"))))))),"ShippingDetailsDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %><% processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","collectionItemID")}, 8); %><div class="panel-heading" data-testing-id="section-shipping-tab">
<a data-toggle="collapse" data-parent="<%=context.getFormattedValue("#",null)%>accordion" href="<%=context.getFormattedValue("#",null)%><% {String value = null;try{value=context.getFormattedValue(getObject("collectionItemID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="collapsed"><% {out.write(localizeISText("product.shipping.heading","",null,null,null,null,null,null,null,null,null,null,null));} %> <span class="glyphicon glyphicon-plus pull-right"></span>
</a>
</div>
<div id="<% {String value = null;try{value=context.getFormattedValue(getObject("collectionItemID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="panel-collapse collapse"> 
<div class="panel-body"><% processOpenTag(response, pageContext, "productshipping", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 16); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingDetailsDict:ShippingInformation") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><ul><% while (loop("ShippingDetailsDict:ShippingInformation","Info",null)) { %><li><% {String value = null;try{value=context.getFormattedValue(getObject("Info"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></li><% } %></ul><% } %><strong><% {out.write(localizeISText("product.shipping.available_methods","",null,null,null,null,null,null,null,null,null,null,null));} %></strong><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ShippingDetailsDict:AdvancedShippingMethods") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><ul><% while (loop("ShippingDetailsDict:AdvancedShippingMethods","ShippingMethod",null)) { %><li><% {String value = null;try{value=context.getFormattedValue(getObject("ShippingMethod:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></li><% } %></ul><% } %></div>
</div><% printFooter(out); %>