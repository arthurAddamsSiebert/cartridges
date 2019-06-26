<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%-- ProductCategoryListTable --%><div id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_table"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("itemIsVisible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
style="display: block"
<% } else { %>
style="display: none"
<% } %>
>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="product_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="product_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" >
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_product_links_table" class="product_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText(context.getFormattedValue(getObject("ProductLinkTable_Name"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.For.table_title2","",null,getObject("Product:Name"),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinksList:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp; 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductLinksList:ElementCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/link/ProductLinkProductList", null, "31");} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_category_links_table" class="category_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryLinksList:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CategoryLinksList:ElementCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/link/ProductLinkCategoryList", null, "51");} %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ExcludedIncomingLinkTypeCodes:Contains(ProductLinkTable_TypeCode)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links_table" class="product_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title2 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {out.write(localizeISText("sld_enterprise_app.IsOf.label",null,null,localizeText(context.getFormattedValue(context.getFormattedValue("",null) + context.getFormattedValue(getObject("ProductLinkTable_Name"),null) + context.getFormattedValue("",null),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingProductLinksList:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp; 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingProductLinksList:ElementCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/link/IncomingProductLinkProductList", null, "76");} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_category_links_table" class="category_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("IncomingCategoryLinksList:ElementCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("IncomingCategoryLinksList:ElementCount")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/link/IncomingProductLinkCategoryList", null, "96");} %></td>
</tr>
</table>
</td>
</tr><% } %></table>
</div><% printFooter(out); %>