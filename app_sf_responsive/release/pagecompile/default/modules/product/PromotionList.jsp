<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% {try{executePipeline("ProcessPromotion-GetProductPromotions",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("ProductBO",getObject("ProductBO")))).addParameter(new ParameterEntry("MaxNumber",getObject("MaxNumber")))))),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 3.",e);}} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/marketing/Modules", null, "8");} %> 
<% processOpenTag(response, pageContext, "promotioniscache", new TagParameter[] {
new TagParameter("ProductUUID",getObject("ProductBO:ID"))}, 9); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("dict:ApplicablePromotions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><ul class="promotion-list"><% while (loop("dict:ApplicablePromotions","Promotion",null)) { %><% {Object key_obj = getObject("Promotion"); NamingMgr.getManager(PageCacheMgr.class).registerObject(getObject("Promotion"));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("Promotion:DisableMessages"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><li class="promotion-list-item"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Promotion:Extension(\"ABTest\"):isUnderABTest"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.flush();%><%@page import="com.intershop.beehive.core.capi.url.*"%><%URLRewriteHandler handler = getTemplateExecutionConfig().getURLRewriteHandler();
try
{
getTemplateExecutionConfig().setURLRewriteHandler(NullURLRewriteHandler.getInstance());
processRemoteIncludeAutomatic((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTesting-CallLogPromotionViewEvents",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TestObjectID",null),context.getFormattedValue(getObject("Promotion:PersistentObject:UUID"),null)))),null), null, null, "21");}
finally
{
    getTemplateExecutionConfig().setURLRewriteHandler(handler);
}} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DisplayType"),null).equals(context.getFormattedValue("simple",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><div class="promotion-short-title"><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("Promotion:Title(Locale)"))}, 26); %></div><% } else { %><div>
<div class="promotion-icon"><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("Promotion:Icon(Locale)"))}, 31); %></div>
<div class="promotion-short-title"><% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("Promotion:Title(Locale)"))}, 34); %></div>
<br />
<div class="promotion-long-title"> 
<% processOpenTag(response, pageContext, "htmlprint", new TagParameter[] {
new TagParameter("value",getObject("Promotion:LongTitle(Locale)"))}, 38); %><a 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("Promotion:UseExternalURL")).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("Promotion:ExternalDetailsURL")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
href="<% {String value = null;try{value=context.getFormattedValue(getObject("Promotion:ExternalDetailsURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="details-link"
<% } else { %>
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPromotion-Browse",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PromotionIDs",null),context.getFormattedValue(getObject("Promotion:PromotionID"),null))).addURLParameter(context.getFormattedValue("DisplayType",null),context.getFormattedValue("dialog",null))),null)%>"" class="details-link" data-dialog
<% } %>
rel="nofollow" alt="<% {out.write(localizeISText("promotion.detailslink.label","",null,null,null,null,null,null,null,null,null,null,null));} %>">
<div class="promotion-details-link"><% {out.write(localizeISText("product.details.link","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
</a>
</div>
</div><% } %></li><% } %><% } %></ul><% } %><% printFooter(out); %>