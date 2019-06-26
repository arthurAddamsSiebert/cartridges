<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "2");} %><div class="col-xs-12"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/customer/Modules", null, "6");} %><% processOpenTag(response, pageContext, "currentcustomerbo", new TagParameter[] {
new TagParameter("currentcustomerbo","CurrentCustomerBO")}, 7); %><% processOpenTag(response, pageContext, "currentuserbo", new TagParameter[] {
new TagParameter("currentuserbo","CurrentUserBO")}, 8); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","CustomerBO"),
new TagParameter("key2","BasketBO"),
new TagParameter("key0","UserBO"),
new TagParameter("value2",getObject("CurrentCartBO")),
new TagParameter("value1",getObject("CurrentCustomerBO")),
new TagParameter("value0",getObject("CurrentUserBO")),
new TagParameter("mapname","PipelineParameters")}, 12); %><% {try{executePipeline("ProcessOrderApproval-IsOrderApprovalRequired",((java.util.Map)(getObject("PipelineParameters"))),"Dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 17.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Dict:IsApprovalRequired")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Dict:IsApprovalRequired"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><div class="text-right">
<div class="approval-required" title="<% {out.write(localizeISText("approval.cart.approver","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<span><% {out.write(localizeISText("approval.cart.approval_required","",null,null,null,null,null,null,null,null,null,null,null));} %></span>
<a data-dialog href="[data-approval-dialog]" class="details-link" /><% {out.write(localizeISText("approval.cart.link.details","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<div data-approval-dialog role="dialog" class="hidden"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"checkout/common/ApprovalDetails", null, "26");} %></div>
</div>
</div><% } %></div><% printFooter(out); %>