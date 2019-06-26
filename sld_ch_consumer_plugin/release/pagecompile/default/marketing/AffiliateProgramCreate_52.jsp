<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-New",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("AffiliatePartnerUUID",null),context.getFormattedValue(getObject("AffiliatePartnerUUID"),null)))),
new TagParameter("text",localizeText(context.getFormattedValue("AffiliateProgramCreate_52.CreateNewProgram.text",null))),
new TagParameter("id","newAffiliateProgram")}, 3); %><% URLPipelineAction action583 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Dispatch",null)))),null));String site583 = null;String serverGroup583 = null;String actionValue583 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Dispatch",null)))),null);if (site583 == null){  site583 = action583.getDomain();  if (site583 == null)  {      site583 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup583 == null){  serverGroup583 = action583.getServerGroup();  if (serverGroup583 == null)  {      serverGroup583 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewAffiliateProgram_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProgramForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue583, site583, serverGroup583,true)); %><!-- Tabs -->
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="w e n table_tabs_en_background" nowrap="nowrap"><% {out.write(localizeISText("AffiliateProgramCreate_52.General.table_tabs_en_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="e n s table_tabs_dis_background" nowrap="nowrap"><% {out.write(localizeISText("AffiliateProgramCreate_52.Statistics.table_tabs_dis_background",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="s" width="100%"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="1" border="0" alt=""/></td>
</tr>
</table>
<!-- /Tabs -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("AffiliateProgramCreate_52.CreateNewProgram.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- Check Display Name --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFProgram:ProgramID:isMissing")).booleanValue() || ((Boolean) getObject("WFProgram:ProgramID:isInvalid")).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EndDateErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("StartDateErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("EndDateBeforeStartDate"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EndDateBeforeStartDate"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("CreateException",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e middle"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AffiliateProgramCreate_52.TheAffiliateProgramCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFProgram:ProgramID:isMissing")).booleanValue() || ((Boolean) getObject("WFProgram:ProgramID:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("AffiliateProgramCreate_52.PleaseProvideAValidIDForTheAffiliateProgram.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("CreateException",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("AffiliateProgramCreate_52.TheChoosenIDIsAlreadyInUseForAnAffiliateProgram.error",null,null,encodeString(context.getFormattedValue(getObject("WFProgram:ProgramID:Value"),null)),null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EndDateErrorCode")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("StartDateErrorCode")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("AffiliateProgramCreate_52.PleaseProvideValidDatesForTheAffiliateProgramOrLeave.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("EndDateBeforeStartDate"))))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EndDateBeforeStartDate"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("AffiliateProgramCreate_52.PleaseProvideValidDatesForTheAffiliateProgramTheEndDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% } %> 
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e" nowrap="nowrap"><% {out.write(localizeISText("sld_ch_consumer_plugin.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="aldi">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="fielditem2"><% {out.write(localizeISText("AffiliateProgramCreate_52.Name.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="text" name="WFProgram_DisplayName" maxlength="256" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFProgram:DisplayName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFProgram:Enabled:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><td class="table_detail"><input type="checkbox" name="WFProgram_Enabled" checked="checked" value="true"/></td><% } else { %><td class="table_detail"><input type="checkbox" name="WFProgram_Enabled" value="true"/></td><% } %><td class="fielditem3"><% {out.write(localizeISText("AffiliateProgramCreate_52.Enabled.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="100%">&nbsp;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("WFProgram:ProgramID:isMissing")).booleanValue() || ((Boolean) getObject("WFProgram:ProgramID:isInvalid")).booleanValue() || ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorCode")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("CreateException",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %><td class="fielditem2_error"><% {out.write(localizeISText("AffiliateProgramCreate_52.ID.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2"><% {out.write(localizeISText("AffiliateProgramCreate_52.ID.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td colspan="4" class="table_detail">
<input type="text" name="WFProgram_ProgramID" maxlength="28" size="70" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFProgram:ProgramID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td class="fielditem2"><% {out.write(localizeISText("AffiliateProgramCreate_52.Description.fielditem",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td colspan="4" class="table_detail">
<textarea rows="5" cols="70" name="WFProgram_Description" class="inputfield_en" ><% {String value = null;try{value=context.getFormattedValue(getObject("WFProgram:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFProgram_ProgramStartTime")),
new TagParameter("DateInputFieldName","WFProgram_ProgramStartDate"),
new TagParameter("DateString",getObject("WFProgram_ProgramStartDate")),
new TagParameter("TimeInputFieldName","WFProgram_ProgramStartTime"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("AffiliateProgramCreate_52.Time.TimeInputFieldLabel",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AffiliateProgramCreate_52.StartDate.DateInputFieldLabel",null))),
new TagParameter("Invalid",(((context.getFormattedValue(getObject("StartDateErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))}, 85); %></tr>
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFProgram_ProgramEndTime")),
new TagParameter("DateInputFieldName","WFProgram_ProgramEndDate"),
new TagParameter("DateString",getObject("WFProgram_ProgramEndDate")),
new TagParameter("TimeInputFieldName","WFProgram_ProgramEndTime"),
new TagParameter("TimeInputFieldLabel",localizeText(context.getFormattedValue("AffiliateProgramCreate_52.Time.TimeInputFieldLabel",null))),
new TagParameter("DateInputFieldLabel",localizeText(context.getFormattedValue("AffiliateProgramCreate_52.EndDate.DateInputFieldLabel",null))),
new TagParameter("Invalid",((((Boolean) ((((context.getFormattedValue(getObject("EndDateErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("EndDateBeforeStartDate"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 96); %></tr> 
</table>
</td>
</tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right" width="100%">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="DefaultProgramStartTime" value="00:00"/>
<input type="hidden" name="DefaultProgramEndTime" value="23:59"/>
<input type="hidden" name="DateFormatString" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> <% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AffiliatePartnerUUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AffiliatePartner:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="webform-id" value="WFProgram"/>
<input class="button" type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AffiliateProgramCreate_52.Apply.button",null)),null)%>"/>
</td>
<td class="button"><input class="button" type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("AffiliateProgramCreate_52.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Main Content --><% printFooter(out); %>