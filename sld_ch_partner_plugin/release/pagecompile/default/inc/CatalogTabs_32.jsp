<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table border="0" cellspacing="0" cellpadding="0" class="w100">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalog_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Maintenance",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.OnlineOffline.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogMaintenance_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.OnlineOffline.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Partner",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.Partner.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogSharing_32-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Catalog:Root:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.Partner.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Categories",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.SubCategories.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategorySubCategory_32-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.SubCategories.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.ClassificationAttributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategoryClassificationAttributes_32-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.ClassificationAttributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCatalogCustomAttributes_32-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null))).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelCategory_32-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %> 
<% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("Catalog:isProxy"))).booleanValue() && !((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Labels",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.Labels.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelObjectLabels-GetLabelsByObject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("CatalogCategory",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Catalogs",null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.Labels.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% } %><!-- product and category links --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",90,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.Links.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Links",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CatalogTabs_32.Links.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryLinks-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ChannelID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Catalogs",null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CatalogTabs_32.Links.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% } %><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CatalogTabs_32", null, "102");} %><td width="100%" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt="" border="0"/></td>
</tr>
</table><% printFooter(out); %>