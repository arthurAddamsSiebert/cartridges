<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("Category"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Catalog:Root")); getPipelineDictionary().put("Category", temp_obj);} %><% } %><table border="0" cellspacing="0" cellpadding="0" class="w100" data-testing-id="page-bo-catalog-details-organization">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomCatalogType")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("CustomCatalogType"),null).equals(context.getFormattedValue("Classification",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NewItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewItem"),null).equals(context.getFormattedValue("Catalog",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.OnlineOffline.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Channels.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.SubCategories.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.ClassificationAttributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% } else { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.General.table_tabs_en_background1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_CONTENT")))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:TypeCode")))).booleanValue() && !((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NewItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewItem"),null).equals(context.getFormattedValue("Catalog",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Content.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NewItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewItem"),null).equals(context.getFormattedValue("Catalog",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.OnlineOffline.table_tabs_dis_background1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Channels.table_tabs_dis_background1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:TypeCode")))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NewItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewItem"),null).equals(context.getFormattedValue("Catalog",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.SubCategories.table_tabs_dis_background1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("Catalog:isProxy"))).booleanValue() && ((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.ClassificationAttributes.table_tabs_dis_background1",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:TypeCode")))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue() && !((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NewItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewItem"),null).equals(context.getFormattedValue("Catalog",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Attributes.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:CM_PERMISSION_ASSIGN"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.CMCContent.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:TypeCode")))).booleanValue() && !((Boolean) (getObject("Catalog:isProxy"))).booleanValue() && !((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NewItem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("NewItem"),null).equals(context.getFormattedValue("Catalog",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Labels.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("General",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.General.table_tabs_en_background2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="w e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogID",null),context.getFormattedValue(getObject("Catalog:Id"),null)).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ParentCategoryID",null),context.getFormattedValue(getObject("Category:Parent:UUID"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.General.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_CONTENT")))).booleanValue() && !((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Content",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Content.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-ListPageletEntryPoints",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.Content.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("Category:isRootCategory"))).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("Catalog:ClassificationSystem")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Catalog:ClassificationSystem:Name"),null).equals(context.getFormattedValue("System",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("OnlineOffline",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.OnlineOffline.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogMaintenance-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("UnitName",null),context.getFormattedValue(getObject("Catalog:Domain:DomainName"),null)).addURLParameter(context.getFormattedValue("CatalogTypeCode",null),context.getFormattedValue(getObject("Catalog:TypeCode"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.OnlineOffline.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Channels",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Channels.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogChannelList-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.Channels.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("SubCategories",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.SubCategories.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategorySubCategory-ListAll",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.SubCategories.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("Catalog:isProxy"))).booleanValue() && ((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("ClassificationAttributes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.ClassificationAttributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryClassificationAttributes-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.ClassificationAttributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Attributes",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Attributes.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isRootCategory"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCatalogCustomAttributes-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ParentCategoryID",null),context.getFormattedValue(getObject("Category:Parent:UUID"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.Attributes.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Catalog:isProxy"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategory-ManageCA",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("ParentCategoryID",null),context.getFormattedValue(getObject("Category:Parent:UUID"),null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.Attributes.link1",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% }} %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) (getObject("Catalog:isProxy"))).booleanValue() && !((Boolean) ((( ((Number) getObject("Catalog:TypeCode")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_VIEW_LABELS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Labels",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Labels.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewObjectLabels-GetLabelsByObject",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("LabelObjectType",null),context.getFormattedValue("CatalogCategory",null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Catalogs",null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.Labels.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% } %><% } %><% } %><!-- product and category links --><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("New",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Links.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Links",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("CategoryTabs.Links.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap"><a
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCategoryLinks-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CatalogUUID",null),context.getFormattedValue(getObject("Catalog:UUID"),null))).addURLParameter(context.getFormattedValue("CatalogCategoryID",null),context.getFormattedValue(getObject("Category:UUID"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Catalogs",null))),null)%>"
class="table_tabs_dis"><% {out.write(localizeISText("CategoryTabs.Links.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td><% } %><% } %><% } %><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"CategoryTabs", null, "146");} %><td width="100%" class="s"><img
src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" alt=""
border="0" /></td>
</tr>
</table><% printFooter(out); %>