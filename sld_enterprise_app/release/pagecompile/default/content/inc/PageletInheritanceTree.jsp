<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 3); %><% processOpenTag(response, pageContext, "pageletplaceholderutils", new TagParameter[] {
new TagParameter("PageletPlaceholderUtils","PlaceholderUtils")}, 4); %><% {Object temp_obj = (getObject("PlaceholderUtils:PlaceholderTemplateInheritancePath(PageletPlaceholder)")); getPipelineDictionary().put("Templates", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ContentRepository:UUID")); getPipelineDictionary().put("ContentRepositoryUUID", temp_obj);} %><% {Object temp_obj = (getObject("Pagelet:ChildPOs(ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("Children", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("Pagelet:ChildPOs")); getPipelineDictionary().put("Children", temp_obj);} %><% } %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td class="table_title2 s" nowrap="nowrap"><% {out.write(localizeISText("PageletInheritanceTree.InheritanceTree.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% {Object temp_obj = (getObject("Pagelet:hasParent")); getPipelineDictionary().put("hasNextParent", temp_obj);} %><% {Object temp_obj = (getObject("Pagelet:Parent")); getPipelineDictionary().put("parent", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("depthCounter", temp_obj);} %><%
while ((Boolean)getPipelineDictionary().get("hasNextParent")==true) {%><% {Object temp_obj = (getObject("parent:hasParent")); getPipelineDictionary().put("hasNextParent", temp_obj);} %><% {Object temp_obj = (getObject("parent:Parent")); getPipelineDictionary().put("parent", temp_obj);} %><% {Object temp_obj = ((new Double( ((Number) getObject("depthCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("depthCounter", temp_obj);} %><%}%><table border="0" cellpadding="0" cellspacing="0" width="100%" class="zebra_table"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:hasParent"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletinheritanceparenttree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("depthCounter",getObject("depthCounter")),
new TagParameter("ContentRepositoryUUID",getObject("ContentRepositoryUUID")),
new TagParameter("Pagelet",getObject("Pagelet:Parent"))}, 33); %><% } else { %><tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td nowrap="nowrap" class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(Pagelet:PageletDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
</table>
</td>
</tr><% } %><% {Object temp_obj = ((new Double( ((Number) getObject("depthCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("depthCounter", temp_obj);} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DisplayOptionKey"),
new TagParameter("key0","DisplayOptionContainerID"),
new TagParameter("value1","Tree_Open"),
new TagParameter("value0",context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_TreeDisplayOptions",null)),
new TagParameter("mapname","DisplayOptionParameters")}, 50); %><% {try{executePipeline("ViewDisplayOptions-GetDisplayOption",((java.util.Map)(getObject("DisplayOptionParameters"))),"DisplayOption");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 53.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (disableErrorMessages().isDefined(getObject("DisplayOption:Value")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("DisplayOption:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("DisplayOption_Open", temp_obj);} %><% } %><tr <% if ((Double)getObject("depthCounter")%2 == 1.0) {%>class="odd" <%}%>>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) ((new Double( ((Number) ((new Double( ((Number) getObject("depthCounter")).doubleValue() -((Number) new Double(1)).doubleValue())))).doubleValue() *((Number) new Double(22)).doubleValue())))).doubleValue() +((Number) new Double(1)).doubleValue())),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>px">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Children") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><td style="width:22px;background: <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_minus_bottom.gif)<% } else { %>url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_plus_bottom.gif)<% } %> repeat-y center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewDisplayOptions-SetDisplayOption",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("DisplayOptionContainerID",null),context.getFormattedValue(context.getFormattedValue(getObject("Pagelet:UUID"),null) + context.getFormattedValue("_TreeDisplayOptions",null),null))).addURLParameter(context.getFormattedValue("DisplayOptionKey",null),context.getFormattedValue("Tree_Open",null)).addURLParameter(context.getFormattedValue("DisplayOptionValue",null),context.getFormattedValue((((Boolean) ((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ,null)).addURLParameter(context.getFormattedValue("ContextPipeline",null),context.getFormattedValue("ViewPagelet-View",null)).addURLParameter(context.getFormattedValue("ContextPipeline_SelectedTab",null),context.getFormattedValue("Content",null)).addURLParameter(context.getFormattedValue("ContextPipeline_PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("ContextPipeline_PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L.gif) repeat-y center;"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" /></td><% } %><td nowrap="nowrap" class="table_detail bold"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 73); %></td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayOption_Open"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","hasMoreMap")}, 81); %><% processOpenTag(response, pageContext, "pageletinheritancechildtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("depthCounter",(new Double( ((Number) getObject("depthCounter")).doubleValue() -((Number) new Double(1)).doubleValue()))),
new TagParameter("hasMoreMap",getObject("hasMoreMap")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentRepositoryUUID",getObject("ContentRepositoryUUID")),
new TagParameter("ReturnRowCounter","RowCounter"),
new TagParameter("RowCounter",getObject("depthCounter")),
new TagParameter("Child",getObject("Pagelet")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 82); %><% } %></table><% printFooter(out); %>