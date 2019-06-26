<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- BEGIN TEMPLATE <% out.write(getTemplateName()); %> -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "3");} %><table border="0" cellpadding="0" cellspacing="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("showheading"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><tr>
<td class="infobox_title infobox_locale e s w" style="padding: 4px;" colspan="2" nowrap="nowrap"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.PriorityAndVisibility.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assigntoobjectname")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("assigntoobjectname"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletAssignmentPropertiesInc.For0.infobox_title",null,null,encodeString(context.getFormattedValue(getObject("assigntoobjectname"),null)),null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr><% } %><tr><td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("assigntoobject")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("contentrepository")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Domain"),
new TagParameter("key0","ToObject"),
new TagParameter("value1",getObject("contentrepository:RepositoryDomain")),
new TagParameter("value0",getObject("assigntoobject")),
new TagParameter("mapname","PageSchedulesParams")}, 21); %><% {try{executePipeline("ProcessPageletAssignments-GetPageletAssignments",((java.util.Map)(getObject("PageSchedulesParams"))),"PageletAssignmentsDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 24.",e);}} %><% processOpenTag(response, pageContext, "assignmentstrategy", new TagParameter[] {
new TagParameter("AssignmentStrategy","AssignStrategy"),
new TagParameter("PositionableHelper","PositionableHelper"),
new TagParameter("FromClass","com.intershop.component.pmc.capi.pagelet.Pagelet"),
new TagParameter("ContextObject",getObject("assigntoobject")),
new TagParameter("Domain",getObject("contentrepository:RepositoryDomain"))}, 26); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PositionableHelper:MaxPosition"),null).equals(context.getFormattedValue(new Double(0.0),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label_text"><label class="label label_text"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Priority.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="fielditem2" colspan="8"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ispage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletAssignmentPropertiesInc.ThisIsTheFirstPageItWillBeAssignedWithTheHighestPr.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("PageletAssignmentPropertiesInc.ThisIsTheFirstComponentItWillBeAssignedWithTheHigh.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
<input type="hidden" name="AssignmentPosition" value="1"/>
</tr><% } else { %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="AssignmentPosition"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Priority.label1",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="fielditem2" colspan="3"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignmentPosition"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% getPipelineDictionary().put("CurrentPosition", Double.valueOf((String)getPipelineDictionary().get("AssignmentPosition"))); %><% } else { %><% {Object temp_obj = (getObject("PositionableHelper:MinPosition")); getPipelineDictionary().put("CurrentPosition", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "getcontentsharinghelper", new TagParameter[] {
new TagParameter("ContentSharingHelper","SharingHelper"),
new TagParameter("RepositoryDomain",getObject("contentrepository:RepositoryDomain"))}, 49); %><% processOpenTag(response, pageContext, "positionselect", new TagParameter[] {
new TagParameter("CurrentPosition",getObject("CurrentPosition")),
new TagParameter("End",(new Double( ((Number) getObject("PositionableHelper:PositionablesCount")).doubleValue() +((Number) new Double(1)).doubleValue()))),
new TagParameter("SelectName","AssignmentPosition"),
new TagParameter("SelectClass","select inputfield_en"),
new TagParameter("Positionables",getObject("SharingHelper:LocalAssignments(PageletAssignmentsDictionary:Assignments)"))}, 50); %></td>
<td class="table_detail" width="30%" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ispage"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
(<% {out.write(localizeISText("PageletAssignmentPropertiesInc.Currently0PagesAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } else { %>
(<% {out.write(localizeISText("PageletAssignmentPropertiesInc.Currently0ComponentsAssigned.table_detail",null,null,context.getFormattedValue(getObject("PositionableHelper:PositionablesCount"),null),null,null,null,null,null,null,null,null,null));} %>)
<% } %></td>
</tr><% } %><% } else { %><tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio" for=""><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Priority.label2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="input_radio">
<input type="radio" name="AssignmentPositioning" id="AssignmentPositioning_TOP" value="TOP" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("TOP",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((Boolean) ((disableErrorMessages().isDefined(getObject("AssignmentPositioning"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",70,e);}if (_boolean_result) { %>checked="checked"<% } %>
onclick="this.form.elements.AssignmentPosition.disabled=this.checked;"/>
</td>
<td class="label_radio_text"><label class="label label_radio_text" for="AssignmentPositioning_TOP"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Highest1.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="input_radio">
<input type="radio" name="AssignmentPositioning" id="AssignmentPositioning_POSITION" value="POSITION" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("POSITION",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %>checked="checked"<% } %>
onclick="this.form.elements.AssignmentPosition.disabled=!this.checked;"/>
</td>
<td class="fielditem2" colspan="6">
<input type="text" name="AssignmentPosition" value="<% {String value = null;try{value=context.getFormattedValue(getObject("AssignmentPosition"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" size="5" class="inputfield_en" onchange="this.form.elements.AssignmentPositioning[1].checked=true" <% _boolean_result=false;try {_boolean_result=((Boolean)(((!((Boolean) ((disableErrorMessages().isDefined(getObject("AssignmentPositioning"))))).booleanValue() || ((Boolean) (((!(context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("POSITION",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",82,e);}if (_boolean_result) { %>disabled="disabled"<% } %> />
</td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="input_radio">
<input type="radio" name="AssignmentPositioning" id="AssignmentPositioning_BOTTOM" value="BOTTOM" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentPositioning"),null).equals(context.getFormattedValue("BOTTOM",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>checked="checked"<% } %>
onclick="this.form.elements.AssignmentPosition.disabled=this.checked;"/>
</td>
<td class="label_radio_text"><label class="label label_radio_text" for="AssignmentPositioning_BOTTOM"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Lowest.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr><% } %><tr>
<td colspan="9">&nbsp;</td>
</tr>
<tr>
<td class="label_radio" nowrap="nowrap"><label class="label label_radio" for=""><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Visibility.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td>
<td class="input_radio">
<input name="AssignmentOnline" id="AssignmentOnline_false" value="false" type="radio" 
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("AssignmentOnline"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %>checked="checked"<% } %> />
</td>
<td class="label_radio_text"><label class="label label_radio_text" for="AssignmentOnline_false"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Hidden.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td>
</tr>
<tr>
<td class="fielditem2">&nbsp;</td>
<td class="input_radio label_fix1">
<input name="AssignmentOnline" id="AssignmentOnline_true" value="true" type="radio"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((((Boolean) ((((context.getFormattedValue(getObject("AssignmentOnline"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || !((Boolean) ((disableErrorMessages().isDefined(getObject("AssignmentOnline"))))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",110,e);}if (_boolean_result) { %>checked="checked"<% } %> 
/>
</td>
<td class="label_radio_text label_fix1"><label class="label label_radio_text" for="AssignmentOnline_true"><% {out.write(localizeISText("PageletAssignmentPropertiesInc.Visible.label",null,null,null,null,null,null,null,null,null,null,null,null));} %></label></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentValidFrom_Day")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentValidFrom_Time")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",114,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentPropertiesInc.From.InputFieldLabel",null))),
new TagParameter("DateString",getObject("AssignmentValidFrom_Day")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 115); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Time"),
new TagParameter("TimeString",getObject("AssignmentValidFrom_Time")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 121); %><% } else { %><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentPropertiesInc.From.InputFieldLabel",null))),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 127); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidFrom_Time"),
new TagParameter("DateObject",getObject("WorkingContextTime")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 133); %><% } %></tr>
<tr>
<td class="fielditem2" colspan="3">&nbsp;</td><% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidTo_Day"),
new TagParameter("InputFieldLabel",localizeText(context.getFormattedValue("PageletAssignmentPropertiesInc.Until.InputFieldLabel",null))),
new TagParameter("DateString",getObject("AssignmentValidTo_Day")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 142); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","AssignmentValidTo_Time"),
new TagParameter("TimeString",getObject("AssignmentValidTo_Time")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("AssignmentPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 148); %></tr>
<tr><td colspan="8"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
<input type="hidden" name="DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("datepatternlocale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("datepatternlocale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {156}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td>
</tr>
</table>
<!-- END TEMPLATE <% out.write(getTemplateName()); %> --><% printFooter(out); %>