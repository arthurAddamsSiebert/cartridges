<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("type"),null).equals(context.getFormattedValue("Export",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = ("ViewOrderExport-Edit"); getPipelineDictionary().put("detailpipeline", temp_obj);} %><% } else { %><% {Object temp_obj = ("ViewOrderStatusImport-Edit"); getPipelineDictionary().put("detailpipeline", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("scenarios") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><td class="e s" nowrap="nowrap" width="80">
<div id="<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";out.write(value);} %>_A">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>','SelectedObjectUUID','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>_A','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>_B');" class="tableheader"><% {out.write(localizeISText("ImpexScenarioList.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
<div id="<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";out.write(value);} %>_B" style="display:none">
<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
<tr>
<td nowrap="nowrap"><a href="javascript:selectAll('<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";out.write(value);} %>','SelectedObjectUUID','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";out.write(value);} %>_A','<% {String value = null;try{value=context.getFormattedValue(getObject("formname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";out.write(value);} %>_B');" class="tableheader"><% {out.write(localizeISText("ImpexScenarioList.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a></td>
</tr>
</table>
</div>
</td><% } %><td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList.ServiceID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList.Mode.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList.ActiveFrom.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList.ActiveUntil.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("ImpexScenarioList.LastRun.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header s"><% {out.write(localizeISText("ImpexScenarioList.Status.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("scenarios","Config",null)) { %><tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><td class="e s center">
<input type="hidden" name="ObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Config:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="checkbox" name="SelectedObjectUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Config:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("clipboard:contains(Config:ID)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>checked="checked"<% } %>
/>
</td><% } %><td class="table_detail e s top" nowrap="nowrap"><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("detailpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("Config:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a></td>
<td class="table_detail e s top" nowrap="nowrap"><% {Object temp_obj = (getObject("serviceconfigurationrepository:getServiceConfigurationByID(Config:ServiceID)")); getPipelineDictionary().put("service", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("service"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("detailpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ConfigID",null),context.getFormattedValue(getObject("Config:ID"),null)))),null)%>" class="table_detail_link"><% {String value = null;try{value=context.getFormattedValue(getObject("service:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a> <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("service:isRunnable")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>(<% {out.write(localizeISText("ImpexScenarioList.Disabled.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<% } %><% } else { %><% {out.write(localizeISText("ImpexScenarioList.ServiceNoLongerAvailable.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {Object temp_obj = (getObject("Config:JobConfiguration")); getPipelineDictionary().put("job", temp_obj);} %><% {Object temp_obj = (getObject("Config:JobConfiguration:JobCondition")); getPipelineDictionary().put("jobcondition", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("jobcondition")))).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("jobcondition:Unit")))).booleanValue() || ((Boolean) ((( ((Number) getObject("jobcondition:X")).doubleValue() ==((Number)(new Double(-1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImpexScenarioList.Scheduled.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("jobcondition")))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("jobcondition:Unit")))).booleanValue() || ((Boolean) ((( ((Number) getObject("jobcondition:X")).doubleValue() ==((Number)(new Double(-1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImpexScenarioList.Recurring.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("ImpexScenarioList.Manual.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("jobcondition:StartDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("jobcondition:StartDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("jobcondition:EndDate"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("jobcondition:EndDate"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("job:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("job:LastExecutionTime"),new Integer(DATE_SHORT),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("job:LastExecutionTime"),new Integer(DATE_TIME),null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %>&nbsp;<% } %></td>
<td class="table_detail s top" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("job:ExtendedStatus"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("job:ExtendedStatus"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %><% {out.write(localizeISText("ImpexScenarioList.Running.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% getPipelineDictionary().put("refreshstatus", "true"); %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((( ((Number) getObject("job:LastExecutionTime:Time")).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Config:LogStatistics:ErrorCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList-Statistics",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("job:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Orders",null))),null)%>" class="selection_link"><% {out.write(localizeISText("ImpexScenarioList.Errors.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("Config:LogStatistics:WarnCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProcessList-Statistics",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("JobUUID",null),context.getFormattedValue(getObject("job:UUID"),null))).addURLParameter(context.getFormattedValue("JobNamePrefix",null),context.getFormattedValue(getObject("JobNamePrefix"),null)).addURLParameter(context.getFormattedValue("SelectedMenuItem",null),context.getFormattedValue("Orders",null))),null)%>" class="selection_link"><% {out.write(localizeISText("ImpexScenarioList.Warnings.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a><% } else { %><% {out.write(localizeISText("ImpexScenarioList.Completed.link",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %> 
(<% {out.write(localizeISText("ImpexScenarioList.0Seconds.link",null,null,context.getFormattedValue(getObject("job:LastExecutionDuration"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } else { %>
&nbsp;
<% } %><% } %></td>
</tr><% } %></table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="refresh" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList.Refresh.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("scenarios") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",95,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td>
</tr>
</table>
</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="run" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList.Run.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList.New.button",null)),null)%>"/></td>
<td class="button"><input type="submit" class="button" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList.Delete.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } else { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td class="table_detail" colspan="3"><% {out.write(localizeISText("ImpexScenarioList.ThereAreCurrentlyNoProcessesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("readonly"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",117,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" class="button" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ImpexScenarioList.New.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% } %><% } %><% printFooter(out); %>