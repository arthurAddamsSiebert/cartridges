<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 2); %>
<% processOpenTag(response, pageContext, "uidefinitionutils", new TagParameter[] {
new TagParameter("UIDefinitionUtils","UIDefinitionUtils")}, 3); %>	
<% {Object temp_obj = (getObject("UIDefinitionUtils:ConfigurationParameterTypeUIDefinition(ConfigurationParameterDefinition:TypeReference,ContentRepository)")); getPipelineDictionary().put("ConfigurationParameterTypeUIDefinition", temp_obj);} %>
<% {Object temp_obj = (getObject("ConfigurationParameterWebForm:getParameter(ConfigurationParameterDefinition:Name)")); getPipelineDictionary().put("FormParameter", temp_obj);} %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConfigurationParameterDefinition:Visible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
<tr id="cpo-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";out.write(value);} %>" class="cpo-parameter row-hover">
	<td nowrap="nowrap" class="label label_top">
		<label class="label <% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FormParameter:isInvalid"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>label_error<% } %>" for="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
			<input  style="visibility:hidden"
					class="cpo-revert-select"
					type="checkbox"
					name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("FormParameter:RevertFlagQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
					value="true"
			/>
			<% } %>
			
			<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ConfigurationParameterDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("ConfigurationParameterDefinition:Optional")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><span class="star" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Mandatory.title",null)),null)%>">*</span><% } %>&nbsp;
		</label>
	</td>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(getObject("ConfigurationParameterTypeUIDefinition:EditingTemplate"),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
		<td class="table_detail" valign="top" nowrap="nowrap">
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ConfigurationParameterTypeUIDefinition:EditingTemplate"),null), null, "29");} %>
		</td>
	<% } else { %>
		<td class="table_detail label_top_text" nowrap="nowrap">
			<span class="error"><% {out.write(localizeISText("ConfigurationParameterUIRow.UIDefinitionErrorFor0.fielditem",null,null,encodeString(context.getFormattedValue(getObject("ConfigurationParameterDefinition:TypeReference"),null)),null,null,null,null,null,null,null,null,null));} %></span>
		</td>
	<% } %>
	<td class="table_detail_comment" nowrap="nowrap" align="right">
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",37,e);}if (_boolean_result) { %>
			<input  class="cpo-state"
					type="hidden" 
					name="ConfigurationParameter_<% {String value = null;try{value=context.getFormattedValue(getObject("FormParameter:OverloadFlagQualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
					value="<% {String value = null;try{value=context.getFormattedValue(getObject("FormParameter:Overloading"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
			/>
			
			<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("FormParameter:Overloading"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
				<img class="cpo-state-icon" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ic_overload.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Overwritten.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Overwritten.title",null)),null)%>" />
			<% } else { %>
				<img class="cpo-state-icon" style="visibility:hidden" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ic_overload.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Overwritten.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Overwritten.title",null)),null)%>" />
			<% } %>
		<% } %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConfigurationParameterDefinition:Localizable"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %>
			<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ic_localizable.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Localizable.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Localizable.title",null)),null)%>" />
		<% } else { %>
			<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/ic_localizable.gif" alt="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Localizable.alt",null)),null)%>" title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ConfigurationParameterUIRow.Localizable.title",null)),null)%>" style="visibility:hidden" />
		<% } %>
	</td>
	<td class="table_detail_comment" width="100%">
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ConfigurationParameterTypeUIDefinition:DescriptionTemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("ConfigurationParameterTypeUIDefinition:DescriptionTemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
			<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("ConfigurationParameterTypeUIDefinition:DescriptionTemplate"),null), null, "58");} %>
		<% } else { %>
			<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:Description(ConfigurationParameterDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";out.write(value);} %>
		<% } %>
	</td>
</tr>
<% } %><% printFooter(out); %>