<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("quotestate","quote/QuoteState",false,new String[]{"quote","displaymode"},null); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/B2BModules", null, "9");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/CSRFGuardJSToken", null, "11");} %><div class="breadcrumbs row"><% processOpenTag(response, pageContext, "accountbreadcrumb", new TagParameter[] {
new TagParameter("trailtext",localizeText(context.getFormattedValue("quote.quotes.link",null)))}, 14); %></div>
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","baseMarketing")}, 19); %></div>
<div class="account-wrapper">
<div class="row account-main">
<div class="col-md-3 account-nav-box"><% processOpenTag(response, pageContext, "accountnavigation", new TagParameter[] {
new TagParameter("selecteditem","QUOTES")}, 26); %></div>
<div class="col-md-9">
<div class="marketing-area"><% processOpenTag(response, pageContext, "marketingslot", new TagParameter[] {
new TagParameter("id","contentMarketing")}, 31); %></div>
<h1><% {out.write(localizeISText("quote.list.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h1><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Quotes") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %><div class="table-responsive">
<table class="table">
<thead>
<tr>
<th><% {out.write(localizeISText("quote.list.table.quote_no","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("quote.list.table.name","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("quote.list.table.line_items","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("quote.list.table.creation_date","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("quote.list.table.expiration_date","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th><% {out.write(localizeISText("quote.list.table.status","",null,null,null,null,null,null,null,null,null,null,null));} %></th>
<th></th>
</tr>
</thead><% while (loop("Quotes","Quote",null)) { %><tr>
<td>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QuoteUUID",null),context.getFormattedValue(getObject("Quote:UUID"),null))).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("Quotes:Page"),null))),null)%>" ><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:DocumentNo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Edit",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QuoteUUID",null),context.getFormattedValue(getObject("Quote:UUID"),null))).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("Quotes:Page"),null))),null)%>" ><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:IndependentItemsCount"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:ProductListEventByType(\"CreatedByBuyer\"):EventDate"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Quote:State")).doubleValue() <((Number)(new Double(4))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",65,e);}if (_boolean_result) { %>
-
<% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) (getObject("Quote:ValidTo:Time"))).doubleValue() <((Number)((getObject("CurrentDate:Time")))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><span class="text-danger"><% {out.write(localizeISText("quote.edit.submitted.your_quote_expired.text","",null,context.getFormattedValue(getObject("Quote:ValidTo"),new Integer(DATE_INPUT)),context.getFormattedValue(getObject("Quote:ValidTo"),new Integer(DATE_TIME)),getObject("QuoteLifeTime"),null,null,null,null,null,null,null));} %></span><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("Quote:ValidTo"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %></td>
<td align="left" nowrap="nowrap"><% processOpenTag(response, pageContext, "quotestate", new TagParameter[] {
new TagParameter("quote",getObject("Quote")),
new TagParameter("currentdate",getObject("CurrentDate")),
new TagParameter("displaymode","quoter")}, 81); %></td>
<td class="text-right">
<a class="btn-tool" data-toggle="modal" href="<%=context.getFormattedValue(replace(context.getFormattedValue(context.getFormattedValue("#basicModal_",null) + context.getFormattedValue(getObject("Quote:UUID"),null),null),(String)("\\."),(String)("")),null)%>" title="<% {out.write(localizeISText("quote.list.delete.button.delete.label","",null,null,null,null,null,null,null,null,null,null,null));} %>"><span class="glyphicon glyphicon-trash"></span></a>
</td>
</tr>
<div class="modal fade" id="<%=context.getFormattedValue(replace(context.getFormattedValue(context.getFormattedValue("basicModal_",null) + context.getFormattedValue(getObject("Quote:UUID"),null),null),(String)("\\."),(String)("")),null)%>" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only"><% {out.write(localizeISText("modal.close","",null,null,null,null,null,null,null,null,null,null,null));} %></span></button>
<h2 class="modal-title" id="myModalLabel"><% {out.write(localizeISText("quote.list.modaldialog.title","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
</div>
<div class="modal-body">
<p><% {out.write(localizeISText("quote.list.delete.heading","",null,getObject("Quote:DisplayName"),null,null,null,null,null,null,null,null,null));} %></p>
<p><% {out.write(localizeISText("quote.list.delete.do_you_really_want_to_delete.text","",null,null,null,null,null,null,null,null,null,null,null));} %></p>
</div>
<div class="modal-footer">
<a data-csrf-guarded class='btn btn-primary' href='<% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuote-Delete",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QuoteUUID",null),context.getFormattedValue(getObject("Quote:UUID"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>'><% {out.write(localizeISText("quote.list.delete.button.yes.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
<a href="<%=context.getFormattedValue("#",null)%>" class='btn btn-default' data-dismiss='modal'><% {out.write(localizeISText("quote.list.delete.button.no.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div>
</div>
</div>
</div><% } %></table>
</div><% processOpenTag(response, pageContext, "mappagination", new TagParameter[] {
new TagParameter("pipeline","ViewQuoteList-Paging"),
new TagParameter("pagecount",getObject("Quotes:PageCount")),
new TagParameter("itemcount",getObject("Quotes:ElementCount")),
new TagParameter("currentpage",getObject("Quotes:Page")),
new TagParameter("params","")}, 111); %><% } else { %><% {out.write(localizeISText("quote.list.empty","",null,null,null,null,null,null,null,null,null,null,null));} %><% } %></div>
</div>
</div><% printFooter(out); %>