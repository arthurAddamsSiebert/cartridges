<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("AddedProductBundles") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("UpdatedProductBundles") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("DeletedProductBundles") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} %><tr><td class="w e" colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td></tr>
<tr>
<td class="table_title2 w e n" colspan="3"><% {out.write(localizeISText("ProductBundleDetail.Bundle.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ProductBundleDetail.NameID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ProductBundleDetail.MasterProduct.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ProductBundleDetail.DerivedProduct.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AddedProductBundles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% while (loop("AddedProductBundles",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedProductBundles:ProductName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("AddedProductBundles:ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedProductBundles:Quantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top">&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdatedProductBundles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% while (loop("UpdatedProductBundles",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedProductBundles:NewSnapShot:ProductName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedProductBundles:NewSnapShot:ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedProductBundles:NewSnapShot:Quantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top "><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedProductBundles:OldSnapShot:Quantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("DeletedProductBundles") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% while (loop("DeletedProductBundles",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedProductBundles:ProductName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("DeletedProductBundles:ProductID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
<td class="table_detail e s top">&nbsp;</td>
<td class="table_detail e s top "><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedProductBundles:Quantity"),new Integer(QUANTITY_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><% } %><% printFooter(out); %>