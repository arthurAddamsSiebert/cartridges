<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sitefolder:UUID"),null).equals(context.getFormattedValue(getObject("rootfolderuuid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("level", temp_obj);} %><% } else { %><% {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpandedSiteFolderMap:get(sitefolder:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("isExpanded", temp_obj);} %><% } else { %><% {Object temp_obj = ("false"); getPipelineDictionary().put("isExpanded", temp_obj);} %><% } %><table border="0" cellspacing="0" cellpadding="0">
<tr>
<td nowrap="nowrap"><%
			int level = ((Double)getObject("level")).intValue();
			int subLevelCount = 10;
			int currentSubCount = 0;

			for (int i=0; i<level; i++) {
				if(i > 0)
				{
					subLevelCount = ((Double)getObject("ElementCount" + (i - 1))).intValue();
					currentSubCount = ((Double)getObject("CurrentElementCount" + (i - 1))).intValue();
				}
				if (i>0 && currentSubCount != subLevelCount)
				{
					%><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/I.gif" alt="" border="0"/><%
				}else
				{
					%><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" alt="" border="0"/><%
				}
			} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("sitefolder:UUID"),null).equals(context.getFormattedValue(getObject("rootfolderuuid"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" height="1" alt="" border="0"/></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("currentidx")).doubleValue() <((Number)(getObject("elementcount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/T.gif" alt="" border="0"/></td><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/L.gif" alt="" border="0"/></td><% }} %><td>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0" class="treeIconTable"> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("sitefolder:ElementCount")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/T_extend.gif" style="width: 24px; height:26px;" alt="" border="0"/></td>
</tr><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((( ((Number) getObject("sitefolder:ElementCount")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><tr>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" style="width: 1px; height:28px;" alt="" border="0"/></td>
</tr><% } else { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpandedSiteFolderMap:get(sitefolder:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %><td class="treeIcon"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-Collapse",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SiteFolderUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))).addURLParameter(context.getFormattedValue("elementfilter",null),context.getFormattedValue(getObject("elementfilter"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/minus.gif" alt="" border="0" name="" /></a></td><% } else { %><td class="treeIcon"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-Expand",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SiteFolderUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))).addURLParameter(context.getFormattedValue("elementfilter",null),context.getFormattedValue(getObject("elementfilter"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null))),null)%>"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/plus.gif" alt="" border="0" name="" /></a></td><% } %></tr><% }} %> 
</table>
</td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("sitefolder:ElementCount")))).booleanValue() && ((Boolean) ((( ((Number) getObject("sitefolder:ElementCount")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><td class="other_dep" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("selectable"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("folder",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedSiteElementID" value="<%=context.getFormattedValue(getObject("sitefolder:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("regexmatcher")))).booleanValue() && ((Boolean) (getObject("regexmatcher:Match(sitefolder:Name)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>checked="checked"<% } %>/><% } %><a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-Expand",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SiteFolderUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))).addURLParameter(context.getFormattedValue("elementfilter",null),context.getFormattedValue(getObject("elementfilter"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null))),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("sitefolder:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("selectable"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("asset",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><td class="dep_check"><input type="checkbox" name="SelectedSiteElementID" value="<%=context.getFormattedValue(getObject("sitefolder:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("regexmatcher")))).booleanValue() && ((Boolean) (getObject("regexmatcher:Match(sitefolder:Name)"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((!(context.getFormattedValue(getObject("multipleselection"),null).equals(context.getFormattedValue("folder",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><td class="dep_check"><input type="radio" name="SelectedSiteElementID" value="<%=context.getFormattedValue(getObject("sitefolder:UUID"),null)%>" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("sitefolder:UUID"),null).equals(context.getFormattedValue(getObject("SelectedSiteElementUUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %>checked="checked"<% } %>/></td><% }} %><% } %><td class="other_dep" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("editable"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(context.getFormattedValue(getObject("handlerpipeline"),null) + context.getFormattedValue("-OpenEditor",null),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ElementType",null),context.getFormattedValue(getObject("sitefolder:Type"),null))).addURLParameter(context.getFormattedValue("ElementUUID",null),context.getFormattedValue(getObject("sitefolder:UUID"),null))),null)%>" class="table_detail_link" target="_blank"><% {String value = null;try{value=context.getFormattedValue(getObject("sitefolder:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("sitefolder:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {121}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></td><% } %></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpandedSiteFolderMap:get(sitefolder:UUID)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",139,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount0", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount0", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount0")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount0", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder0",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount0")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount0", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount0")),
new TagParameter("sitefolder",getObject("Folder0")),
new TagParameter("elementcount",getObject("ElementCount0"))}, 143); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount1", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount1", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount1")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount1", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder1",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount1")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount1", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount1")),
new TagParameter("sitefolder",getObject("Folder1")),
new TagParameter("elementcount",getObject("ElementCount1"))}, 148); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",149,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount2", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount2", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount2")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount2", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder2",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount2")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount2", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount2")),
new TagParameter("sitefolder",getObject("Folder2")),
new TagParameter("elementcount",getObject("ElementCount2"))}, 153); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount3", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount3", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount3")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount3", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder3",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount3")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount3", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount3")),
new TagParameter("sitefolder",getObject("Folder3")),
new TagParameter("elementcount",getObject("ElementCount3"))}, 158); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",159,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount4", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount4", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount4")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount4", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder4",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount4")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount4", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount4")),
new TagParameter("sitefolder",getObject("Folder4")),
new TagParameter("elementcount",getObject("ElementCount4"))}, 163); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(5))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount5", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount5", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount5")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount5", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder5",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount5")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount5", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount5")),
new TagParameter("sitefolder",getObject("Folder5")),
new TagParameter("elementcount",getObject("ElementCount5"))}, 168); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount6", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount6", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount6")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount6", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder6",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount6")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount6", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount6")),
new TagParameter("sitefolder",getObject("Folder6")),
new TagParameter("elementcount",getObject("ElementCount6"))}, 173); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(7))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",174,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount7", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount7", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount7")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount7", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder7",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount7")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount7", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount7")),
new TagParameter("sitefolder",getObject("Folder7")),
new TagParameter("elementcount",getObject("ElementCount7"))}, 178); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(8))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",179,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount8", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount8", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount8")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount8", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder8",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount8")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount8", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount8")),
new TagParameter("sitefolder",getObject("Folder8")),
new TagParameter("elementcount",getObject("ElementCount8"))}, 183); %><% } %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("level")).doubleValue() ==((Number)(new Double(9))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",184,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("CurrentElementCount9", temp_obj);} %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("ElementCount9", temp_obj);} %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folders",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("ElementCount9")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ElementCount9", temp_obj);} %><% } %><% while (loop("ExpandedSiteFolderMap:get(sitefolder:UUID)","Folder9",null)) { %><% {Object temp_obj = ((new Double( ((Number) getObject("CurrentElementCount9")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("CurrentElementCount9", temp_obj);} %><% processOpenTag(response, pageContext, "contentsite", new TagParameter[] {
new TagParameter("currentidx",getObject("CurrentElementCount9")),
new TagParameter("sitefolder",getObject("Folder9")),
new TagParameter("elementcount",getObject("ElementCount9"))}, 188); %><% } %><% }}}}}}}}}} %><% } %><% {Object temp_obj = ((new Double( ((Number) getObject("level")).doubleValue() -((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("level", temp_obj);} %><% printFooter(out); %>