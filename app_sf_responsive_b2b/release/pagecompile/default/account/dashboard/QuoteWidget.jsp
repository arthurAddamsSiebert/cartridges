<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key0","User"),
new TagParameter("value0",getObject("CurrentUser")),
new TagParameter("mapname","PipelineParameters")}, 3); %><% {try{executePipeline("BusinessObjectUtils-GetUserBO",((java.util.Map)(getObject("PipelineParameters"))),"BusinessObjectDict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><% {Object temp_obj = (getObject("BusinessObjectDict:UserBO")); getPipelineDictionary().put("UserBO", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UserPermissionMap:get(\"APP_B2B_MANAGE_OWN_QUOTES\")"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><% {try{executePipeline("ProcessQuote-GetQuoteStatesCount",java.util.Collections.emptyMap(),"dict");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><div class="section section-seperator">
<h2><% {out.write(localizeISText("account.quotes.widget.my_quotes.heading","",null,null,null,null,null,null,null,null,null,null,null));} %></h2>
<div class="row">
<div class="col-xs-6"><% {out.write(localizeISText("account.quotes.widget.new.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-xs-6 text-right"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:NewCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %> 
<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:NewCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
0
<% } %></div>
<div class="col-xs-6"><% {out.write(localizeISText("account.quotes.widget.submitted.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-xs-6 text-right"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:SubmittedCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %> 
<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:SubmittedCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
0
<% } %></div>
<div class="col-xs-6"><% {out.write(localizeISText("account.quotes.widget.accepted.label","",null,null,null,null,null,null,null,null,null,null,null));} %></div>
<div class="col-xs-6 text-right"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:AcceptedCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %> 
<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:AcceptedCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
0
<% } %></div>
<div class="col-xs-6"><p><% {out.write(localizeISText("account.quotes.widget.rejected.label","",null,null,null,null,null,null,null,null,null,null,null));} %></p></div>
<div class="col-xs-6 text-right"><p><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dict:RejectedCount"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %> 
<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("dict:RejectedCount")).doubleValue() +((Number) new Double(0)).doubleValue())),"##",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>
0
<% } %></p></div>
</div>
<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewQuoteList-List",null)))),null)%>"><% {out.write(localizeISText("account.quotes.widget.view_all_quotes.link","",null,null,null,null,null,null,null,null,null,null,null));} %></a>
</div><% } %><% printFooter(out); %>