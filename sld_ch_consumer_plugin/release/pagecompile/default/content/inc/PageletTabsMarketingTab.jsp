<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Repository:TypeCode")).doubleValue() !=((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Marketing",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><td class="e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("PageletTabMarketing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e n s table_tabs_dis_background" nowrap="nowrap">
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Marketing",null))).addURLParameter(context.getFormattedValue("AssignmentUUID",null),context.getFormattedValue(getObject("Assignment:UUID"),null)).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("Repository:UUID"),null)).addURLParameter(context.getFormattedValue("ContextObjectUUID",null),context.getFormattedValue(getObject("ContextObject:UUID"),null)).addURLParameter(context.getFormattedValue("PageLocatorName",null),context.getFormattedValue(getObject("PageLocatorName"),null))),null)%>" class="table_tabs_dis"><% {out.write(localizeISText("PageletTabMarketing.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td><% } %><% } %><% printFooter(out); %>