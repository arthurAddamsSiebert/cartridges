<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><table cellpadding="0" cellspacing="0" border="0">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><select multiple="multiple" size=7 class="select inputfield_en submitAllValues" style="width: 316px;" 
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {8}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>disabled="disabled"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% while (loop("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value","ParameterValue",null)) { %><option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParameterValue:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("ParameterValue:Name"),null) + context.getFormattedValue("@",null) + context.getFormattedValue(getObject("ParameterValue:Domain:DomainName"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></option><% } %><% } %></select><% } else { %><input type="text" maxlength="256" size="50" class="inputfield_en" id="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
value="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):FormattedValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("IsPageletEditable"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>disabled="disabled"<% } %> /><% } %></td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedTab")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedTab"),null).equals(context.getFormattedValue("Content",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %><input type="hidden" name="SelectedTab" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("SelectedTab"),null)),null)%>"><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ConfigurationParameterCtnr:Domain:UUID"),null).equals(context.getFormattedValue(getObject("ContentRepository:RepositoryDomain:UUID"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><td>&nbsp;</td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td align="center">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button sfe-action-dialog" 
name="<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>_StartCategorySelection" 
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.Select.button",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.SelectCategory.button",null)),null)%>" 
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("IsPageletEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
</table>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("ConfigurationParameterDefinition:Multiple"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (hasLoopElements("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name):Value") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td align="center">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="button">
<input type="submit" class="button sfe-action-inline" 
name="RemoveMultipleValues" 
value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.Remove.button",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.RemoveCategory.button",null)),null)%>"
onclick="removeOptions('ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("IsPageletEditable"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center">
<input type="image" name="moveUp" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_up.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.MoveUp.input",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.MoveUp.input1",null)),null)%>" onclick="moveOptionsUp('ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;">
<div style="height: 4px;"></div>
<input type="image" name="moveDown" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/sort_down.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.MoveDown.input",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CategoryParameterInc.MoveDown.input1",null)),null)%>" onclick="moveOptionsDown('ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'); return false;">
</td>
</tr><% } %></table>
</td><% } %></tr>
</table><% printFooter(out); %>