<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep1:CartridgeID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="hidden" value="" />

<table border="0" cellspacing="0" cellpadding="0" width="100%">
	
	<% while (loop("GroupedServiceDefinitions:ServiceDefinitionsAndGroups","ServiceEntry",null)) { %>
		
		<tr>
			<td class="table_title2 w e s" colspan="2">
				<% {String value = null;try{value=context.getFormattedValue(getObject("ServiceEntry:Group:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
			</td>
		</tr>
		
		<% while (loop("ServiceEntry:Definitions:ServiceDefinitions","Def",null)) { %>
			
			<tr>
				<td class="e w"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
				<td class="e"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
			</tr>
			<tr>
				<td class="e w center input_radio_table">
					<input name="<% {String value = null;try{value=context.getFormattedValue(getObject("AddNewWizzardFormStep1:ServiceDefinitionID:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" type="radio" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Def:CartridgeID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/<% {String value = null;try{value=context.getFormattedValue(getObject("Def:ServiceDefinitionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/<% {out.write(localizeISText(context.getFormattedValue(getObject("Def:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>" 
						id="<% {String value = null;try{value=context.getFormattedValue(getObject("Def:ServiceDefinitionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" 
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AddNewWizzardFormStep1:ServiceDefinitionID:Value"),null).equals(context.getFormattedValue(getObject("Def:ServiceDefinitionID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>checked="checked"<% } %> 
					/>
				</td>
				<td  class="label_radio_text e w100">
					<label class="label label_table label_radio_text label_light" for="<% {String value = null;try{value=context.getFormattedValue(getObject("Def:ServiceDefinitionID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(localizeText(context.getFormattedValue(getObject("Def:LocalizationKeyForName"),null)))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
							<% {out.write(localizeISText(context.getFormattedValue(getObject("Def:LocalizationKeyForName"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
						<% } else { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Def:LocalizationKeyForName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } %>
					</label>
				</td>
			</tr>
			<tr>
				<td class="e w s"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
				<td class="e s"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" /></td>
			</tr>
		<% } %>
		
	<% } %>
</table><% printFooter(out); %>