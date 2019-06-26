<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellpadding="4" cellspacing="0" width="100%" class="infobox">
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.AddressName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top" width="130" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("OrderAddressInfo.Attendee.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("LineItem:Attendee"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("OrderAddressInfo.CompanyName.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:CompanyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("OrderAddressInfo.AddressLine1.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Field1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("OrderAddressInfo.AddressLine2.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Field2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("OrderAddressInfo.AddressLine3.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Field3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Title.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.FirstName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("address:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("UpdateUserAddress.Street.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_item top" colspan="2">&nbsp;</td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("OrderAddressInfo.ZipPostalCode.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.City.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.State.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:State"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="infobox_title top" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="infobox_item top"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table><% printFooter(out); %>