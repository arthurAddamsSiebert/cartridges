<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/sitemap/Modules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><ul class="sitemap-category-list" data-testing-id="sitemap-category-list"><% while (loop("CategoryBOs","CategoryBO","CategoryCount")) { %><% {Object key_obj = getObject("CategoryBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("CategoryBO"));} %><li><% {Object temp_obj = (getObject("CategoryBO:AccessibleSubCatalogCategoryBOs")); getPipelineDictionary().put("AccessibleSubCatalogCategoryBOs", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AccessibleSubCatalogCategoryBOs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStandardCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CategoryBO:CatalogBO:Name"),null))).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSitemap-ProductList",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("CategoryBO:CatalogBO:Name"),null))).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %><% processOpenTag(response, pageContext, "sitemapcategorylist", new TagParameter[] {
new TagParameter("CategoryBOs",getObject("AccessibleSubCatalogCategoryBOs"))}, 16); %></li><% } %></ul><% } %><% printFooter(out); %>