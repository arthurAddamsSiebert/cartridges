<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("hide","true"),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogOverview_52-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))))),
new TagParameter("start","true"),
new TagParameter("text",localizeText(context.getFormattedValue("SyndicationOverview_52.ChannelCatalogs.text",null)))}, 3); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))))),
new TagParameter("text",localizeText(context.getFormattedValue("SyndicationOverview_52.ProductSyndication.text",null)))}, 4); %><% processOpenTag(response, pageContext, "seq-init", new TagParameter[] {
new TagParameter("name","count"),
new TagParameter("modulo","2")}, 6); %><!-- start page navigator -->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td colspan="5" class="overview_title"><% {out.write(localizeISText("SyndicationOverview_52.SyndicationSynchronization.overview_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="5" class="table_title_description"><% {out.write(localizeISText("SyndicationOverview_52.UseModulesBelowToSetUpProductSyndicationRules.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><% {out.write(localizeISText("SyndicationOverview_52.SyndicationBy.overview_subtitle",null,null,url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-SelectProductSource",null)))),"overview_subtitle",url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndication_52-SelectCatalogSource",null)))),"overview_subtitle",null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("SyndicationOverview_52.DeriveProductsOfOtherRepositories.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 33); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSynchronization_52-Overview",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("reset",null),context.getFormattedValue("true",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("SyndicationOverview_52.Synchronization.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("SyndicationOverview_52.SynchronizeWithSourceRepositories.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 51); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductMappingRuleSets_52-ListAll",null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("SyndicationOverview_52.MappingRules.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("SyndicationOverview_52.DefineMappingRulesToControlHowProductsAreDerivedAn.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 69); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><td width="50%">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="overview_arrow"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0"/></td>
<td class="overview_subtitle" nowrap="nowrap" width="100%"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewSyndicationProductHistory_52-SelectHistorySource",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)))),null)%>" class="overview_subtitle"><% {out.write(localizeISText("SyndicationOverview_52.ChangeTracking.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
<tr>
<td colspan="2" class="overview_title_description" valign="top"><% {out.write(localizeISText("SyndicationOverview_52.ViewTheModificationsOfTheSourceProductRepositories.overview_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br/>&nbsp;</td>
</tr>
<tr>
<td colspan="2" class="overview_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="2" height="1" alt="" border="0"/></td>
</tr>
</table>
</td><% processOpenTag(response, pageContext, "seq-next", new TagParameter[] {
new TagParameter("name","count")}, 88); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %></tr><tr><% } else { %><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><td class="overview_vertical_line"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("count")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",91,e);}if (_boolean_result) { %><td width="50%">&nbsp;</td><% } %></tr>
</table><% printFooter(out); %>