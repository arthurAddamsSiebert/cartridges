<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewUserBonusPointAccountEntry_52.NewBonusPointEntry.text",null)))}, 3); %><% URLPipelineAction action304 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserBonusPointEntry_52-Dispatch",null)))),null));String site304 = null;String serverGroup304 = null;String actionValue304 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserBonusPointEntry_52-Dispatch",null)))),null);if (site304 == null){  site304 = action304.getDomain();  if (site304 == null)  {      site304 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup304 == null){  serverGroup304 = action304.getServerGroup();  if (serverGroup304 == null)  {      serverGroup304 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserBonusPointEntry_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue304, site304, serverGroup304,true)); %><table width="100%" border="0" cellspacing="0" cellpadding="0"> 
<tr>
<td width="100%" class="table_title aldi"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.BonusPointEntry.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.EntryCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:Value:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.BonusPointsIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:Unused:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.RemainingPointsIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:Comment:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.ACommentIsMandatory.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Value_ErrorCode")))).booleanValue() && !((Boolean) (getObject("EntryForm:Value:isMissing"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.PleaseProvideAValidBonusPointsValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Unused_ErrorCode")))).booleanValue() && !((Boolean) (getObject("EntryForm:Unused:isMissing"))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.PleaseProvideAValidRemainingPointsValue.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("UnusedLargerThanValueError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.TheRemainingPointsMustBeLowerOrEqualToBonusPoints.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpirationDate_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ExpirationDate_ErrorCode"),null).equals(context.getFormattedValue("ParseError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.TheExpirationDateIsNotInTheCorrectFormat.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } else { %><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.PleaseProvideAMeaningfulExpirationDate.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("BonusPointAccountEntryMerged"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.TheBonusPointAccountEntryValuesHaveBeenCombined.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></b>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.YouCanCreateANewBonusPointEntry.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<tr>
<td class="w e s">
<table cellpadding="0" cellspacing="0" border="0">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("EntryForm:Value:isMissing"))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("Value_ErrorCode"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.BonusPoints.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.BonusPoints.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><input type="text" name="EntryForm_Value" maxlength="10" size="10" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EntryForm:Value:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {63}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (getObject("EntryForm:Unused:isMissing"))).booleanValue() || ((Boolean) ((disableErrorMessages().isDefined(getObject("Unused_ErrorCode"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.RemainingPoints.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.RemainingPoints.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail" ><input type="text" name="EntryForm_Unused" maxlength="10" size="10" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EntryForm:Unused:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/></td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.Redeemable.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail_checkbox" width="1">
<input type="checkbox" name="EntryForm_Redeemable" value="true"
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",77,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("EntryForm:Redeemable:isMissing")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>
checked="checked"
<% } %><% } %>
/>
</td>
<td colspan="2">&nbsp;</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ExpirationDate_ErrorCode"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.ExpirationDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.ExpirationDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td><% } %><td class="table_detail">
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","EntryForm_ExpirationDate_Day"),
new TagParameter("Required","false"),
new TagParameter("DateString",getObject("EntryForm_ExpirationDate_Day")),
new TagParameter("Invalid",(disableErrorMessages().isDefined(getObject("ExpirationDate_ErrorCode"))))}, 95); %></tr>
</table>
</td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:Comment:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",106,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.Comment.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap" width="1"><% {out.write(localizeISText("NewUserBonusPointAccountEntry_52.Comment.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail"><textarea rows="5" cols="69" name="EntryForm_Comment" class="inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("EntryForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",111,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("EntryForm:Comment:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {111}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea></td>
</tr>
</table>
</td>
</tr> 
<tr>
<td align="right" class="w e s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="hidden" name="USER_UUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Profile:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {120}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewUserBonusPointAccountEntry_52.Apply.button",null)),null)%>" class="button"/></td>
<td class="button"><input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewUserBonusPointAccountEntry_52.Cancel.button",null)),null)%>" class="button"/></td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><% printFooter(out); %>