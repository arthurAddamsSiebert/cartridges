<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<tr>
	<td colspan="2">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td class="table_title2 s n"><% {out.write(localizeISText("ExcludedRegions_52.Exclude.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td colspan="2">
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td nowrap="nowrap" class="top">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("ExcludedRegions_52.ExcludeRegions.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td></tr>	
						<tr>
							<td class="table_detail">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %>	
									<SELECT NAME="SelectedRegionId" MULTIPLE SIZE=10 style="width: 300px;" class="dropdown inputfield_en">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedRegions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
											<% while (loop("ExcludedRegions","ExcludedRegion",null)) { %>
												<OPTION value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></OPTION>
											<% } %>
										<% } %>
									</SELECT>		
								<% } else { %>
									<SELECT NAME="SelectedRegionId" MULTIPLE SIZE=10 style="width: 300px;" class="dropdown inputfield_en" disabled="disabled">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedRegions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %>
											<% while (loop("ExcludedRegions","ExcludedRegion",null)) { %>
												<OPTION value="<% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:Id"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {String value = null;try{value=context.getFormattedValue(getObject("ExcludedRegion:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></OPTION>
											<% } %>
										<% } %>
									</SELECT>		
								<% } %>
							</td>
						</tr>	
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SHIPPING"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>		
							<tr>
								<td class="table_detail">
									<table border="0" cellspacing="4" cellpadding="0">
										<tr>
											<td class="button">
												<input type="submit" name="manageExcludedRegions" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ExcludedRegions_52.Manage.button",null)),null)%>" class="button"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						<% } %>	
					</table>
				</td>
			</tr>
		</table>
	</td>
</tr><% printFooter(out); %>