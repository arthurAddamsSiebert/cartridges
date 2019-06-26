<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {3}",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "4");} %><% context.setCustomTagTemplateName("quickorderitem","quickorder/QuickorderItem",true,new String[]{"key","Quantities","SKUs","errors","maxItemQuantity"},null); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","User"),
new TagParameter("value0",getObject("CurrentUser")),
new TagParameter("mapname","PipelineParameters")}, 11); %><% {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(getObject("PipelineParameters"))),"BusinessObjectDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 12.",e);}} %><% {Object temp_obj = (getObject("BusinessObjectDict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} %><% {try{executePipeline("ViewCart-GetApplicationBasketMaxItemQuantity",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 16.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("dict:BasketMaxItemQuantity"))))).booleanValue() && ((Boolean) ((( ((Number) getObject("dict:BasketMaxItemQuantity")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("dict:BasketMaxItemQuantity")); getPipelineDictionary().put("maxQuantity", temp_obj);} %><% } else { %><% {Object temp_obj = ("9999999999"); getPipelineDictionary().put("maxQuantity", temp_obj);} %><% } %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "breadcrumb", new TagParameter[] {
new TagParameter("trailtext0",localizeText(context.getFormattedValue("quickorder.breadcrumb",null))),
new TagParameter("showhomelink","true")}, 24); %></div>
<div class="clearfix" data-testing-id="page-quickorder">
<div class="row">
<div class="col-md-12">
<h1><% {out.write(localizeISText("quickorder.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
</div>
</div>
<div class="row">
<div class="col-md-8 section">
<div class="alert alert-danger alert-formempty hide"><% {out.write(localizeISText("quickorder.error.formempty",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_FormEmpty"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><div class="alert alert-danger"><% {out.write(localizeISText("quickorder.error.formempty",null,null,null,null,null,null,null,null,null,null,null,null));} %></div><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Errors")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CSVErrors")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><div class="alert alert-danger"><% {out.write(localizeISText("quickorder.error.form_error",null,null,null,null,null,null,null,null,null,null,null,null));} %></div> 
<% }} %><h3><% {out.write(localizeISText("quickorder.orderbyproductid.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<p><% {out.write(localizeISText("quickorder.orderbyproductid.note",null,null,null,null,null,null,null,null,null,null,null,null));} %></p><% URLPipelineAction action4 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-Dispatch",null)))),null));String site4 = null;String serverGroup4 = null;String actionValue4 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-Dispatch",null)))),null);if (site4 == null){  site4 = action4.getDomain();  if (site4 == null)  {      site4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup4 == null){  serverGroup4 = action4.getServerGroup();  if (serverGroup4 == null)  {      serverGroup4 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("quickorderForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue4, site4, serverGroup4,true)); %><input type="hidden" id="Key"/>
<input type="hidden" id="remove"/>
<div class="list-header hidden-xs">
<div class="col-sm-6 list-header-item no-seperator"><% {out.write(localizeISText("quickorder.productid.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-sm-2 list-header-item no-seperator"><% {out.write(localizeISText("quickorder.quantity.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</div>
<div class="list-body section"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Errors")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("SKUsMap")))).booleanValue() && ((Boolean) ((( ((Number) getObject("SKUsMap:Size")).doubleValue() >((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("QuickorderProducts")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><div class="quick-order-rows-container" data-row-count="<% {String value = null;try{value=context.getFormattedValue(getObject("SKUsMap:Size"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("QuickorderProducts",null,"SKUCounter")) { %><div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key",(context.getFormattedValue(getObject("SKUCounter"),null).trim())),
new TagParameter("errors",getObject("Errors"))}, 67); %></div><% } %></div><% } else { %><div class="quick-order-rows-container" data-row-count="5">
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","1"),
new TagParameter("errors",getObject("Errors"))}, 74); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","2"),
new TagParameter("errors",getObject("Errors"))}, 77); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","3"),
new TagParameter("errors",getObject("Errors"))}, 80); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","4"),
new TagParameter("errors",getObject("Errors"))}, 83); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","5"),
new TagParameter("errors",getObject("Errors"))}, 86); %></div>
</div><% } %><div class="add-more-rows section list-item-row section-seperator">
<p><a href="javascript:void(0);"><% {out.write(localizeISText("quickorder.link.text","",null,null,null,null,null,null,null,null,null,null,null));} %></a></p>
</div>
</div>
<div>
<button type="submit" class="btn btn-primary js-quickorder-productvalidation" name="addToCart"><% {out.write(localizeISText("quickorder.button.addtocart.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBO:Extension(\"UserBORoleExtension\"):hasPermission(\"APP_B2B_MANAGE_ALL_QUOTES\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %> 
<button type="submit" class="btn btn-default js-quickorder-productvalidation" name="addToQuote"><% {out.write(localizeISText("quickorder.button.addtoquoterequest.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% } %><button type="reset" class="btn btn-link" name="reset"><% {out.write(localizeISText("quickorder.button.reset.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %></div>
<div class="col-md-4 section">
<h3><% {out.write(localizeISText("quickorder.uploadcsv.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h3>
<p><% {out.write(localizeISText("quickorder.uploadcsv.note",null,null,null,null,null,null,null,null,null,null,null,null));} %></p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Error"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><p class="alert alert-danger"><% {out.write(localizeISText("quickorder.error.WrongInput",null,null,null,null,null,null,null,null,null,null,null,null));} %><br /><% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("quickorder.error.",null) + context.getFormattedValue(getObject("Error"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></p><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CSVErrors"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><p class="alert alert-danger"><% {out.write(localizeISText("quickorder.error.WrongInput",null,null,null,null,null,null,null,null,null,null,null,null));} %><% while (loop("CSVErrors:EntrySet","CSVError",null)) { %><br /><% {out.write(localizeISText("quickorder.error.line","",null,null,null,null,null,null,null,null,null,null,null));} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CSVError:Key"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> - <% {out.write(localizeISText(context.getFormattedValue(context.getFormattedValue("quickorder.error.",null) + context.getFormattedValue(getObject("CSVError:Value"),null),null),"",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></p><% } %> 
<script type="text/javascript">
function beforeSubmit() {
var fname=document.getElementById("CSVFile").value;
// check if fname has the desired extension
var extn=fname.split('.').pop();
if (extn == "csv") {
return true;
} else {
alert("Please select a valid CSV file!");
return false;
}
}
</script><% URLPipelineAction action5 = new URLPipelineAction(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-DispatchUpload",null)))),null));String site5 = null;String serverGroup5 = null;String actionValue5 = context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-DispatchUpload",null)))),null);if (site5 == null){  site5 = action5.getDomain();  if (site5 == null)  {      site5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup5 == null){  serverGroup5 = action5.getServerGroup();  if (serverGroup5 == null)  {      serverGroup5 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,context.getFormattedValue(getObject("SecureURL"),null), context.getFormattedValue("",null), (new URLPipelineAction(context.getFormattedValue("ViewQuickorder-DispatchUpload",null)))),null));out.print("\"");out.print(" enctype=\"");out.print("multipart/form-data");out.print("\"");out.print(" name=\"");out.print("quickorderFormCSV");out.print("\"");out.print(" onsubmit=\"");out.print("return beforeSubmit();");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue5, site5, serverGroup5,true)); %><div class="form-group section section-seperator">
<input type="file" name="CSVFile" id="CSVFile" size="35" class="form-control" />
</div>
<div>
<button type="submit" class="btn btn-primary" name="addToCartCSV"><% {out.write(localizeISText("quickorder.button.addtocart.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("UserBO:Extension(\"UserBORoleExtension\"):hasPermission(\"APP_B2B_MANAGE_ALL_QUOTES\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %> 
<button type="submit" class="btn btn-default" name="addToQuoteCSV"><% {out.write(localizeISText("quickorder.button.addtoquoterequest.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button><% } %><button type="reset" class="btn btn-link" name="reset"><% {out.write(localizeISText("quickorder.byfile.button.reset.label","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div><% out.print("</form>"); %></div>
</div>
</div>
<div class="blank-quick-order-rows" style="display: none;">
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","1")}, 166); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","2")}, 169); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","3")}, 172); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","4")}, 175); %></div>
<div class="list-item-row"><% processOpenTag(response, pageContext, "quickorderitem", new TagParameter[] {
new TagParameter("SKUs",getObject("SKUsMap")),
new TagParameter("Quantities",getObject("Quantities")),
new TagParameter("maxItemQuantity",getObject("maxQuantity")),
new TagParameter("key","5")}, 178); %></div>
</div>
<input type="hidden" id="data-checkSKU-URL" target-url="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuickorder-GetProductAvailabilityStatus",null)))),null)%>" /><% printFooter(out); %>