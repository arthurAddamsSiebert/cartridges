<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","labelid")}, 2); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("displayType"),null).equals(context.getFormattedValue("dropdown",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% URLPipelineAction action7 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null));String site7 = null;String serverGroup7 = null;String actionValue7 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null);if (site7 == null){  site7 = action7.getDomain();  if (site7 == null)  {      site7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup7 == null){  serverGroup7 = action7.getServerGroup();  if (serverGroup7 == null)  {      serverGroup7 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("itemsPerPageForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue7, site7, serverGroup7,true)); %><% while (loop("ListNavigationVO:GenericHandlerPipelineParams:EntrySet","map",null)) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("map:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("map:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /><% } %><input type="hidden" name="SortingAttribute" value ="<% {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageNumber" value="0" />
<select id="<% {String value = null;try{value=context.getFormattedValue(getObject("labelid"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="form-control" name="PageSize" data-submit-form-handler="change"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pageSizes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {Object temp_obj = (split(context.getFormattedValue(getObject("pageSizes"),null),(String)(","))); getPipelineDictionary().put("PageSizeIterator", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageSizeIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% while (loop("PageSizeIterator","aPageSize","count")) { %><% {Object temp_obj = ((context.getFormattedValue(getObject("aPageSize"),null).trim())); getPipelineDictionary().put("aPageSize", temp_obj);} %><option value="<% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("search.paging.products_per_page.label","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% } else { %><option><% {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showViewAll")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showViewAll"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("product.items.view_all.link","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
<noscript>
<button class="btn btn-default" type="submit" name="pagesize" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.sort.button.limit.label",null)),null)%>"><% {out.write(localizeISText("product.sort.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</noscript><% out.print("</form>"); %><% } else { %><% while (loop("ListNavigationVO:GenericHandlerPipelineParams:EntrySet","map",null)) { %><% {Object temp_obj = (context.getFormattedValue(getObject("link_params"),null) + context.getFormattedValue("&",null)); getPipelineDictionary().put("link_params", temp_obj);} %><%
				String value = (String)getObject("map:Value");
				String encodedValue = java.net.URLEncoder.encode(value, "UTF-8");
				getPipelineDictionary().put("encodedValue", encodedValue);
			%><% {Object temp_obj = (context.getFormattedValue(getObject("link_params"),null) + context.getFormattedValue(getObject("map:Key"),null) + context.getFormattedValue("=",null) + context.getFormattedValue(getObject("encodedValue"),null)); getPipelineDictionary().put("link_params", temp_obj);} %><% } %><div class="ws-product-listing-products-per-page">
<span class="ws-product-listing-filter-label"><% {out.write(localizeISText("search.paging.products_per_page.label","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<ul class="ish-listFilters-productsPerPageList"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pageSizes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% {Object temp_obj = (split(context.getFormattedValue(getObject("pageSizes"),null),(String)(","))); getPipelineDictionary().put("PageSizeIterator", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageSizeIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% while (loop("PageSizeIterator","aPageSize","count")) { %><% {Object temp_obj = ((context.getFormattedValue(getObject("aPageSize"),null).trim())); getPipelineDictionary().put("aPageSize", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><li class="ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-active<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %> ish-listFilters-productsPerPageList-item-first<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("aPageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></li><% } else { %><li class="ish-listFilters-productsPerPageList-item<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %> ish-listFilters-productsPerPageList-item-first<% } %>"><a href="<%=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageSize",null),context.getFormattedValue((context.getFormattedValue(getObject("aPageSize"),null).trim()),null))).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null))),null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("link_params"),null)),null),null)%>" class="ws-product-listing-products-per-page-link"><% {String value = null;try{value=context.getFormattedValue(getObject("aPageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></li><% } %><% } %><% } else { %><li class="ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-active<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("count"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %> ish-listFilters-productsPerPageList-item-first<% } %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></li><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("showViewAll")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("showViewAll"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null).equals(context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><li class="ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-active ish-listFilters-productsPerPageList-item-last"><% {out.write(localizeISText("product.items.view_all.link","",null,null,null,null,null,null,null,null,null,null,null));} %></li><% } else { %><li class="ish-listFilters-productsPerPageList-item ish-listFilters-productsPerPageList-item-last"><a href="<%=context.getFormattedValue(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageSize",null),context.getFormattedValue(getObject("ListNavigationVO:MaxPageSize"),null))).addURLParameter(context.getFormattedValue("SortingAttribute",null),context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null))),null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("link_params"),null)),null),null)%>" class="ws-product-listing-products-per-page-link"><% {out.write(localizeISText("product.items.view_all.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a></li><% } %><% } %></ul>
</div><% } %><% } %><% printFooter(out); %>