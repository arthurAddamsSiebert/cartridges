<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><tr>
<td colspan="3">
<table border="0" cellpadding="2" cellspacing="0">
<tr>
<td align="left" colspan="2">
<span class="infobox_subtitle"><% {out.write(localizeISText("CustomerParametricSearchMask.Customer",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</span>
</td>
<td align="left" colspan="2">
<span class="infobox_subtitle"><% {out.write(localizeISText("CustomerParametricSearchMask.User",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</span>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="WFSearch_CustomerID"><% {out.write(localizeISText("CustomerParametricSearchMask.CustomerID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" class="inputfield_en" size="36" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearch:CustomerID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="WFSearch_CustomerID" name="WFSearch_CustomerID" />
</td>
<td class="label" nowrap="nowrap">
<label for="WFSearch_UserID" class="label label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.UserID.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" class="inputfield_en" size="36" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearch:UserID:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="WFSearch_UserID" name="WFSearch_UserID" />
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_light label_indent" for="WFSearch_CompanyName"><% {out.write(localizeISText("CustomerParametricSearchMask.CompanyName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<input type="text" class="inputfield_en" size="36" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearch:CompanyName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="WFSearch_CompanyName" name="WFSearch_CompanyName" />
</td>
<td class="label" nowrap="nowrap">
<label for="WFSearch_Login" class="label label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.Login.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" class="inputfield_en" size="36" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearch:Login:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="WFSearch_Login" name="WFSearch_Login" />
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="WFSearch_CompanyName"><% {out.write(localizeISText("CustomerParametricSearchMask.CustomerType.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td><% {Object temp_obj = (getObject("ApplicationBO:NamedObject(\"CustomerTypeProvider\")")); getPipelineDictionary().put("CustomerTypeProvider", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CustomerTypeProvider")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CustomerTypeProvider")))).booleanValue() && ((Boolean) (hasLoopElements("CustomerTypeProvider:AllCustomerTypes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %><select name="WFSearch_CustomerType" id="WFSearch_CustomerType" class="select inputfield_en">
<option value="All"><% {out.write(localizeISText("CustomerParametricSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% while (loop("CustomerTypeProvider:AllCustomerTypes","CustomerType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFSearch:CustomerType:Value"),null).equals(context.getFormattedValue(getObject("CustomerType:CustomerTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText(context.getFormattedValue(getObject("CustomerType:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %></select><% } %></td>
<td class="label" nowrap="nowrap">
<label for="WFSearch_FirstName" class="label label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.FirstName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" class="inputfield_en" size="36" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearch:FirstName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="WFSearch_FirstName" name="WFSearch_FirstName" />
</td>
</tr>
<tr>
<td colspan="2"></td>
<td class="label" nowrap="nowrap">
<label for="WFSearch_Login" class="label label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.LastName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<input type="text" class="inputfield_en" size="36" maxlength="255" value="<% {String value = null;try{value=context.getFormattedValue(getObject("WFSearch:LastName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {67}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="WFSearch_LastName" name="WFSearch_LastName" />
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_date label_date_outside label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFSearch:CustomerStartDate:Time:FormattedValue")),
new TagParameter("DateInputFieldName","WFSearch_CustomerStartDate_Day"),
new TagParameter("TimeInputFieldName","WFSearch_CustomerStartDate_Time"),
new TagParameter("DateString",getObject("WFSearch:CustomerStartDate:Day:FormattedValue")),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateObject",getObject("WFSearch:CustomerStartDate:Value"))}, 76); %></tr>
</table>
</td>
<td nowrap="nowrap" class="label"><label class="label label_date label_date_outside label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.CreationDateFrom.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFSearch:UserStartDate:Time:FormattedValue")),
new TagParameter("DateInputFieldName","WFSearch_UserStartDate_Day"),
new TagParameter("TimeInputFieldName","WFSearch_UserStartDate_Time"),
new TagParameter("DateString",getObject("WFSearch:UserStartDate:Day:FormattedValue")),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateObject",getObject("WFSearch:UserStartDate:Value"))}, 91); %></tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label label_date label_date_outside label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.CreationDateTo.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFSearch:CustomerEndDate:Time:FormattedValue")),
new TagParameter("DateInputFieldName","WFSearch_CustomerEndDate_Day"),
new TagParameter("TimeInputFieldName","WFSearch_CustomerEndDate_Time"),
new TagParameter("DateString",getObject("WFSearch:CustomerEndDate:Day:FormattedValue")),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateObject",getObject("WFSearch:CustomerEndDate:Value"))}, 108); %></tr>
</table>
</td>
<td nowrap="nowrap" class="label"><label class="label label_date label_date_outside label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.CreationDateTo.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr><% processOpenTag(response, pageContext, "datetimeinput", new TagParameter[] {
new TagParameter("TimeString",getObject("WFSearch:UserEndDate:Time:FormattedValue")),
new TagParameter("DateInputFieldName","WFSearch_UserEndDate_Day"),
new TagParameter("TimeInputFieldName","WFSearch_UserEndDate_Time"),
new TagParameter("DateString",getObject("WFSearch:UserEndDate:Day:FormattedValue")),
new TagParameter("DateInputFieldEditClass",""),
new TagParameter("DateObject",getObject("WFSearch:UserEndDate:Value"))}, 123); %></tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select label_light label_indent" for="WFSearch_CustomerActiveFlag"><% {out.write(localizeISText("CustomerParametricSearchMask.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td>
<select class="select inputfield_en" name="WFSearch_CustomerActiveFlag" id="WFSearch_CustomerActiveFlag">
<option value=""><% {out.write(localizeISText("CustomerParametricSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFSearch:CustomerActiveFlag:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CustomerParametricSearchMask.Enabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFSearch:CustomerActiveFlag:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",141,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CustomerParametricSearchMask.Disabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
<td class="label_select" nowrap="nowrap">
<label for="WFSearch_UserActiveFlag" class="label label_select label_light label_indent"><% {out.write(localizeISText("CustomerParametricSearchMask.Status.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label>
</td>
<td>
<select class="select inputfield_en" name="WFSearch_UserActiveFlag" id="WFSearch_UserActiveFlag">
<option value=""><% {out.write(localizeISText("CustomerParametricSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFSearch:UserActiveFlag:Value"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CustomerParametricSearchMask.Enabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("WFSearch:UserActiveFlag:Value"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("CustomerParametricSearchMask.Disabled.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
</select>
</td>
</tr>
</table>
<table width="100%">
<tr>
<td align="right">
<table cellspacing="2" cellpadding="0" border="0">
<tr>
<td class="button">
<input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CustomerParametricSearchMask.Find.button",null)),null)%>" name="findParametric" />
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr><% printFooter(out); %>