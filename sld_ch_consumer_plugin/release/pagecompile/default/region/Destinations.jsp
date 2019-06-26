<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: region/Destinations.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td colspan="2">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td class="table_title2 s n"><% {out.write(localizeISText("Destinations.Include.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td>
		<table cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td colspan="2">
					<table border="0" cellpadding="0" cellspacing="0" width="100%">
						<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Region"),
new TagParameter("key2","Locale"),
new TagParameter("key0","Domain"),
new TagParameter("value2",getObject("CurrentRequest:Locale")),
new TagParameter("value1",getObject("Region")),
new TagParameter("value0",getObject("RegionRepository:GeoObjectsDomain")),
new TagParameter("mapname","RegionParams")}, 18); %>
						<% {try{executePipeline("ProcessRegion-GetCountriesByRegion",((java.util.Map)(getObject("RegionParams"))),"CountriesDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 22.",e);}} %>
						<% {try{executePipeline("ProcessRegion-GetStatesProvincesByRegion",((java.util.Map)(getObject("RegionParams"))),"StatesProvincesDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 23.",e);}} %>
						<% {try{executePipeline("ProcessRegion-GetLocationsByRegion",((java.util.Map)(getObject("RegionParams"))),"LocationsDic");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} %>  
				
						<tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Region"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
								<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/CountryList", null, "28");} %>
								<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/StateProvinceList", null, "29");} %>
								<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"region/LocationList", null, "30");} %>
							<% } %>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</td>
</tr>
<% printFooter(out); %>