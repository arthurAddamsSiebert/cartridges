<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "4");} %><% processOpenTag(response, pageContext, "getproductpricecontext", new TagParameter[] {
new TagParameter("CustomerBO",getObject("CustomerBO")),
new TagParameter("ProductPriceContext","ProductPriceContext")}, 6); %><html>
<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %><title>Untitled</title>
</head><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (((!(context.getFormattedValue(getObject("AUTOSUBMIT"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("FUNCTION"),null).equals(context.getFormattedValue("BACKGROUND_SEARCH",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("AUTOSUBMIT"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %> 
<body><% } else { %><body onload="onLoad()">
<script language="JavaScript">
<!--
function onLoad()
{
form.submit();
}
// -->
</script>
<noscript>
<b>JavaScript is not enabled but required for this page ...</b> 
</noscript> 
<% } %><form name="form" method="post" action="<% {String value = null;try{value=context.getFormattedValue(getObject("PunchoutRequest:ReturnURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" data-testing-id="oci-basket"><% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("FUNCTION"),null).equals(context.getFormattedValue("BACKGROUND_SEARCH",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %> 
<% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("index", temp_obj);} %><% while (loop("CurrentCartBO:ProductLineItemBOs","PLI",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) getObject("PLI:HiddenGift")).booleanValue() || ((Boolean) getObject("PLI:FreeGift")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("index")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("index", temp_obj);} %><% {Object temp_obj = (getObject("PLI:Extension(\"Warranty\")")); getPipelineDictionary().put("PLIWarranty", temp_obj);} %><% processOpenTag(response, pageContext, "ocifieldsbasketpli", new TagParameter[] {
new TagParameter("ociFieldIndex",getObject("index")),
new TagParameter("ConfigurationData",getObject("ConfigurationData")),
new TagParameter("PLI",getObject("PLI"))}, 42); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PLIWarranty:BasketWarrantyLineItem"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("index")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("index", temp_obj);} %><% processOpenTag(response, pageContext, "ocifieldsbasketpli", new TagParameter[] {
new TagParameter("ociFieldIndex",getObject("index")),
new TagParameter("useRelatedWarrantyFlag","true"),
new TagParameter("ConfigurationData",getObject("ConfigurationData")),
new TagParameter("PLI",getObject("PLI"))}, 45); %><% } %><% } %><% } %><% } else { %><% while (loop("ProductBOs","ProductBO","index")) { %> 
<% {Object temp_obj = (getObject("ProductBO:Extension(\"Punchout\")")); getPipelineDictionary().put("ProductBOPunchout", temp_obj);} %><% while (loop("ConfigurationData:ConfigurationFieldsList","ociFieldName",null)) { %><% {Object temp_obj = (getObject("ProductBOPunchout:Value(ociFieldName,PunchoutUserBO,CurrentRequest:Currency)")); getPipelineDictionary().put("ociFieldValue", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ociFieldValue"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ociFieldName"),null).equals(context.getFormattedValue("NEW_ITEM-LONGTEXT",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ociFieldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_<% {String value = null;try{value=context.getFormattedValue(getObject("index"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:132[]" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ociFieldValue"),null)),null)%>"><% } else { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ociFieldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>[<% {String value = null;try{value=context.getFormattedValue(getObject("index"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>]" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ociFieldValue"),null)),null)%>"><% } %><% } %><% } %><% } %><% } %></form>
</body>
</html><% printFooter(out); %>