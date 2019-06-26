<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr><td colspan="2"><img height="4" width="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td></tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Country"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("address:Extension(\"Store\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.StoreID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr> 
<% } else { %><tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.Title.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr> 
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:FirstName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" width="100%"><% {String value = null;try{value=context.getFormattedValue(getObject("address:LastName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.AddressLine1.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.AddressLine2.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Street2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.AddressLine3.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:Street3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.City.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.StateProvince.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:State"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.ZipPostalCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr>
<td class="label" nowrap="nowrap"><label class="label label_light"><% {out.write(localizeISText("OrderAddressInfo_52.Phone.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("address:PhoneHome"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
<tr><td colspan="2"><img height="4" width="1" border="0" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td></tr><% printFooter(out); %>