<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ListNavigationVO")))).booleanValue() && ((Boolean) (hasLoopElements("ListNavigationVO:SortableAttributes(sortings)") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% URLPipelineAction action6 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null));String site6 = null;String serverGroup6 = null;String actionValue6 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null);if (site6 == null){  site6 = action6.getDomain();  if (site6 == null)  {      site6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup6 == null){  serverGroup6 = action6.getServerGroup();  if (serverGroup6 == null)  {      serverGroup6 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("ListNavigationVO:HandlerPipeline"),null) + context.getFormattedValue("-Browse",null),null)))),null));out.print("\"");out.print(" name=\"");out.print("sortByForm");out.print("\"");out.print(" class=\"");out.print("sort-by-filter");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue6, site6, serverGroup6,true)); %><% while (loop("ListNavigationVO:GenericHandlerPipelineParams:EntrySet","map",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("map:Key"),null).equals(context.getFormattedValue("SortingAttribute",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("map:Key"),null).equals(context.getFormattedValue("PageableID",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("map:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("map:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" /> 
<% } %> 
<% } %><input type="hidden" name="PageSize" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ListNavigationVO:PageSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {10}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="hidden" name="PageNumber" value="0" />
<select id="SortingAttribute" name="SortingAttribute" data-submit-form-handler="change" class="form-control" onchange="this.form.submit()">
<option value="" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SortingAttribute"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("product.sorting_attribute.default.text","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ListNavigationVO:SearchIndex"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ListNavigationVO:SortableAttributes(sortings)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %> 
<% while (loop("ListNavigationVO:SortableAttributes(sortings)","sortby",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("sortby:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null).equals(context.getFormattedValue((getObject("sortby:Name")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>selected="selected"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("sortby:DisplayName")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("sortby:DisplayName"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("sortby:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sortby:Direction"),null).equals(context.getFormattedValue("asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("sortby:AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("product.sorting.direction.ascending","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("sortby:AttributeName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("product.sorting.direction.descending","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% } %></option><% } %><% } %><% } else { %><!-- manually selected parameters for Oracle Product queries -->
<option value="name-asc" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null).equals(context.getFormattedValue("name-asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("product.sorting_attribute.product_name_ascending.text","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="name-desc" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null).equals(context.getFormattedValue("name-desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("product.sorting_attribute.product_name_descending.text","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="value-asc" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null).equals(context.getFormattedValue("value-asc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("product.sorting_attribute.product_listprice_ascending.text","",null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="value-desc" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListNavigationVO:SortingAttribute"),null).equals(context.getFormattedValue("value-desc",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("product.sorting_attribute.product_listprice_descending.text","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
<noscript>
<button type="submit" name="sort" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("product.sort.button.title",null)),null)%>"><% {out.write(localizeISText("product.sort.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</noscript><% out.print("</form>"); %><% } %><% printFooter(out); %>