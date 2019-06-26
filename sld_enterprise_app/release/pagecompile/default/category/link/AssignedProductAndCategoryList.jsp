<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("categorylinkproductlist","category/link/CategoryLinkProductList.isml",false,new String[]{"links","linktype","linktypegroup","direction"},null); %><% context.setCustomTagTemplateName("categorylinkcategorylist","category/link/CategoryLinkCategoryList.isml",false,new String[]{"links","linktype","linktypegroup","direction"},null); %><% while (loop("linktypesall","LinkType",null)) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("table_",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue("_OUTGOING",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(LinkBOCtnr:LinkTypeGroup(\"CATEGORY_PRODUCT\"))"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("LinkBOCtnr:LinkBOs(LinkBOCtnr:LinkTypeGroup(\"CATEGORY_PRODUCT\"),LinkBOCtnr:LinkDirection(\"OUTGOING\"),LinkType)")); getPipelineDictionary().put("CatProdOutgoingLinks", temp_obj);} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s"><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.CatalogCategoryLink.",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue(".displayName",null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> <% {out.write(localizeISText("CategoryLinkProductCategoryLinkTable.For.table_title2","",null,getObject("CatalogCategoryBO:DisplayName"),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CatProdOutgoingLinks:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp; 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatProdOutgoingLinks:Size")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "categorylinkproductlist", new TagParameter[] {
new TagParameter("linktypegroup",getObject("LinkBOCtnr:LinkTypeGroup(\"CATEGORY_PRODUCT\")")),
new TagParameter("linktype",getObject("LinkType")),
new TagParameter("links",getObject("CatProdOutgoingLinks")),
new TagParameter("direction",getObject("LinkBOCtnr:LinkDirection(\"OUTGOING\")"))}, 44); %></td>
</tr>
</table><% } %> 
</td>
</tr>
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\"))"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("LinkBOCtnr:LinkBOs(LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\"),LinkBOCtnr:LinkDirection(\"OUTGOING\"),LinkType)")); getPipelineDictionary().put("CatCatOutgoingLinks", temp_obj);} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CatCatOutgoingLinks:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatCatOutgoingLinks:Size")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "categorylinkcategorylist", new TagParameter[] {
new TagParameter("linktypegroup",getObject("LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\")")),
new TagParameter("linktype",getObject("LinkType")),
new TagParameter("links",getObject("CatCatOutgoingLinks")),
new TagParameter("direction",getObject("LinkBOCtnr:LinkDirection(\"OUTGOING\")"))}, 76); %></td>
</tr>
</table><% } %></td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("table_",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue("_INCOMING",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(LinkBOCtnr:LinkTypeGroup(\"PRODUCT_CATEGORY\"))"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("LinkBOCtnr:LinkBOs(LinkBOCtnr:LinkTypeGroup(\"PRODUCT_CATEGORY\"),LinkBOCtnr:LinkDirection(\"INCOMING\"),LinkType)")); getPipelineDictionary().put("ProdCatIncomingLinks", temp_obj);} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title2 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CatalogCategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {out.write(localizeISText("sld_enterprise_app.IsOf.label","",null,localizeText(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.CatalogCategoryLink.",null) + context.getFormattedValue(getObject("LinkType:ID"),null) + context.getFormattedValue(".displayName",null),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("ProdCatIncomingLinks:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp; 
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProdCatIncomingLinks:Size")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% {out.write(localizeISText("sld_enterprise_app.Products","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("sld_enterprise_app.Product","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "categorylinkproductlist", new TagParameter[] {
new TagParameter("linktypegroup",getObject("LinkBOCtnr:LinkTypeGroup(\"PRODUCT_CATEGORY\")")),
new TagParameter("linktype",getObject("LinkType")),
new TagParameter("links",getObject("ProdCatIncomingLinks")),
new TagParameter("direction",getObject("LinkBOCtnr:LinkDirection(\"INCOMING\")"))}, 111); %></td>
</tr>
</table><% } %></td>
</tr>
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("LinkType:Applicable(LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\"))"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("LinkBOCtnr:LinkBOs(LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\"),LinkBOCtnr:LinkDirection(\"INCOMING\"),LinkType)")); getPipelineDictionary().put("CatCatIncomingLinks", temp_obj);} %><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="table_title4 w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("CatCatIncomingLinks:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("CatCatIncomingLinks:Size")).doubleValue() !=((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",133,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryLinkList.Categories","",null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryLinkList.Category","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td><% processOpenTag(response, pageContext, "categorylinkcategorylist", new TagParameter[] {
new TagParameter("linktypegroup",getObject("LinkBOCtnr:LinkTypeGroup(\"CATEGORY_CATEGORY\")")),
new TagParameter("linktype",getObject("LinkType")),
new TagParameter("links",getObject("CatCatIncomingLinks")),
new TagParameter("direction",getObject("LinkBOCtnr:LinkDirection(\"INCOMING\")"))}, 142); %></td>
</tr>
</table><% } %></td>
</tr>
</table><% } %><% printFooter(out); %>