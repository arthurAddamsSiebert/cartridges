<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value1","PageletOverview_Open"),
new TagParameter("value0",context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_DisplayOptions",null)),
new TagParameter("mapname","DisplayOptionParameters")}, 3); %>
		<% {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(getObject("DisplayOptionParameters"))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 6.",e);}} %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("DisplayOption:Value")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
			<% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %>
		<% } else { %>
			<% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %>
		<% } %>

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n w s e">
      <tr>
		<td class="table_title2" nowrap="nowrap">
			<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOption",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayOptionContainerID",null),context.getFormattedValue(context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_DisplayOptions",null),null))).addURLParameter(context.getFormattedValue("DisplayOptionKey",null),context.getFormattedValue("PageletOverview_Open",null)).addURLParameter(context.getFormattedValue("DisplayOptionValue",null),context.getFormattedValue((((Boolean) ((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ,null)).addURLParameter(context.getFormattedValue("ContextPipeline",null),context.getFormattedValue(getObject("ContextPipeline"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_SelectedTab",null),context.getFormattedValue("Content",null)).addURLParameter(context.getFormattedValue("ContextPipeline_PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername0"),null),null),context.getFormattedValue(getObject("parametervalue0"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername1"),null),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername2"),null),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(context.getFormattedValue("ContextPipeline_",null) + context.getFormattedValue(getObject("parametername3"),null),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_removeLastBreadCrumb",null),context.getFormattedValue("true",null))),null)%>" 
				class="<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>table_opened<% } else { %>table_closed<% } %>">
					<% {out.write(localizeISText("PageletOverview.Overview.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			</a>
		</td>
	</tr>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
	<tr>
		<td class="table_title_description n s">
			<% {out.write(localizeISText("PageletOverview.TheInheritanceTreeShowsTheOriginOfTheCurrentElement.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td class="top treeDist">
 			<% processOpenTag(response, pageContext, "pageletinheritancetree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 31); %>
		</td>
	</tr>	
<% } %> 
</table><% printFooter(out); %>