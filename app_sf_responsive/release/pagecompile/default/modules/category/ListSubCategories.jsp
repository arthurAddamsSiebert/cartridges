<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {Object key_obj = getObject("categorybo"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("categorybo"));} %><% processOpenTag(response, pageContext, "currentuserbo", new TagParameter[] {
new TagParameter("currentuserbo","UserBO")}, 4); %><% {Object temp_obj = (getObject("categorybo:SortedAccessibleSubCatalogCategoryBOs(UserBO)")); getPipelineDictionary().put("SubCategoriesIterator", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SubCategoriesIterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><div class="non-parametric-panel">
<div class="filter-group">
<ul class="filter-list"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("subcategoriesdepth"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {Object temp_obj = ("20"); getPipelineDictionary().put("subcategoriesdepth", temp_obj);} %><% } else { %><% {Object temp_obj = ((new Double( ((Number) (val(context.getFormattedValue(getObject("subcategoriesdepth"),null)))).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("subcategoriesdepth", temp_obj);} %><% } %><% while (loop("SubCategoriesIterator","SubCategoryBO",null)) { %><% {Object key_obj = getObject("SubCategoryBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("SubCategoryBO"));} %><% processOpenTag(response, pageContext, "uuid", new TagParameter[] {
new TagParameter("name","RenderEntityID")}, 20); %><% processOpenTag(response, pageContext, "renderentityrenderingstart", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("SubCategoryBO")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 21); %><li class="filter-item">
<a class="filter-item-name <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SubCategoryBO"),null).equals(context.getFormattedValue(getObject("activecategorybo"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>filter-selected<% } %>" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStandardCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("SubCategoryBO:Name"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("SubCategoryBO:CatalogBO:Name"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("SubCategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("recursive")))).booleanValue() && ((Boolean) ((((context.getFormattedValue((context.getFormattedValue(getObject("recursive"),null).toLowerCase()),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((( ((Number) (val(context.getFormattedValue(getObject("subcategoriesdepth"),null)))).doubleValue() >((Number)(new Double(0.00))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("categorypath:get(SubCategoryBO:Name)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "listsubcategories", new TagParameter[] {
new TagParameter("activecategorybo",getObject("activecategorybo")),
new TagParameter("categorypath",getObject("categorypath")),
new TagParameter("subcategoriesdepth",getObject("subcategoriesdepth")),
new TagParameter("categorybo",getObject("SubCategoryBO")),
new TagParameter("recursive",getObject("recursive"))}, 27); %><% } %></li><% processOpenTag(response, pageContext, "renderentityrenderingend", new TagParameter[] {
new TagParameter("RenderEntityRenderObject",getObject("SubCategoryBO")),
new TagParameter("RenderEntityID",getObject("RenderEntityID"))}, 36); %><% } %></ul>
</div>
</div><% } %><% printFooter(out); %>