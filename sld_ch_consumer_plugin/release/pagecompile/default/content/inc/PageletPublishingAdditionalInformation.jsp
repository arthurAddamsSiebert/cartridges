<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Repository:TypeCode")).doubleValue() !=((Number)(new Double(21))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key0","Pagelet"),
new TagParameter("value1",getObject("Repository")),
new TagParameter("value0",getObject("Pagelet")),
new TagParameter("mapname","PageletPromotionAssignmentSearchParams")}, 4); %><% {try{executePipeline("ViewPageletPropertiesAssignPromotion-GetPageletPromotionAssignment",((java.util.Map)(getObject("PageletPromotionAssignmentSearchParams"))),"GetPageletPromotionAssignmentResult");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("GetPageletPromotionAssignmentResult"))}, 6); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PublishedDuringPromotion"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><tr>
<td></td>
<td class="fielditem2"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_VIEW_MARKETING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><% {out.write(localizeISText("marketing.pagelet.publishingControlledByPromotion.textWithLink",null,null,getObject("PageletPromotionAssignment:Promotion:DisplayName"),url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletPropertiesAssignPromotion-ViewPromotionContent",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionUUID",null),context.getFormattedValue(getObject("PageletPromotionAssignment:Promotion:UUID"),null)))),null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("marketing.pagelet.publishingControlledByPromotion.text",null,null,getObject("PageletPromotionAssignment:Promotion:DisplayName"),null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><% } %><% printFooter(out); %>