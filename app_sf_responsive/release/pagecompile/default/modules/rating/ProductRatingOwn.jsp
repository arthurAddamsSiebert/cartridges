<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% processOpenTag(response, pageContext, "currentuserbo", new TagParameter[] {
new TagParameter("currentuserbo","UserBO")}, 4); %><% {try{executePipeline("ProcessReview-GetReviewsByAuthor",((java.util.Map)(((new ParameterMap().addParameter(new ParameterEntry("BusinessObjectApprovedReviewBORepository",getObject("ProductBO:Extension(\"Review\")")))).addParameter(new ParameterEntry("UserBO",getObject("UserBO")))))),"ReviewsDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 5.",e);}} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ReviewsDict:ReviewBOs") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAjax-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("TargetPipeline",null),context.getFormattedValue("ViewProductReview-NewReview",null))).addURLParameter(context.getFormattedValue("SKU",null),context.getFormattedValue(getObject("ProductBO:SKU"),null)).addURLParameter(context.getFormattedValue("CategoryDomainName",null),context.getFormattedValue(getObject("CategoryBO:DomainName"),null)).addURLParameter(context.getFormattedValue("CategoryName",null),context.getFormattedValue(getObject("CategoryBO:Name"),null))),null)%>"
class="kor-open-as-dialog-check-login kor-product-link"><% {out.write(localizeISText("product.rating.write_a_review.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>&nbsp;&nbsp;
<% } %><% printFooter(out); %>