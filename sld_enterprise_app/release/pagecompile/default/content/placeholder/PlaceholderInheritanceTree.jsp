<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "pageletplaceholderutils", new TagParameter[] {
new TagParameter("PageletPlaceholderUtils","PlaceholderUtils")}, 3); %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 4); %><% {Object temp_obj = (getObject("PlaceholderUtils:PlaceholderTemplateInheritancePath(PageletPlaceholder)")); getPipelineDictionary().put("Templates", temp_obj);} %><table border="0" cellpadding="0" cellspacing="0" class="w s e" width="100%">
<tr>
<td class="table_title2" nowrap="nowrap"><% {out.write(localizeISText("PlaceholderInheritanceTree.InheritanceTree.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="table_title_description n s"><% {out.write(localizeISText("PlaceholderInheritanceTree.ThisTreeShowsTheInheritanceOfTheCurrentElement.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="zebra_table">
<tr>
<td class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(PageletModelRepository:SlotDefinition(PageletPlaceholder:TargetPlaceholderDefinition:DefinitionQualifiedName),Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("depthCounter", temp_obj);} %><% while (loop("Templates","Template",null)) { %><tr <% if ((Double)getObject("depthCounter")%2 == 0) {%>class="odd" <%}%>>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) ((new Double( ((Number) (getObject("depthCounter"))).doubleValue() *((Number) new Double(22)).doubleValue())))).doubleValue() +((Number) new Double(1)).doubleValue())),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>px">&nbsp;</td>
<td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L.gif) repeat-y center;"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" /></td>
<td class="table_detail">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Template:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null)).addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null))),null)%>" class="table_detail_link2 sfe-action-disable"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("Template"))}, 34); %><br>
</a>
</td>
</tr>
</table>
</td>
</tr><% {Object temp_obj = ((new Double( ((Number) getObject("depthCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("depthCounter", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value1","Tree_Open"),
new TagParameter("value0",context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null) + context.getFormattedValue("_PlaceholderTreeDisplayOptions",null)),
new TagParameter("mapname","DisplayOptionParameters")}, 45); %><% {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(getObject("DisplayOptionParameters"))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 48.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("DisplayOption:Value")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } %><tr <% if ((Double)getObject("depthCounter")%2 == 1.00) {%>class="odd" <%}%>><td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) ((new Double( ((Number) (getObject("depthCounter"))).doubleValue() *((Number) new Double(22)).doubleValue())))).doubleValue() +((Number) new Double(1)).doubleValue())),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {57}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>px">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletPlaceholder:SourcePlaceholderDefinitionPO:SourcePlaceholderPOs(ContentRepository:RepositoryDomain)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><td style="width:22px;background: <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_minus_bottom.gif)<% } else { %>url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_plus_bottom.gif)<% } %> repeat-y center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOption",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayOptionContainerID",null),context.getFormattedValue(context.getFormattedValue(getObject("PageletPlaceholder:UUID"),null) + context.getFormattedValue("_PlaceholderTreeDisplayOptions",null),null))).addURLParameter(context.getFormattedValue("DisplayOptionKey",null),context.getFormattedValue("Tree_Open",null)).addURLParameter(context.getFormattedValue("DisplayOptionValue",null),context.getFormattedValue((((Boolean) ((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ,null)).addURLParameter(context.getFormattedValue("ContextPipeline",null),context.getFormattedValue("ViewPagelet-View",null)).addURLParameter(context.getFormattedValue("ContextPipeline_SelectedTab",null),context.getFormattedValue("Content",null)).addURLParameter(context.getFormattedValue("ContextPipeline_PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L.gif) repeat-y center;"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" /></td><% } %><td nowrap="nowrap" class="table_detail bold"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("PageletPlaceholder:Template"))}, 68); %></td>
</tr>
</table>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","hasMoreMap")}, 76); %><% {Object temp_obj = (getObject("depthCounter")); getPipelineDictionary().put("RowCounter", temp_obj);} %><% processOpenTag(response, pageContext, "placeholderinheritancechildtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("depthCounter",getObject("depthCounter")),
new TagParameter("hasMoreMap",getObject("hasMoreMap")),
new TagParameter("PageletUUID",getObject("Pagelet:UUID")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("RowCounter",getObject("depthCounter")),
new TagParameter("PageletPlaceholder",getObject("PageletPlaceholder"))}, 78); %><% } %></table>
</td>
</tr>
</table><% printFooter(out); %>