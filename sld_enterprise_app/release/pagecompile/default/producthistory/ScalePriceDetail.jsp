<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("AddedPriceScales") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("UpdatedPriceScales") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("DeletedPriceScales") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} %><tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 aldi" colspan="7"><% {out.write(localizeISText("ScalePriceDetail.ScaledPrices.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AddedPriceScales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="7"><% {out.write(localizeISText("ScalePriceDetail.TheFollowingScaledPricesWereAdded.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ScalePriceDetail.PriceListID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.ValidFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.ValidTo.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.Quantity.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s">&nbsp;</td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.PriceDiscount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AddedPriceScales",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedPriceScales:PriceListID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedPriceScales:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AddedPriceScales:ValidFrom"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AddedPriceScales:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AddedPriceScales:ValidTo"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("AddedPriceScales:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedPriceScales:QuantityLevel"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddedPriceScales:EntryTypeCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedPriceScales:SingleBasePrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedPriceScales:Percentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;%</td><% } %></tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdatedPriceScales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="7"><% {out.write(localizeISText("ScalePriceDetail.TheFollowingScaledPricesWereUpdated.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ScalePriceDetail.PriceListID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.ValidFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.ValidTo.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.Quantity.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.OldPriceDiscount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.NewPriceDiscount.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("UpdatedPriceScales",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:PriceListID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:ValidFrom"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:ValidTo"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:QuantityLevel"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:EntryTypeCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:SingleBasePrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:OldSnapShot:Percentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;%</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("UpdatedPriceScales:NewSnapShot:EntryTypeCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:NewSnapShot:SingleBasePrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedPriceScales:NewSnapShot:Percentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;%</td><% } %></tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("DeletedPriceScales") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="7"><% {out.write(localizeISText("ScalePriceDetail.TheFollowingListScaledPricesWereDeleted.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ScalePriceDetail.PriceListID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.Currency.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.ValidFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.ValidTo.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.Quantity.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ScalePriceDetail.PriceDiscount.table_header1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s">&nbsp;</td>
</tr><% while (loop("DeletedPriceScales",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedPriceScales:PriceListID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {95}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedPriceScales:Currency:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("DeletedPriceScales:ValidFrom"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("DeletedPriceScales:ValidFrom"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {97}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("DeletedPriceScales:ValidTo"),new Integer(DATE_INPUT)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("DeletedPriceScales:ValidTo"),new Integer(DATE_TIME)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedPriceScales:QuantityLevel"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DeletedPriceScales:EntryTypeCode"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedPriceScales:SingleBasePrice"),new Integer(MONEY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td><% } else { %><td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedPriceScales:Percentage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;%</td><% } %><td class="table_detail e s top">&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr><% } %><% printFooter(out); %>