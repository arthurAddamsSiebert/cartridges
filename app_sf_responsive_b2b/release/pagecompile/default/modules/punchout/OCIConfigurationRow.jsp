<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && !"00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE 'forbidden' overwrites prior caching declaration.");}response.setHeader(TemplateConstants.PAGECACHE_HEADER, "00");}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %><div class="list-item-row" data-testing-class="row-oci-punchout-configuration">
<div class="col-sm-4 list-item control-label" data-testing-class="row-label"><% {String value = null;try{value=context.getFormattedValue(getObject("FieldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
<div class="col-sm-4 list-item">
<input type="text" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("FieldTransform"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="OCIConfigurationForm_OCI.<% {String value = null;try{value=context.getFormattedValue(getObject("FieldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.VALUE"
data-testing-class="row-transform"
size="18"
maxlength="256"
class="form-control"
/>
</div>
<div class="col-sm-4 list-item">
<select 
name="OCIConfigurationForm_OCI.<% {String value = null;try{value=context.getFormattedValue(getObject("FieldName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.FORMAT"
data-testing-class="row-format"
class="form-control">
<option value=""><% {out.write(localizeISText("punchout.configuration.formatter.displayname.None","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("PunchoutPlaceholderFormatterProvider:FormatterIds","FormatterID",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("FormatterID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("FieldFormat"),null).equals(context.getFormattedValue(getObject("FormatterID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>selected="selected"<% } %>
><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("punchout.configuration.formatter.displayname.",null) + context.getFormattedValue(getObject("FormatterID"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select>
</div>
</div><% printFooter(out); %>