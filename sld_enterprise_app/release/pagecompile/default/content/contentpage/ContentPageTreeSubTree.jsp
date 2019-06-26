<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.request.Request" %><% getPipelineDictionary().put("CurrentUser", Request.getCurrent().getSession().getUser()); %><% processOpenTag(response, pageContext, "contentpermissionmap", new TagParameter[] {
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PermissionMap","PermissionMap")}, 5); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "6");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "7");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 8); %><% context.setCustomTagTemplateName("contentpagetreesubtree","content/contentpage/ContentPageTreeSubTree.isml",true,new String[]{"PageletEntryPoint","ExcludedPageletEntryPoint","ContentRepository","SelectedElement","Locale","SelectionListing","DepthCounter","RowCounter","ExpandedEntries","HasMoreMap","Site","contextpipeline","parametername0","parametervalue0","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3"},new String[]{"ReturnRowCounter"}); %><% context.setCustomTagTemplateName("contentpagetreehaselements","content/contentpage/ContentPageTreeHasElements.isml",true,new String[]{"PageletEntryPoint","ContentRepository"},new String[]{"ContentPageTreeHasElements"}); %><%@page import="java.util.Map,
	com.intershop.sellside.enterprise.internal.pagelet.PageletEntryPointTree, 
	com.intershop.beehive.core.capi.domain.Domain,
	com.intershop.component.pmc.capi.pagelet.PageletEntryPoint, 
	com.intershop.component.mvc.capi.catalog.Repository"
%><% 
	PageletEntryPointTree tree = PageletEntryPointTree.newInstance(
		(PageletEntryPoint)getObject("PageletEntryPoint"), (PageletEntryPoint)getObject("ExcludedPageletEntryPoint"), (Repository)getObject("ContentRepository")); 
	getPipelineDictionary().put("Tree", tree);

	Map hasMoreMap = (Map)getObject("HasMoreMap");
	Double depthCounter = (Double)getObject("DepthCounter");
