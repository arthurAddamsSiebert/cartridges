<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("type"),null).equals(context.getFormattedValue("Export",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = ("ViewOrderExportGeneral_52-Edit"); getPipelineDictionary().put("detailpipeline", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewOrderStatusImport_52-Edit"); getPipelineDictionary().put("detailpipeline", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("scenarios") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";out.write(value);} %>_A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>','SelectedObjectUUID','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>_A','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>_B');" class="tableheader"><% {out.write(localizeISText("ImpexScenarioList_52.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";out.write(value);} %>_B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";out.write(value);} %>','SelectedObjectUUID','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";out.write(value);} %>_A','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";out.write(value);} %>_B');" class="tableheader"><% {out.write(localizeISText("ImpexScenarioList_52.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList_52.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList_52.ServiceID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList_52.Mode.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList_52.ActiveFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList_52.ActiveUntil.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList_52.LastRun.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s"><% {out.write(localizeISText("ImpexScenarioList_52.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("scenarios","Config",null)) { %><% processOpenTag(response, pageContext, "impexscenariolistitem", new TagParameter[] {
new TagParameter("readonly",getObject("readonly")),
new TagParameter("detailpipeline",getObject("detailpipeline")),
new TagParameter("config",getObject("Config")),
new TagParameter("clipboard",getObject("clipboard")),
new TagParameter("serviceconfigurationrepository",getObject("serviceconfigurationrepository"))}, 39); %><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList_52.Refresh.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("scenarios") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="run" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList_52.Run.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList_52.New.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList_52.Delete.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail" colspan="3"><% {out.write(localizeISText("ImpexScenarioList_52.ThereAreCurrentlyNoProcessesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList_52.New.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% printFooter(out); %>