<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageComponentActionParameters.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionTemplate:Name"),null).equals(context.getFormattedValue("AT_UpdatePageletsPublishingPeriod",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionConfirmation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("ActionParameterForm:ComponentsPublished:Value"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionParameterForm:ComponentsPublished:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><tr><td>
<table>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("sld_enterprise_app.SetPublishingPeriod.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="fielditem2"><% {out.write(localizeISText("sld_enterprise_app.From.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm_ValidFrom_Day"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm_ValidFrom_Time"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="fielditem2"><% {out.write(localizeISText("sld_enterprise_app.Until.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm_ValidTo_Day"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("ActionParameterForm_ValidTo_Time"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr>
</table>
</td></tr><% } else { %><tr>
<td class="fielditem2" width="1"><% {out.write(localizeISText("sld_enterprise_app.Publishing.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="fielditem2" nowrap="nowrap" colspan="6"><% {out.write(localizeISText("sld_enterprise_app.NotPublished.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %><% } %><% } else { %><tr>
<td class="fielditem2" width="1"><% {out.write(localizeISText("sld_enterprise_app.Publishing.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td>
<input name="ActionParameterForm_OnlineFlag" value="false" type="radio" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("ActionParameterForm:OnlineFlag:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="fielditem2" nowrap="nowrap" colspan="6"><% {out.write(localizeISText("sld_enterprise_app.NotPublished.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
</tr>
<tr>
<td>&nbsp;</td>
<td valign="top" style="padding-top:4px;">
<input name="ActionParameterForm_OnlineFlag" value="true" type="radio" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ActionParameterForm:OnlineFlag:Value"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
checked="checked"
<% } %>
/>
</td>
<td class="fielditem2"><% {out.write(localizeISText("sld_enterprise_app.Published.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ActionParameterForm_ValidFrom_Day"),
new TagParameter("InputFieldLabel","from"),
new TagParameter("DateString",getObject("ActionParameterForm:ValidFrom_Day:Value")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 49); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ActionParameterForm_ValidFrom_Time"),
new TagParameter("TimeString",getObject("ActionParameterForm:ValidFrom_Time:Value")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidFromIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 55); %> 
</tr> 
<tr>
<td colspan="3">&nbsp;</td> 
<% processOpenTag(response, pageContext, "dateinput", new TagParameter[] {
new TagParameter("InputFieldName","ActionParameterForm_ValidTo_Day"),
new TagParameter("InputFieldLabel","until"),
new TagParameter("DateString",getObject("ActionParameterForm:ValidTo_Day:Value")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 63); %><% processOpenTag(response, pageContext, "timeinput", new TagParameter[] {
new TagParameter("InputFieldName","ActionParameterForm_ValidTo_Time"),
new TagParameter("TimeString",getObject("ActionParameterForm:ValidTo_Time:Value")),
new TagParameter("Invalid",((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorValidToIncorrect")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ErrorPeriodIncorrect")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))}, 69); %></tr>
<input type="hidden" name="ActionParameterForm_DatePattern" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputDatePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentSession:Locale:DefaultRegionalSettings:inputTimePattern"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {75}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %><% printFooter(out); %>