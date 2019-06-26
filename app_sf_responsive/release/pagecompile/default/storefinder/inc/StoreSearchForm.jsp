<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="form-group">
<div><% processOpenTag(response, pageContext, "fielderrormessageplaceholder", new TagParameter[] {
new TagParameter("fieldname",getObject("StoreFinderForm:CountryCode")),
new TagParameter("ext_string_prefix","account.default_address.country")}, 4); %></div>
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:CountryCode:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("store.country.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("StoreFinderForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("StoreFinderForm:CountryCode:QualifiedName")),
new TagParameter("showalloption","true"),
new TagParameter("countrycode",getObject("StoreFinderForm:CountryCode:Value"))}, 8); %><% } else { %><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter",getObject("StoreFinderForm:CountryCode:QualifiedName")),
new TagParameter("showalloption","true"),
new TagParameter("countrycode","All")}, 10); %><% } %></div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:PostalCode:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("store.zip_code.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input class="form-control"
type="text"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:PostalCode:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:PostalCode:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:PostalCode:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:City:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("store.city.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<input class="form-control"
type="text"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:City:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:City:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:City:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
/>
</div>
</div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StoreFinderForm:CountryCode:Value")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("StoreFinderForm:CountryCode:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {try{executePipeline("ProcessRegion-GetStates",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("CountryCode",getObject("StoreFinderForm:CountryCode:Value"))))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 40.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Result:StatesProvinces") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><div class="form-group">
<label class="control-label col-sm-4" for="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:State:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("store.state.label","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
<div class="col-sm-8">
<select class="form-control" name="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:State:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(getObject("StoreFinderForm:State:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="1">
<option value=""> <% {out.write(localizeISText("store.state.option.search_all","",null,null,null,null,null,null,null,null,null,null,null));} %> </option><% while (loop("Result:StatesProvinces","StateProvince",null)) { %><option value = "<% {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("StateProvince:Id"),null).equals(context.getFormattedValue(getObject("StoreFinderForm:State:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>selected = "selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("StateProvince:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %></select>
</div>
</div><% } %><% } %><div class="form-group">
<div class="col-sm-offset-4 col-sm-8">
<button class="btn btn-primary" type="submit" name="search"><% {out.write(localizeISText("store.search.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
<button class="btn btn-default hidden" type="submit" name="reloadStates"></button>
</div>
</div><% printFooter(out); %>