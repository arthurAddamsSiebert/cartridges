<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "sticky", new TagParameter[] {
}, 4); %><% context.setCustomTagTemplateName("contentpagetreesubtree","content/contentpage/ContentPageTreeSubTree.isml",true,new String[]{"PageletEntryPoint","ExcludedPageletEntryPoint","ContentRepository","SelectedElement","Locale","SelectionListing","DepthCounter","RowCounter","ExpandedEntries","HasMoreMap","Site","contextpipeline","parametername0","parametervalue0","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3"},new String[]{"ReturnRowCounter"}); %><% context.setCustomTagTemplateName("contentpagetreehaselements","content/contentpage/ContentPageTreeHasElements.isml",true,new String[]{"PageletEntryPoint","ContentRepository"},new String[]{"ContentPageTreeHasElements"}); %><% {try{executePipeline("ViewContentPageTree-IncludePrefix",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ContentRepository",getObject("ContentRepository"))))))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 36.",e);}} %><% processOpenTag(response, pageContext, "contentpagetreehaselements", new TagParameter[] {
new TagParameter("ContentPageTreeHasElements","ContentPageTreeHasElements"),
new TagParameter("ContentRepository",getObject("ContentRepository"))}, 38); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ContentPageTreeHasElements"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","PreferenceDomain"),
new TagParameter("key0","ContentDomain"),
new TagParameter("value1",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("value0",getObject("ContentRepository:RepositoryDomain")),
new TagParameter("mapname","GlobalPageletEntryPointLockParams")}, 40); %><% {try{executePipeline("ProcessPageletEntryPointLock-LookupParentNamedResource",((java.util.Map)(getObject("GlobalPageletEntryPointLockParams"))),"GlobalPageletEntryPointLockInfoDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 43.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("GlobalPageletEntryPointLockInfoDictionary:AllPageletEntryPointsLocked"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><table border="0" cellpadding="3" cellspacing="0" width="100%" class="information w e s">
<tr>
<td>
<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/lockedForOther.gif" align="middle" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentPageTreeInc.LockedByOther.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ContentPageTreeInc.LockedByOther.title",null)),null)%>" border="0"/>
</td> 
<td width="100%"><% {out.write(localizeISText("ContentPageTreeInc.AllPagesAreCurrentlyLocked.confirm",null,null,"text-decoration: underline",null,null,null,null,null,null,null,null,null));} %><% processOpenTag(response, pageContext, "lockownertooltip", new TagParameter[] {
new TagParameter("CurrentUser",getObject("CurrentUser")),
new TagParameter("Resource",getObject("GlobalPageletEntryPointLockInfoDictionary:Resource"))}, 52); %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PageletModelRepository:ApplicationTypes:Size")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="6" border="0" id="pageletEntryPointSearchMask" class="infobox w e s">
<tbody>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light" for="PageletSearch_Application_Type_ID"><% {out.write(localizeISText("ContentPageTreeInc.ApplicationTypes.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% processOpenTag(response, pageContext, "applicationtypeselector", new TagParameter[] {
new TagParameter("SelectBoxClass","select inputfield_en"),
new TagParameter("SelectedApplicationTypeID",getObject("SelectedApplicationTypeID")),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("SelectBoxID","PageletSearch_Application_Type_ID")}, 64); %></td>
<td class="w100">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="button">
<input class="button" type="submit" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSearchMask.Find.input",null)),null)%>" name="<%=context.getFormattedValue(getObject("FindAction"),null)%>"/>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table><% } %><table border="0" cellspacing="0" cellpadding="0" class="zebra_table s stickyHeader" width="100%">
<thead><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SubmitButtonsTemplate")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SubmitButtonsTemplate"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("GlobalPageletEntryPointLockInfoDictionary:AllPageletEntryPointsLocked"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("GlobalPageletEntryPointLockInfoDictionary:AllPageletEntryPointsLocked"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %><% {Object temp_obj = (""); getPipelineDictionary().put("DisableButtonAttribute", temp_obj);} %><% } else { %><% {Object temp_obj = ("disabled=\"disabled\""); getPipelineDictionary().put("DisableButtonAttribute", temp_obj);} %><% } %><tr>
<td colspan="10"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("SubmitButtonsTemplate"),null), null, "93");} %></td>
</tr><% } %><tr>
<th class="table_header w e s"><% {out.write(localizeISText("ContentPageTreeInc.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ContentPageTreeInc.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ContentPageTreeInc.Group.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ContentPageTreeInc.Type.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ContentPageTreeInc.PublishedFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th class="table_header e s"><% {out.write(localizeISText("ContentPageTreeInc.PublishedUntil.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><th class="table_header e s" width="1%" nowrap="nowrap"><% {out.write(localizeISText("ContentPageTreeInc.Actions.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></th><% } %></tr>
</thead>
<tbody>
<tr>
<td class="table_tree w e" valign="top">
<a class="table_detail_link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewContentPageTree-Select",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedPageUUID",null),context.getFormattedValue("",null))).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepository:UUID"),null))),null)%>"><% {out.write(localizeISText("ContentPageTreeInc.Site.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
<td class="table_detail e">&nbsp;</td>
<td class="table_detail e">&nbsp;</td>
<td class="table_detail e">&nbsp;</td>
<td class="table_detail e">&nbsp;</td>
<td class="table_detail e">&nbsp;</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SelectionListing"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %><td class="table_detail e">&nbsp;</td><% } %></tr><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","HasMoreMap")}, 124); %><% processOpenTag(response, pageContext, "contentpagetreesubtree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Site",getObject("Site")),
new TagParameter("DepthCounter",new Double(0)),
new TagParameter("HasMoreMap",getObject("HasMoreMap")),
new TagParameter("ExpandedEntries",getObject("Result:ExpandedEntries")),
new TagParameter("ExcludedPageletEntryPoint",getObject("ExcludedPageletEntryPoint")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("SelectionListing",getObject("SelectionListing")),
new TagParameter("SelectedElement",getObject("SelectedElement")),
new TagParameter("RowCounter",new Double(1))}, 126); %></tbody>
</table><% } %><% printFooter(out); %>