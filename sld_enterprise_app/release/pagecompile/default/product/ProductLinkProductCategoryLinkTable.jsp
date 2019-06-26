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
<td class="table_title2 w e s"><% {out.write(localizeISText("sld_enterprise_app.for.label",null,null,encodeString(context.getFormattedValue(getObject("ProductLinkTable_Name"),null)),encodeString(context.getFormattedValue(getObject("Product:Name"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.0Products.table_title4",null,null,context.getFormattedValue(getObject("ProductLinkTypeSummary:ProductLinkCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductLinkProductList", null, "27");} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_outgoing_category_links_table" class="category_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.0Categories.table_title4",null,null,context.getFormattedValue(getObject("ProductLinkTypeSummary:CategoryLinkCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/ProductLinkCategoryList", null, "41");} %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ExcludedIncomingLinkTypeCodes:Contains(ProductIncomingLinkTypeSummary:TypeCodeDefinition:Name)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_product_links_table" class="product_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title2 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Product:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {out.write(localizeISText("sld_enterprise_app.IsOf.label1",null,null,encodeString(context.getFormattedValue(getObject("Product:Name"),null)),encodeString(context.getFormattedValue(getObject("ProductLinkTable_Name"),null)),null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.0Products.table_title4",null,null,encodeString(context.getFormattedValue(getObject("ProductIncomingLinksCount"),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/IncomingProductLinkProductList", null, "62");} %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_incoming_category_links_table" class="category_links_<% {String value = null;try{value=context.getFormattedValue(getObject("ProductLinkTable_TypeCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_list">
<tr>
<td class="table_title4 w e s"><% {out.write(localizeISText("sld_enterprise_app.0Categories.table_title4",null,null,context.getFormattedValue(getObject("ProductIncomingCategoryLinksCount"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"product/IncomingProductLinkCategoryList", null, "76");} %></td>
</tr>
</table>
</td>
</tr><% } %></table>
</div><% printFooter(out); %>