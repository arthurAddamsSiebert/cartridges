<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=0;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><input type="hidden" id="jsonproductid" />
<div class="col-sm-6 list-item search-container form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("errors")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("QuantityWithoutSKU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("ProductNotFound",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>has-error<% } %>">
<div class="visible-xs"><% {out.write(localizeISText("quickorder.productid.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="quickorder-search-container">
<input type="text" 
autocomplete="off"
name="SKU_<% {String value = null;try{value=context.getFormattedValue(getObject("key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SKUs:get(key)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SKUs:get(key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
class="form-control search-productId"
data-suggestURL="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSuggestSearch-SuggestSKU",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("MaxAutoSuggestResults",null),context.getFormattedValue("10",null)))),null)%>"
/>
<ul class="search-suggest-results"></ul>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("errors")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("QuantityWithoutSKU",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><small class="help-block"><% {out.write(localizeISText("quickorder.error.QuantityWithoutSKU","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("errors")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("ProductNotFound",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><small class="help-block"><% {out.write(localizeISText("quickorder.error.ProductNotFound","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% }} %> 
<small class="help-block" id="availability-SKU_<% {String value = null;try{value=context.getFormattedValue(getObject("key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"> </small>
</div>
<div class="col-sm-2 list-item form-group <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("errors")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("SKUWithoutQuantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("InvalidQuantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>has-error<% } %>">
<div class="visible-xs"><% {out.write(localizeISText("quickorder.quantity.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<input type="number"
min="1"
max="<% {String value = null;try{value=context.getFormattedValue(getObject("maxItemQuantity"),"0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="Quantity_<% {String value = null;try{value=context.getFormattedValue(getObject("key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Quantities:get(key)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Quantities:get(key)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"
class="form-control quick-order-quantity"
/><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("errors")))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("SKUWithoutQuantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("errors:get(key)"),null).equals(context.getFormattedValue("InvalidQuantity",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><small class="help-block"><% {out.write(localizeISText("quickorder.error.SKUWithoutQuantity","",null,null,null,null,null,null,null,null,null,null,null));} %></small><% } %></div>
<div class="col-sm-2 list-item">
<a href="javascript:void(0)" class="btn btn-link remove-row" title="remove-current-row"><% {out.write(localizeISText("quick.order.remove.row.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div><% printFooter(out); %>