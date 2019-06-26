<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: region/CountryList.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<td nowrap="nowrap" class="top">
	<table border="0" cellspacing="0" cellpadding="0">
		<tr><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("CountryList.Include.Countries.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td></tr>	
		<tr>
			<td class="table_detail">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>		
					<SELECT NAME="SelectedCountryUUID" MULTIPLE SIZE=10
					style="width: 300px;" class="dropdown inputfield_en">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CountriesDic:Countries") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>				
							<% while (loop("CountriesDic:Countries","Country",null)) { %>
								<OPTION value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Country:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Country:Id"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</OPTION>
							<% } %>		
						<% } %>			
					</SELECT>		
				<% } else { %>
					<SELECT NAME="SelectedCountryUUID" MULTIPLE SIZE=10
					style="width: 300px;" class="dropdown inputfield_en" disabled="disabled">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("CountriesDic:Countries") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>				
							<% while (loop("CountriesDic:Countries","Country",null)) { %>
								<OPTION value="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("Country:Id"),null) + context.getFormattedValue("_",null) + context.getFormattedValue(getObject("Country:Id"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("Country:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (<% {String value = null;try{value=context.getFormattedValue(getObject("Country:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</OPTION>
							<% } %>		
						<% } %>			
					</SELECT>		
				<% } %>
			</td>
		</tr>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>			
			<tr>
				<td class="table_detail">
					<table border="0" cellspacing="4" cellpadding="0">
						<tr>
						   	<td class="button">
								<input type="submit" name="manageCountries" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("CountryList.Manage.button",null)),null)%>" class="button"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>	
		<% } %>
	</table>
</td><% printFooter(out); %>