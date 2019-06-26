<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" class="infobox w100 w e">
<tr>
<td class="infobox_title" nowrap="nowrap" colspan="4"><% {out.write(localizeISText("quote.QuoteListSearch.infobox_title.find.quotes",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
</td>
</tr><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"quote/QuoteSimpleSearchMask", null, "12");} %><tr>
<td>
<table class="infobox searchbox w100 w e s" border="0" cellpadding="5" cellspacing="0" name="quote_status_values" id="quote_status_values">
<tr>
<td class="infobox_subtitle" align="left" nowrap="nowrap"><% {out.write(localizeISText("quote.QuoteListSearch.infobox_subtitle.quote.status",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td class="infobox_item infobox_item_first" >
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" onclick="$('<%=context.getFormattedValue("#",null)%>quote_status_values input[type=checkbox]').attr('checked','checked').trigger('change'); return false;"><% {out.write(localizeISText("quote.QuoteListSearch.link.select.all",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
&nbsp;|&nbsp;
<a href="<%=context.getFormattedValue("#",null)%>" class="tableheader" onclick="$('<%=context.getFormattedValue("#",null)%>quote_status_values input[type=checkbox]').removeAttr('checked','unchecked').trigger('change'); return false;"><% {out.write(localizeISText("quote.QuoteListSearch.link.unselect.all",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
</td>
</tr>
<tr>
<td align="left" width="100%">
<table>
<tr>
<td align="left" class="input_checkbox label_indent">
<input type="checkbox" name="QuoteState"<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("QuoteStates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% while (loop("QuoteStates","quoteState",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("3",null).equals(context.getFormattedValue(getObject("quoteState"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %> checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",32);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %> value="3"> 
</td>
<td class="label">
<label class="label label_light label_checkbox_text"> <% {out.write(localizeISText("quote.QuoteListSearch.New","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
<td>
<input type="checkbox" name="QuoteState" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("QuoteStates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %><% while (loop("QuoteStates","quoteState",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("4",null).equals(context.getFormattedValue(getObject("quoteState"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %> checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",38);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %> value="4"> 
</td>
<td class=label>
<label class="label label_light label_checkbox_text"> <% {out.write(localizeISText("quote.QuoteListSearch.Submitted","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td>
<td>
<input type="checkbox" name="QuoteState" <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("QuoteStates") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><% while (loop("QuoteStates","quoteState",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("9",null).equals(context.getFormattedValue(getObject("quoteState"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %> checked="checked"<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",45);}else{getLoopStack().pop();break;} %><% } %><% } %><% } %> value="9">
</td>
<td class="label">
<label class="label label_light label_checkbox_text"> <% {out.write(localizeISText("quote.QuoteListSearch.Rejected","",null,null,null,null,null,null,null,null,null,null,null));} %> </label>
</td> 
</tr>
</table>
<input type="hidden" value="false" name="initialVisit" />
</td>
<td align="right" valign="bottom" colspan="3">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"> 
<input type="submit" name="find" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("quote.QuoteListSearch.button.find",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>