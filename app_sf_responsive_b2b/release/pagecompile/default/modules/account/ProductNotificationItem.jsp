<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object temp_obj = ("Miscellaneous / Color"); getPipelineDictionary().put("ColorAttributeName", temp_obj);} %><% {Object temp_obj = ("Attr_Size"); getPipelineDictionary().put("SizeAttributeName", temp_obj);} %><div class="list-item-row"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><!-- Product Image --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showImage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><div class="col-sm-2 list-item"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showImage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null)%>"><% processOpenTag(response, pageContext, "productimage", new TagParameter[] {
new TagParameter("Class","img-responsive"),
new TagParameter("ProductBO",getObject("ProductBO")),
new TagParameter("ImageType","S")}, 16); %></a><% } %></div><% } %><!-- Product Title and Details -->
<div class="col-sm-4 list-item">
<a class="product-title" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><br /><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:String(ColorAttributeName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.productnotification.table.item.color","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:String(ColorAttributeName)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductBO:String(SizeAttributeName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><% {out.write(localizeISText("account.productnotification.table.item.size","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:String(SizeAttributeName)"),"#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/><% } %><% processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CustomerBO")}, 34); %><% processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 35); %><% {Object temp_obj = (getObject("ProductBO:Extension(\"Pricing\")")); getPipelineDictionary().put("ProductPrice", temp_obj);} %><% {Object temp_obj = (getObject("ProductPrice:Price(\"SalePrice\",Currency,ProductPriceContext)")); getPipelineDictionary().put("SalePrice", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SalePrice:Range"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><span><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("SalePrice:PriceRange:MinimumPrice"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(getObject("SalePrice:Price:Available"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><span><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("SalePrice:Price"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span><% } else { %><span><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ProductBO:Price"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span><% }} %><% processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("ProductBO",getObject("ProductBO"))}, 47); %></div><% } else { %><div class="col-sm-4 list-item"><% {out.write(localizeISText("account.productnotification.table.item.product_unavailable","",null,null,null,null,null,null,null,null,null,null,null));} %></div><% } %><!-- Notification -->
<div class="col-sm-4 list-item"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ListItem:HandlerClassName"),null).equals(context.getFormattedValue("com.intershop.component.mvc.capi.alert.PriceConditionHandler",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "productpriceadditionaltext", new TagParameter[] {
new TagParameter("SetAsDictionaryValue","true"),
new TagParameter("ProductPriceAdditionalText","ProductPriceAdditionalText"),
new TagParameter("ProductBO",getObject("ProductBO"))}, 58); %><% {out.write(localizeISText("account.productnotification.table.item.price_notification",null,null,encodeString(context.getFormattedValue(getObject("ListItem:NotificationMailAddress"),null)),context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ListItem:Value"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ProductPriceAdditionalText"),null)),null),null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("account.productnotification.table.item.stock_notification",null,null,encodeString(context.getFormattedValue(getObject("ListItem:NotificationMailAddress"),null)),null,null,null,null,null,null,null,null,null));} %><% } %></div>
<!-- Buttons -->
<div class="col-sm-2 list-item text-right text-left-xs">
<!-- Edit --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductBO:Online"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><a class="btn btn-tool" title="<% {out.write(localizeISText("account.productnotification.table.item.edit","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-dialog href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-ViewAlertForm",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)).addURLParameter(context.getFormattedValue("AlertUUID",null),context.getFormattedValue(getObject("ListItem:UUID"),null))),null)%>"><span class="glyphicon glyphicon-pencil"></span></a><% } %><!-- Remove -->
<a class="btn btn-tool" title="<% {out.write(localizeISText("account.wishlist.table.options.remove","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-dialog href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductNotification-GetRemoveAlertConfirmation",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("AjaxRequestMarker",null),context.getFormattedValue("true",null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)).addURLParameter(context.getFormattedValue("AlertUUID",null),context.getFormattedValue(getObject("ListItem:UUID"),null))),null)%>"><span class="glyphicon glyphicon-trash"></span></a>
</div>
</div><% printFooter(out); %>