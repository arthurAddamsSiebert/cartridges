<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ContentRepository:UUID")); getPipelineDictionary().put("ContentRepositoryUUID", temp_obj);} %><% {Object temp_obj = (getObject("Child:ChildPOs(ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("Children", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("Child:ChildPOs")); getPipelineDictionary().put("Children", temp_obj);} %><% } %><% {Object temp_obj = ((new Double( ((Number) getObject("depthCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("depthCounter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Children") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% while (loop("Children","grandchild",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("RowCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowCounter", temp_obj);} %><tr <% if ((Double)getObject("RowCounter")%2 == 1.00) {%>class="odd" <%}%>>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
<tr><%
							Double depthCounter = (Double)getObject("depthCounter");
							Map hasMoreMap = (Map)getObject("hasMoreMap");
							for ( int i = 0; i < depthCounter.intValue(); i ++ ) 
							{
								if ((hasMoreMap.get("level"+i) != null) && (hasMoreMap.get("level"+i).equals(true)))
								{
									%><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_I.gif) repeat-y center;">&nbsp;</td><%
								}
								else
								{
									%><td style="width:22px;"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="1" alt="" border="0" /></td><%
								}
							}
						%><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ContentRepository"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("grandchild:ChildPOs(ContentRepository:RepositoryDomain)")); getPipelineDictionary().put("GrandChildren", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("grandchild:ChildPOs")); getPipelineDictionary().put("GrandChildren", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GrandChildren") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("grandchild") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedPageletTreeEntries:Contains(grandchild:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_minus.gif) repeat-y center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Collapse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("grandchild:UUID"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null)%>"><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_plus.gif) repeat-y center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Expand",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("grandchild:UUID"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null)%>"><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedPageletTreeEntries:Contains(grandchild:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_minus_bottom.gif) repeat-y center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Collapse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("grandchild:UUID"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null)%>"><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_plus_bottom.gif) repeat-y center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-Expand",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("Entry",null),context.getFormattedValue(getObject("grandchild:UUID"),null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null))),null)%>"><% } %><% } %><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("grandchild") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L_join.gif) repeat-y center;">&nbsp;</td><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L.gif) repeat-y center;">&nbsp;</td><% } %><% } %><td class="table_detail">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Content",null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("grandchild:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null))),null)%>" class="table_detail_link2"><% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("grandchild"))}, 69); %></a>
</td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("GrandChildren") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedPageletTreeEntries:Contains(grandchild:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("grandchild") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><%
						hasMoreMap.put("level"+depthCounter.intValue(), true);
						getPipelineDictionary().put("hasMoreMap", hasMoreMap);
					%><% } else { %><%
						hasMoreMap.put("level"+depthCounter.intValue(), false);
						getPipelineDictionary().put("hasMoreMap", hasMoreMap);
					%><% } %><% processOpenTag(response, pageContext, "pageletinheritancechildtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("depthCounter",getObject("depthCounter")),
new TagParameter("hasMoreMap",getObject("hasMoreMap")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("ContentRepositoryUUID",getObject("ContentRepositoryUUID")),
new TagParameter("ReturnRowCounter","RowCounter"),
new TagParameter("RowCounter",getObject("RowCounter")),
new TagParameter("Child",getObject("grandchild")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 89); %><% } %><% } %><% } %><% } %><% {Object temp_obj = (getObject("RowCounter")); getPipelineDictionary().put("ReturnRowCounter", temp_obj);} %><% printFooter(out); %>