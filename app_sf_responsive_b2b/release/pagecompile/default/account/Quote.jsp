<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("quotestate","quote/QuoteState",false,new String[]{"quote","displaymode","currentdate"},null); %><% {Object temp_obj = (((((Boolean) ((( ((Number) getObject("Quote:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (((((Boolean) ((( ((Number) getObject("Quote:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) getObject("Quote:State")).doubleValue() ==((Number)(new Double(6))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("Quote:Modified"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EditMode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("EditMode", temp_obj);} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("EditDisplayName", temp_obj);} %><% {Object temp_obj = ("false"); getPipelineDictionary().put("EditDescription", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("Quote:State")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) ((( ((Number) getObject("Quote:State")).doubleValue() ==((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("EditMode"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("EditDescription", temp_obj);} %><% {Object temp_obj = ("true"); getPipelineDictionary().put("EditDisplayName", temp_obj);} %><% } %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-Paging",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("PageNumber"),null))))),
new TagParameter("trailtext",localizeText(context.getFormattedValue("quote.quote_details.link",null))),
new TagParameter("text",localizeText(context.getFormattedValue("quote.quotes.link",null)))}, 19); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 24); %></div>
<div class="account-wrapper">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","QUOTES")}, 32); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 37); %></div><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"quote/EditQuote", null, "40");} %></div>
</div>
</div><% printFooter(out); %>