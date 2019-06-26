<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {Object temp_obj = (getObject("CurrentChannel:RepositoryDomain:Site:Configuration")); getPipelineDictionary().put("configuration", temp_obj);} %>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td>
			<table border="0" cellspacing="0" cellpadding="0" width="100%"
				class="w e s">
				<tr>
					<td colspan="3">
						<table cellpadding="0" cellspacing="0" border="0">
							
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderServerContextPath.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
										<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerContextPath\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerContextPath\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderServerURL.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>	
										<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerURL\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {34}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerURL\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  disabled="disabled"/>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.UploadToFACTFinderFTPServer.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
										<select class="inputfield_en" size="1" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerEnabled",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
											<option value="yes" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("yes",null).equals(context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerEnabled\")"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>selected="selected"<% } %> >
												<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>
											</option>
											<option value="no"  <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("no",null).equals(context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerEnabled\")"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",51,e);}if (_boolean_result) { %>selected="selected"<% } %> >
												<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>
											</option>
										</select>
									<% } else { %>
										<select class="inputfield_en" size="1" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerEnabled",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled">
											<option value="yes" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("yes",null).equals(context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerEnabled\")"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>selected="selected"<% } %> >
												<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>
											</option>
											<option value="no"  <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue("no",null).equals(context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerEnabled\")"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>selected="selected"<% } %> >
												<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>
											</option>
										</select>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderFTPServerURL.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>	
										<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerURL\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerURL\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {76}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  disabled="disabled"/>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderFTPServerUser.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",86,e);}if (_boolean_result) { %>	
										<input autocomplete="off" type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerUser",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerUser\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {87}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input autocomplete="off" type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerUser",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerUser\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {89}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  disabled="disabled"/>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderFTPServerPassword.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",99,e);}if (_boolean_result) { %>
										<input autocomplete="off" type="password" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerPassword",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerPassword\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input autocomplete="off" type="password" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderFTPServerPassword",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderFTPServerPassword\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {102}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  disabled="disabled"/>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderWebServiceUser.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",112,e);}if (_boolean_result) { %>
										<input autocomplete="off" type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerWebserviceUser",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerWebserviceUser\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {113}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input autocomplete="off" type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerWebserviceUser",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerWebserviceUser\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  disabled="disabled"/>
									<% } %>
								</td>
							</tr>
							
							<tr>
								<td class="fielditem2">
									<% {out.write(localizeISText("SearchIndexFactFinderServerPreferencesInclude.FACTFinderWebServicePassword.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
								</td>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",125,e);}if (_boolean_result) { %>
										<input autocomplete="off" type="password" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerWebservicePassword",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerWebservicePassword\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {126}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } else { %>
										<input autocomplete="off" type="password" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("factfinder-ws.FactfinderServerWebservicePassword",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"factfinder-ws.FactfinderServerWebservicePassword\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"  disabled="disabled"/>
									<% } %>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"
						width="1" height="6" alt="" border="0" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table><% printFooter(out); %>