<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Order"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(getObject("Order:DocumentNo"),null) + context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("OrderPromotions_52.Breadcrumb.Promotions.text",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSellerOrder-FindByNumber",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrderID",null),context.getFormattedValue(getObject("Order:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID1",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null)))),
new TagParameter("wizard","true"),
new TagParameter("id",getObject("Order:UUID")),
new TagParameter("text",context.getFormattedValue(localizeText(context.getFormattedValue("OrderPromotions_52.Order.text",null)),null) + context.getFormattedValue(": ",null))}, 5); %><% } %><% {Object temp_obj = ("Promotions"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"order/OrderTabs_52", null, "8");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Order"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("OrderBO:Extension(\"AppliedRebate\")")); getPipelineDictionary().put("OrderAppliedRebate", temp_obj);} %><% {Object temp_obj = (getObject("OrderBO:NetCalculation")); getPipelineDictionary().put("OrderPriceTypeNet", temp_obj);} %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td>
<input type="hidden" name="OrderID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Order:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("OrderPromotions_52.Order.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("OrderBO:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="100%" class="w e s" colspan="4"><img height="2" width="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
</tr>
<tr>
<td class="table_title2 w e s" colspan="4" width="100%" ><% {out.write(localizeISText("OrderPromotions_52.OrderPromotions.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("OrderPromotions_52.AllOrderPromotionsThatApplyToOrder.table_title_description",null,null,context.getFormattedValue(getObject("OrderBO:DocumentNo"),null),null,null,null,null,null,null,null,null,null));} %> </td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrderAppliedRebate:AppliedOrderValueRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% while (loop("OrderAppliedRebate:AppliedOrderValueRebates","orderAppliedRebate",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="20%" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("orderAppliedRebate:RebateBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_MARKETING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("orderAppliedRebate:RebateBO:PromotionBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><br />(<% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" width="10%" ><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderPriceTypeNet"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:AmountNet:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:AmountGross:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="20%" ><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("orderAppliedRebate:Code"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderPromotions_52.CodesUsed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: [<% {String value = null;try{value=context.getFormattedValue(getObject("orderAppliedRebate:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>]<% } else { %>&nbsp;<% } %></td>
</tr><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="20%" ><b><% {out.write(localizeISText("OrderPromotions_52.Total.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail e s" nowrap="nowrap" width="10%" ><b><% {String value = null;try{value=context.getFormattedValue(getObject("OrderAppliedRebate:ValueRebatesTotal:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b></td>
<td class="table_detail e s" colspan="2">&nbsp;</td>
</tr><% } else { %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="100%" colspan="4"><% {out.write(localizeISText("OrderPromotions_52.NoOrderPromotionsForThisOrder.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
</tr><% } %></table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="4" width="100%" ><% {out.write(localizeISText("OrderPromotions_52.ShippingPromotions.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("OrderPromotions_52.AllShippingPromotionsThatApplyToOrder.table_title_description",null,null,context.getFormattedValue(getObject("OrderBO:DocumentNo"),null),null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrderAppliedRebate:AppliedShippingRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% while (loop("OrderAppliedRebate:AppliedShippingRebates","shippingAppliedRebate",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="20%" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("shippingAppliedRebate:RebateBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_MARKETING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("shippingAppliedRebate:RebateBO:PromotionBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><br />(<% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {91}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {93}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" width="10%" ><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderPriceTypeNet"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",97,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:AmountNet:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:AmountGross:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="20%" ><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("shippingAppliedRebate:Code"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderPromotions_52.CodesUsed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: [<% {String value = null;try{value=context.getFormattedValue(getObject("shippingAppliedRebate:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>]<% } else { %>&nbsp;<% } %></td>
</tr><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="20%" ><b><% {out.write(localizeISText("OrderPromotions_52.Total.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail e s" nowrap="nowrap" width="10%" ><b><% {String value = null;try{value=context.getFormattedValue(getObject("OrderAppliedRebate:ShippingRebatesTotal:Negated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b></td>
<td class="table_detail e s" colspan="2">&nbsp;</td>
</tr><% } else { %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="100%" colspan="4"><% {out.write(localizeISText("OrderPromotions_52.NoShippingPromotionsForThisOrder.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
</tr><% } %></table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="table_title2 w e s" colspan="4" width="100%"><% {out.write(localizeISText("OrderPromotions_52.LineItemPromotions.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="table_title_description w e s" colspan="4"><% {out.write(localizeISText("OrderPromotions_52.AllLineItemPromotionsThatApplyToIndividual.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("OrderAppliedRebate:AppliedItemValueRebates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %><% while (loop("OrderAppliedRebate:AppliedItemValueRebates","lineItemAppliedRebate",null)) { %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="20%" ><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("lineItemAppliedRebate:RebateBO")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_MARKETING")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",130,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("lineItemAppliedRebate:RebateBO:PromotionBO:Extension(\"PersistentObjectBOExtension\"):PersistentObject:UUID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {132}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:RebateBO:PromotionBO:DisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {135}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><br />(<% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {137}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)
<% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:PromotionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" width="10%" ><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OrderPriceTypeNet"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",143,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:AmountNet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {144}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:AmountGross"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {146}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td>
<td class="table_detail e s" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s" width="20%" ><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("lineItemAppliedRebate:Code"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><% {out.write(localizeISText("OrderPromotions_52.CodesUsed.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>: [<% {String value = null;try{value=context.getFormattedValue(getObject("lineItemAppliedRebate:Code"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>]<% } else { %>&nbsp;<% } %></td>
</tr><% } %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="20%" ><b><% {out.write(localizeISText("OrderPromotions_52.Total.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail e s" nowrap="nowrap" width="10%" ><b><% {String value = null;try{value=context.getFormattedValue(getObject("OrderAppliedRebate:ItemValueRebatesTotal"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b></td>
<td class="table_detail e s" colspan="2">&nbsp;</td>
</tr><% } else { %><tr>
<td class="table_detail w e s" nowrap="nowrap" width="100%" colspan="4"><% {out.write(localizeISText("OrderPromotions_52.NoLineItemPromotionsForThisOrder.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> </td>
</tr><% } %></table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "164");} %></td>
</tr>
</table><% } %><% printFooter(out); %>