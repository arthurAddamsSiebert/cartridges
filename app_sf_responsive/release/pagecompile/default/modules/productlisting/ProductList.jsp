<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ProductBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("CatalogBO:Extension(\"Inventory\")")); getPipelineDictionary().put("CatalogCategoryInventory", temp_obj);} %><% {Object temp_obj = (getObject("CatalogCategoryInventory:InventoryStatusForProductsInWarehouse(ProductBOs)")); getPipelineDictionary().put("InventoryMappings", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("maxNumberOfProducts"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("maxNumberOfProducts")).doubleValue() *((Number) new Double(1.0)).doubleValue()))); getPipelineDictionary().put("maxNumberOfProducts", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("listBehavior")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("listBehavior"),null).equals(context.getFormattedValue("carousel",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><div class="product-list slick-carousel" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("numberOfProductsPerSlide"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
data-slick='{"slidesToShow": 1, "slidesToScroll": 1}'
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("numberOfProductsPerSlide"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
data-slick='{"slidesToShow": 2, "slidesToScroll": 2}'
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("numberOfProductsPerSlide"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
data-slick='{"slidesToShow": 3, "slidesToScroll": 3, "responsive": [{"breakpoint": 992, "settings": {"slidesToShow": 2, "slidesToScroll": 2}}]}'
<% } else { %>
data-slick='{"slidesToShow": 4, "slidesToScroll": 4, "responsive": [{"breakpoint": 992, "settings": {"slidesToShow": 3, "slidesToScroll": 3}}, {"breakpoint": 768, "settings": {"slidesToShow": 2, "slidesToScroll": 2}}]}'
<% }}} %>
><% } else { %><div class="product-list row"><% } %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ProductsCounter", temp_obj);} %><% while (loop("ProductBOs","ProductBO",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("ProductBO:Online")).booleanValue() && ((Boolean) getObject("ProductBO:Accessible")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ProductsCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ProductsCounter", temp_obj);} %><% {Object temp_obj = (getObject("ProductBO")); getPipelineDictionary().put("ProductBO", temp_obj);} %><% {Object temp_obj = (getObject("InventoryMappings:get(ProductBO:ProductRef)")); getPipelineDictionary().put("InventoryStatus", temp_obj);} %><% {Object temp_obj = (getObject("ListNavigationVO:SearchResult:FilteredVariationsCount(ProductBO:ProductBOMaster:ID)")); getPipelineDictionary().put("FilteredVariationsCount", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FilteredVariationsCount")))).booleanValue() && ((Boolean) ((( ((Number) getObject("FilteredVariationsCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ListNavigationVO:SearchResult:Query")); getPipelineDictionary().put("SearchParameter", temp_obj);} %><% } else { %><% {Object temp_obj = (""); getPipelineDictionary().put("SearchParameter", temp_obj);} %><% } %><% {Object key_obj = getObject("ProductBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("ProductBO"));} %><div class="product-list-item <% {String value = null;try{value=context.getFormattedValue(getObject("listItemCssClass"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("SearchParameter"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>data-search="<% {String value = null;try{value=context.getFormattedValue(getObject("SearchParameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value,"url");out.write(value);} %>"<% } %>><% processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","RenderEntityID")}, 46); %><% processOpenTag(response, pageContext, "renderentityrenderingstart", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("ProductBO")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 47); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("viewContext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "viewcontext", new TagParameter[] {
new TagParameter("ViewContext",getObject("viewContext"))}, 49); %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("viewContextID")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("viewContextResourceSet")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "viewcontext", new TagParameter[] {
new TagParameter("ID",getObject("viewContextID")),
new TagParameter("ResourceSet",getObject("viewContextResourceSet"))}, 51); %><% }} %><% processOpenTag(response, pageContext, "renderentityrenderingend", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("ProductBO")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 53); %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("maxNumberOfProducts")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ProductsCounter"),null).equals(context.getFormattedValue(getObject("maxNumberOfProducts"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",56);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %></div><% processOpenTag(response, pageContext, "includetrackingtool", new TagParameter[] {
new TagParameter("template","RecommendationsTracking")}, 62); %><% } %><% printFooter(out); %>