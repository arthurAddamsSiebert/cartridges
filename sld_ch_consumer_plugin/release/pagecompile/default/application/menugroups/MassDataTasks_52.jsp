<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SYNDICATE_CATALOGS")))).booleanValue() && !((Boolean) getObject("ProductSharingDictionary:SharingIsEnabled")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_DATA_REPLICATION")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_SEARCH_INDEXES")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_IMPEX_CATALOGS_PRODUCTS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_IMPEX_CONSUMERS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_IMPEX_ORDERS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_MARKETING")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_BATCH_PROCESSES")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_LABELS")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_VIEW_AUDIT_REPORTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("MassDataTasks",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedMenuItem"),null).equals(context.getFormattedValue("Catalogs",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><li class="selected"><% } else { %><li><% } %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewOverview-ChannelMassData",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("ApplicationState:ChannelID"),null)))),null)%>"><% {out.write(localizeISText("MassDataTasks_52.MassDataTasks.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
<ul>
<!-- 
Extension point for channel site navigationbar menu group entries of menu group Mass Data Tasks.
You are free to change the existing order by modifying the given priorities or by plugging in your custom menu group entries.
--><% {out.flush();processExtensionPoint((com.intershop.beehive.core.capi.request.ServletResponse)response,"SalesChannelSiteNavigationBarMenuGroupMassDataTasks", null, "26");} %></ul>
</li><% } %><% printFooter(out); %>