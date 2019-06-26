<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {try{String currentCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.PAGECACHE_HEADER);if (currentCacheTime!=null && "00".equals(currentCacheTime)) {Logger.debug(this, "ISCACHE declaration is ignored since a prior 'forbidden'.");}else {long time = System.currentTimeMillis()/1000;long minute=0;if (minute <0) minute=0;long hour=24;if (hour <0)  hour=0;time += 60*minute+3600*hour;String extCacheTime = (String)((com.intershop.beehive.core.capi.request.ServletResponse)response).getHeaderValue(TemplateConstants.EXT_PAGECACHE_HEADER);Long oldTime=(currentCacheTime!=null)?Long.valueOf(currentCacheTime):(extCacheTime!=null)?Long.valueOf(extCacheTime):null;if (oldTime!=null && oldTime<time) {Logger.debug(this, "ISCACHE declaration is ignored since a prior declaration with a smaller caching period.");response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(oldTime));}else if (oldTime!=null && oldTime>time) {Logger.debug(this, "ISCACHE declaration reduces a caching period set by a prior declaration.");}if (oldTime==null || oldTime>time){if (time > Integer.MAX_VALUE){  time = Integer.MAX_VALUE;} response.setHeader(TemplateConstants.PAGECACHE_HEADER, String.valueOf(time));}}}catch(Exception e){Logger.error(this,"ISCACHE failed. Line: {2}",e);}} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("SearchResult:Hits") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SuggestSearchIndex:SearchIndexFeature:FeatureID"),null).equals(context.getFormattedValue("SFObjectSuggestSearch",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<ul class="suggest-results-list">
		<% {Object temp_obj = (getObject("SearchResult:HitsBySuggestType(\"product\")")); getPipelineDictionary().put("ProductHits", temp_obj);} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ProductHits") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue("ShowProducts",null).equals(context.getFormattedValue("ShowProducts",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %> 
			<li class="sectionHeader"><% {out.write(localizeISText("search.result.type.product.label","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
			<% {Object temp_obj = (getObject("ApplicationBO:Repository(\"ProductBORepository\")")); getPipelineDictionary().put("ProductBORepository", temp_obj);} %>
			<% while (loop("ProductHits","Hit",null)) { %>
				<li>
					
					
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProduct-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("Hit:Product:SKU"),null)))),null)%>" data-search-result="<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:Query"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";out.write(value);} %>" class="search-result">
						<div>
							<span class="left">
								<% {Object temp_obj = (getObject("ProductBORepository:ProductBOBySKU(Hit:Product:SKU)")); getPipelineDictionary().put("ProductBO", temp_obj);} %>
								<img src="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:PrimaryImageBO(\"S\"):EffectiveUrl"),null)),null)%>" />
								<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Hit:Query"),null),(String)(context.getFormattedValue("(?i)(\\Q",null) + context.getFormattedValue(getObject("SearchTerm"),null) + context.getFormattedValue("\\E)",null)),(String)("<span class=\"ish-searchTerm\">$1</span>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";out.write(value);} %>
							</span>
							<span class="right">
								<% {String value = null;try{value=context.getFormattedValue(getObject("ProductBO:Price"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
							</span>
							<span class="clearfix"></span>
						</div>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Hit") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %><div class="border"></div><% } %>
					</a>
				</li>
			<% } %>
		<% } %>

		<% {Object temp_obj = (getObject("SearchResult:HitsBySuggestType(\"category\")")); getPipelineDictionary().put("CategoryHits", temp_obj);} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("CategoryHits") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue("ShowCategories",null).equals(context.getFormattedValue("ShowCategories",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %> 
			<li class="sectionHeader"><% {out.write(localizeISText("search.result.type.category.label","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
			<% while (loop("CategoryHits","Hit",null)) { %>
				<li class="textOnly">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewStandardCatalog-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Hit:Catalog:Id"),null))).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("Hit:Category:Name"),null))),null)%>" data-search-result="<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";out.write(value);} %>" class="search-result">
						<div>
							<span class="left"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Hit:Category:DisplayName"),null),(String)(context.getFormattedValue("(?i)(\\Q",null) + context.getFormattedValue(getObject("SearchTerm"),null) + context.getFormattedValue("\\E)",null)),(String)("<span class=\"ish-searchTerm\">$1</span>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";out.write(value);} %></span>
							<span class="right">(<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:HitCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</span>
							<span class="clearfix"></span>
						</div>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Hit") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><div class="border"></div><% } %>
					</a>
				</li>
			<% } %>
		<% } %>

		<% {Object temp_obj = (getObject("SearchResult:HitsBySuggestType(\"brand\")")); getPipelineDictionary().put("BrandHits", temp_obj);} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("BrandHits") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue("ShowBrands",null).equals(context.getFormattedValue("ShowBrands",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %> 
			<li class="sectionHeader"><% {out.write(localizeISText("search.result.type.brand.label","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
			<% while (loop("BrandHits","Hit",null)) { %>
				<li class="textOnly">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewParametricSearch-SimpleOfferSearch",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SearchTerm",null),context.getFormattedValue(getObject("Hit:Query"),null)))),null)%>" data-search-result="<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:Query"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";out.write(value);} %>" class="search-result">
						<div>
							<span class="left"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Hit:Query"),null),(String)(context.getFormattedValue("(?i)(\\Q",null) + context.getFormattedValue(getObject("SearchTerm"),null) + context.getFormattedValue("\\E)",null)),(String)("<span class=\"ish-searchTerm\">$1</span>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";out.write(value);} %></span>
							<span class="right">(<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:HitCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</span>
							<span class="clearfix"></span>
						</div>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Hit") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><div class="border"></div><% } %>
					</a>
				</li>
			<% } %>
		<% } %>

		<% {Object temp_obj = (getObject("SearchResult:HitsBySuggestType(\"content\")")); getPipelineDictionary().put("ContentHits", temp_obj);} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ContentHits") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue("ShowContents",null).equals(context.getFormattedValue("ShowContents",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %> 
			<li class="rcol sectionHeader"><% {out.write(localizeISText("search.result.type.content.label","",null,null,null,null,null,null,null,null,null,null,null));} %></li>
			<% while (loop("ContentHits","Hit",null)) { %>
				<li class="rcol textOnly">
					<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContent-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointID",null),context.getFormattedValue(getObject("Hit:Reference"),null)))),null)%>" data-search-result="<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:Query"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";out.write(value);} %>" class="search-result">
						<div>
							<span class="left"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Hit:Query"),null),(String)(context.getFormattedValue("(?i)(\\Q",null) + context.getFormattedValue(getObject("SearchTerm"),null) + context.getFormattedValue("\\E)",null)),(String)("<span class=\"ish-searchTerm\">$1</span>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {72}",e);}if (value==null) value="";out.write(value);} %></span>
							<span class="right">(<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:HitCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</span>
							<span class="clearfix"></span>
						</div>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("Hit") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><div class="border"></div><% } %>
					</a>
				</li>
			<% } %>
		<% } %>
		
		
	</ul>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SearchResult:Hits") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %>
	<ul class="suggest-results-list">
		<% while (loop("SearchResult:Hits","Hit",null)) { %>
			<li class="classic"><button type="button" data-search-result="<% {String value = null;try{value=context.getFormattedValue(getObject("Hit:Query"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";out.write(value);} %>" class="search-result"><% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("Hit:Query"),null),(String)(context.getFormattedValue("(?i)(\\Q",null) + context.getFormattedValue(getObject("SearchTerm"),null) + context.getFormattedValue("\\E)",null)),(String)("<span class=\"ish-searchTerm\">$1</span>")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";out.write(value);} %></button></li>
		<% } %>
	</ul>
<% }} %>

<% printFooter(out); %>