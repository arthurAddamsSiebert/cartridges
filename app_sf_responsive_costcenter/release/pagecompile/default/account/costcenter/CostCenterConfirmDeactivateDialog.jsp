<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModulesCostCenter", null, "3");} %><div data-dynamic-block-name="CostCenterConfirmRemoveDialog" data-dynamic-block-id="CostCenterConfirmRemoveDialog" data-testing-id="cost-center-confirm-deactivate-dialog"><% {Object temp_obj = (getObject("CostCenterBO:Extension(\"CostCenterBOOrderExtension\")")); getPipelineDictionary().put("CostCenterOrderBOOrderExtension", temp_obj);} %> 
<p><% {out.write(localizeISText("account.costcenter.dialog.confirm.deactivate.question",null,null,encodeString(context.getFormattedValue(getObject("CostCenterOrderBOOrderExtension:Orders:Size"),null)),encodeString(context.getFormattedValue(getObject("CostCenterBO:Name"),null)),encodeString(context.getFormattedValue(getObject("CostCenterBO:DisplayName"),null)),null,null,null,null,null,null,null));} %></p>
<div class="row"> 
<div class="modal-footer">
<div class="pull-right">
<a href="<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewCostCenter-Deactivate",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("CostCenterID",null),context.getFormattedValue(getObject("CostCenterBO:ID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
class="btn btn-primary" data-testing-id="deactivate-confirm-button"><% {out.write(localizeISText("account.costcenter.dialog.button.deactivate","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<button class="btn btn-default" data-dismiss="modal" data-testing-id="deactivate-cancel-button"><% {out.write(localizeISText("account.costcenter.dialog.button.cancel","",null,null,null,null,null,null,null,null,null,null,null));} %></button>
</div>
</div>
</div>
</div><% printFooter(out); %>