%><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Tree:getChildren(Locale)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><% while (loop("Tree:getChildren(Locale)","ContentPage",null)) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key2","User"),
new TagParameter("key0","PageletEntryPoint"),
new TagParameter("value2",getObject("CurrentUser")),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value0",getObject("ContentPage")),
new TagParameter("mapname","ProcessPageletEntryPointLockParams")}, 56); %><% {try{executePipeline("ProcessPageletEntryPointLock-Lookup",((java.util.Map)(getObject("ProcessPageletEntryPointLockParams"))),"PageletEntryPointLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 60.",e);}} %><tr class="<% if ((Double)getObject("RowCounter")%2 == 1.00) {%>odd <%}%><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedElement:UUID"),null).equals(context.getFormattedValue(getObject("ContentPage:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>active<% } %>"> 
<td class="table_tree w e">
<table border="0" cellspacing="0" cellpadding="0" height="100%">
<tr><%
						for ( int i = 0; i < depthCounter.intValue(); i ++ ) 
						{
							if ((hasMoreMap.get("level"+i) != null) && (hasMoreMap.get("level"+i).equals(true)))
							{
								%><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_I.gif) repeat-y center;"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" /></td><%
							}
							else
							{
								%><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="1" alt="" border="0" /></td><%
							}
						}
					%><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Tree:isNode(ContentPage)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("ContentPage") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedEntries:Contains(ContentPage:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_minus.gif) no-repeat center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Collapse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_plus.gif) no-repeat center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Expand",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ExpandedEntries:Contains(ContentPage:UUID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_minus_bottom.gif) no-repeat center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Collapse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_plus_bottom.gif) no-repeat center;">
<a class="tree_icon_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Expand",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>">
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" />
</a>
</td><% } %><% } %> 
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("ContentPage") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L_join.gif) no-repeat right;"></td><% } else { %><td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L.gif) no-repeat right;"></td><% } %> 
<% } %><td>
<table>
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectionListing"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",123,e);}if (_boolean_result) { %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Select",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedPageUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>"><% processOpenTag(response, pageContext, "pageletentrypointdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPoint",getObject("ContentPage"))}, 125); %></a><% } else { %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>"><% processOpenTag(response, pageContext, "pageletentrypointdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("PageletEntryPoint",getObject("ContentPage"))}, 129); %></a><% } %><% processOpenTag(response, pageContext, "contentelementtooltip", new TagParameter[] {
new TagParameter("ContentElement",getObject("ContentPage"))}, 132); %></td>
<td><% processOpenTag(response, pageContext, "pageletentrypointstatus", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 135); %></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
<td class="table_detail bold e"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletEntryPoint-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageletEntryPointUUID",null),context.getFormattedValue(getObject("ContentPage:UUID"),null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>"><% processOpenTag(response, pageContext, "cropstring", new TagParameter[] {
new TagParameter("CropString","..."),
new TagParameter("String",getObject("ContentPage:Id")),
new TagParameter("MaxLength",new Double(23))}, 146); %></a><% } else { %><% processOpenTag(response, pageContext, "cropstring", new TagParameter[] {
new TagParameter("CropString","..."),
new TagParameter("String",getObject("ContentPage:Id")),
new TagParameter("MaxLength",new Double(23))}, 149); %><% } %></td>
<td class="table_detail e"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(ContentPage:ContentEntryPointDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ContentPage:ContentEntryPointDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e"><% processOpenTag(response, pageContext, "pageletentrypointpublishedfrom", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("MinPublishedFromDate","MinPublishedFromDate")}, 159); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MinPublishedFromDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("MinPublishedFromDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("MinPublishedFromDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {161}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("ContentPageTreeSubTree.NoStartDate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e"><% processOpenTag(response, pageContext, "pageletentrypointpublishedto", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("MaxPublishedToDate","MaxPublishedToDate")}, 167); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MaxPublishedToDate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("MaxPublishedToDate"),new Integer(DATE_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("MaxPublishedToDate"),new Integer(TIME_INPUT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("ContentPageTreeSubTree.NoEndDate.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><td nowrap="nowrap" class="table_detail_actions e"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",176,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "pageletlocking", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("LockInfoDictionary",getObject("PageletEntryPointLockInfoDictionary")),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 177); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("PageletEntryPointLockInfoDictionary:AllPageletEntryPointsLocked"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("PageletEntryPointLockInfoDictionary:AllPageletEntryPointsLocked"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",178,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "copypageletentrypoint", new TagParameter[] {
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("CopyOfPrefix","Copy of ")}, 179); %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_STOREFRONT"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",182,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "previewpage", new TagParameter[] {
new TagParameter("contextParameter2","SelectedPageUUID"),
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("PageFlag","true"),
new TagParameter("contextPipeline","ViewContentPageTree-List"),
new TagParameter("contextValue0",getObject("ContentRepository:UUID")),
new TagParameter("contextValue1","true"),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("contextValue2",getObject("ContentPage:UUID")),
new TagParameter("contextParameter0","ContentRepositoryUUID"),
new TagParameter("contextParameter1","continuedSession")}, 183); %><% } %>
&nbsp;
</td><% } %></tr><% {Object temp_obj = ((new Double( ((Number) getObject("RowCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("RowCounter", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Tree:isNode(ContentPage)")).booleanValue() && ((Boolean) getObject("ExpandedEntries:Contains(ContentPage:UUID)")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("ContentPage") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %><%
						hasMoreMap.put("level"+depthCounter.intValue(), true);
						getPipelineDictionary().put("HasMoreMap", hasMoreMap);
					%><% } else { %><%
						hasMoreMap.put("level"+depthCounter.intValue(), false);
						getPipelineDictionary().put("HasMoreMap", hasMoreMap);
					%> 
<% } %><% processOpenTag(response, pageContext, "contentpagetreesubtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Site",getObject("Site")),
new TagParameter("DepthCounter",(new Double( ((Number) getObject("DepthCounter")).doubleValue() +((Number) new Double(1)).doubleValue()))),
new TagParameter("HasMoreMap",getObject("HasMoreMap")),
new TagParameter("PageletEntryPoint",getObject("ContentPage")),
new TagParameter("ExpandedEntries",getObject("ExpandedEntries")),
new TagParameter("ExcludedPageletEntryPoint",getObject("ExcludedPageletEntryPoint")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing",getObject("SelectionListing")),
new TagParameter("SelectedElement",getObject("SelectedElement")),
new TagParameter("ReturnRowCounter","RowCounter"),
new TagParameter("RowCounter",getObject("RowCounter"))}, 210); %><% } %><% } %><% } %><% {Object temp_obj = (getObject("RowCounter")); getPipelineDictionary().put("ReturnRowCounter", temp_obj);} %><% printFooter(out); %>