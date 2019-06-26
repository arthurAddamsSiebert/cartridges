<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- TEMPLATENAME: requisition/RequisitionAddressInfo.isml -->
<table border="0" cellpadding="3" cellspacing="0">
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="2">
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.CompanyName.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:CompanyName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.AddressLine1.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Field1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.AddressLine2.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Field2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.FirstName.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.LastName.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
</table>
</td>
<td>
<table border="0" cellpadding="0" cellspacing="2" class="w">
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Street.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.ZipPostalCode.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.City.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.State.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:State"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Country.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
</table>
</td>
<td width="100%">
<table border="0" cellpadding="0" cellspacing="2" class="w">
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Email.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Phone1.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:PhoneBusiness"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {61}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Phone2.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:PhoneBusinessDirect"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Fax.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Fax"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {69}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
<tr>
<td class="infobox_item2" nowrap="nowrap"><% {out.write(localizeISText("AddressInfo_32.Website.infobox_item2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:&nbsp;&nbsp;</td>
<td class="infobox_item" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Homepage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table><% printFooter(out); %>