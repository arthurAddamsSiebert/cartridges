<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><div class="sitemap-navigation">
<nav class="navbar navbar-default">
<ul class="nav navbar-nav"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("RenderType"),null).equals(context.getFormattedValue("CategoryRange",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% while (loop("CategoryRangesMap:KeySet","CurrentRange",null)) { %><% {NamingMgr.getManager(PageCacheMgr.class).getKeywords().add(context.getFormattedValue(getObject("CurrentRange"),null));} %><li <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentRange"),null).equals(context.getFormattedValue(getObject("SelectedRange"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
class="active"
<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CurrentRange"),null).equals(context.getFormattedValue(getObject("SelectedRange"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><a><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRange"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CategoryRangesMap:get(CurrentRange)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSitemap-BrowseCategoryRange",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Range",null),context.getFormattedValue(getObject("CurrentRange"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRange"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><a><% {String value = null;try{value=context.getFormattedValue(getObject("CurrentRange"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% }} %></li><% } %><% } else { %><% while (loop("CategoryBOs","CategoryBO",null)) { %><% {Object key_obj = getObject("CategoryBO"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("CategoryBO"));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("CategoryBO"),null).equals(context.getFormattedValue(getObject("SelectedCategoryBO"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><li class="active">
<a><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><li>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSitemap-BrowseCategory",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryBOName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null)))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("CategoryBO:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %></li><% } %><% } %></ul>
</nav>
</div><% printFooter(out); %>