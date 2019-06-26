<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("pageletentrypointtypeselectionfiltermask","content/search/inc/PageletEntryPointTypeSelectionFilterMask.isml",true,new String[]{"PageFlag","SelectType","PageletModelRepository","Locale","PageletEntryPointDefinitions","PageIncludeTypeSelectionRadioGroup","PageIncludeTypeSelectionParam","PageletEntryPointDefinitionSelect","PageletEntryPointDefinitionParam"},null); %><table id="PageletSearch_TypeSelectionTable">
<tr>
<td class="input_radio">
<input type="radio" name="PageletSearch_TypeSelection" id="PageletSearch_TypeSelection_All" value="all" align="middle"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PageletSearch_TypeSelection"),null).equals(context.getFormattedValue("all",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text label_light" for="PageletSearch_TypeSelection_All"><% {out.write(localizeISText("GetPageletEntryPointTypesAdvancedSearch.All.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("SystemDefs")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearch_SelectedSystemPageletEntryPointDefinition")),
new TagParameter("SelectType","system"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedSystemPageletEntryPointDefinition")}, 25); %><tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("ProductDefs")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearch_SelectedProductPageletEntryPointDefinition")),
new TagParameter("SelectType","product"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedProductPageletEntryPointDefinition")}, 38); %><tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("CategoryDefs")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearch_SelectedCategoryPageletEntryPointDefinition")),
new TagParameter("SelectType","category"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedCategoryPageletEntryPointDefinition")}, 51); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %><tr><td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td></tr><% processOpenTag(response, pageContext, "pageletentrypointtypeselectionfiltermask", new TagParameter[] {
new TagParameter("Locale",getObject("CurrentSession:Locale")),
new TagParameter("PageletEntryPointDefinitions",getObject("ContentDefs")),
new TagParameter("PageIncludeTypeSelectionRadioGroup","PageletSearch_TypeSelection"),
new TagParameter("PageFlag",getObject("page")),
new TagParameter("PageletEntryPointDefinitionParam",getObject("PageletSearch_SelectedContentPageletEntryPointDefinition")),
new TagParameter("SelectType","content"),
new TagParameter("PageletModelRepository",getObject("PageletModelRepository")),
new TagParameter("PageIncludeTypeSelectionParam",getObject("PageletSearch_TypeSelection")),
new TagParameter("PageletEntryPointDefinitionSelect","PageletSearch_SelectedContentPageletEntryPointDefinition")}, 65); %><% } %></table><% printFooter(out); %>