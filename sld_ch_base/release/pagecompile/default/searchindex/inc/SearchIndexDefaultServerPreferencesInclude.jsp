<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
			<tr>
				<td>
				<table border="0" cellspacing="0" cellpadding="0" width="100%"
					class="w e s">
						<tr>
							<%@page import = "java.util.regex.Matcher"%>
							<%@page import = "java.util.regex.Pattern"%>
							<%@page import = "java.util.StringTokenizer"%>
							<%@page import = "com.intershop.beehive.foundation.util.Iterators"%>
							<%@page import = "com.intershop.beehive.core.capi.naming.NamingMgr"%>	
							<%@page import = "com.intershop.beehive.core.capi.preference.PreferenceDefinitionMgr"%>
							<%@page import = "com.intershop.beehive.configuration.capi.common.Configuration"%>
							<%@page import = "com.intershop.beehive.core.capi.configuration.ConfigurationMgr"%>
							<%@page import = "com.intershop.beehive.core.capi.domain.Domain"%>												
							<%
								ConfigurationMgr configurationMgr = ConfigurationMgr.getInstance();  						
								
								getPipelineDictionary().put("PreferenceDefinitionMgr", NamingMgr.getInstance().lookupManager(PreferenceDefinitionMgr.REGISTRY_NAME));
						
								Object aDomain = getObject("PreferenceDomain");						                     
						
								Configuration configuration = configurationMgr.getConfiguration((Domain)aDomain);
						
								getPipelineDictionary().put("configuration", configuration);
							%>
							<td colspan="3" >
								<table cellpadding="0" cellspacing="0" border="0">
									<% while (loop("PreferenceNames","PrefName",null)) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):isVisible"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %> 
											<tr>
												<td class="fielditem2"><% {String value = null;try{value=context.getFormattedValue(getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>:</td>
												<td class="table_detail">
													<%
														Object values=getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueSet");
														if (values instanceof String)
														{
															getPipelineDictionary().put("ValueSet",Iterators.createIterator(new StringTokenizer((String)values, ";")));
														}
														else
														{
															getPipelineDictionary().put("ValueSet",Iterators.createEmptyIterator());
														}
													%>
													<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>			
														<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",49,e);}if (_boolean_result) { %>
															<input type="text" class="inputfield_en" size="37" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_Integer",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:Integer(PrefName):intValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
														<% } else { %>
															<input type="text" class="inputfield_en" size="37" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_Integer",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:Integer(PrefName):intValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/>
														<% } %>
													<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %>
														<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
															<input type="text" class="inputfield_en" size="37" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_Double",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:Double(PrefName):doubleValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
														<% } else { %>
															<input type="text" class="inputfield_en" size="37" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_Double",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:Double(PrefName):doubleValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled" />
														<% } %>
													<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueType")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
														<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((hasLoopElements("ValueSet") ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
															<%
															// check: it is a password preference
															String prefName = (String)getObject("PrefName");
															String prefValue = (String)getObject("configuration:String(PrefName)");
															if(prefName != null)
															{
																Pattern p = Pattern.compile(".*passwor[dt]+.*", Pattern.CASE_INSENSITIVE);
																Matcher m = p.matcher(prefName);
																getPipelineDictionary().put("DisplayInputFieldPassword", m.find()?"password":"text");
															}
															String inputSize = "37"; 
															if(prefValue != null)
															{
																if(prefValue.length() > 37)	{ inputSize = "50"; }	
																if(prefValue.length() > 50) { inputSize = "70"; }
															}
															getPipelineDictionary().put("DisplayInputFieldSize", inputSize);
															%>
															<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DisplayInputFieldPassword"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
																<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
																	<input type="<% {String value = null;try{value=context.getFormattedValue(getObject("DisplayInputFieldPassword"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="<% {String value = null;try{value=context.getFormattedValue(getObject("DisplayInputFieldSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
																<% } else { %>
																	<input type="<% {String value = null;try{value=context.getFormattedValue(getObject("DisplayInputFieldPassword"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" size="<% {String value = null;try{value=context.getFormattedValue(getObject("DisplayInputFieldSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/>
																<% } %>
															<% } else { %>
																<% {out.write(localizeISText("SearchIndexDefaultServerPreferencesInclude.NoSuchPreferenceFound.inputfield_en",null,null,null,null,null,null,null,null,null,null,null,null));} %>
															<% } %>	
														<% } else { %>

															
															<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("configuration:String(PrefName)"))))).booleanValue() && ((Boolean) (((((Boolean) ((((context.getFormattedValue(getObject("configuration:String(PrefName)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("configuration:String(PrefName)"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
																<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",93,e);}if (_boolean_result) { %>
																	<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {94}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("configuration:String(PrefName)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %>checked="checked"<% } %>/>
																<% } else { %>
																	<input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="true" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("configuration:String(PrefName)"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>checked="checked"<% } %> disabled="disabled"/>
																<% } %>
															<% } else { %>
																
																<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_SEARCH_INDEXES_PREFERENCES"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>	
																	<select class="inputfield_en" size="1" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
																		<% {Object temp_obj = ("false"); getPipelineDictionary().put("IsSelected", temp_obj);} %>
																		<% while (loop("ValueSet",null,null)) { %>
																			<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ValueSet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ValueSet"),null).equals(context.getFormattedValue(getObject("configuration:String(PrefName)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>selected="selected"<% {Object temp_obj = ("true"); getPipelineDictionary().put("IsSelected", temp_obj);} %><% } %> >
																				<% {String value = null;try{value=context.getFormattedValue(getObject("ValueSet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
																			</option>
																		<% } %>
																		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsSelected"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",108,e);}if (_boolean_result) { %>
																			<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {109}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected">
																				<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
																			</option>
																		<% } %>
																	</select>
																<% } else { %>
																	<select class="inputfield_en" size="1" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {115}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled">
																		<% {Object temp_obj = ("false"); getPipelineDictionary().put("IsSelected", temp_obj);} %>
																		<% while (loop("ValueSet",null,null)) { %>
																			<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("ValueSet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ValueSet"),null).equals(context.getFormattedValue(getObject("configuration:String(PrefName)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>selected="selected"<% {Object temp_obj = ("true"); getPipelineDictionary().put("IsSelected", temp_obj);} %><% } %> >
																				<% {String value = null;try{value=context.getFormattedValue(getObject("ValueSet"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {119}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
																			</option>
																		<% } %>
																		<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IsSelected"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",122,e);}if (_boolean_result) { %>
																			<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {123}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" selected="selected">
																				<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {124}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
																			</option>
																		<% } %>
																	</select>
																<% } %>
															<% } %>
														<% } %>
													<% } else { %>
														<% {out.write(localizeISText("SearchIndexDefaultServerPreferencesInclude.UnsupportedValueType",null,null,null,null,null,null,null,null,null,null,null,null));} %>
													<% }}} %>
												</td>
											</tr>
										<% } else { %> 
										
											<% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueType")).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",138,e);}if (_boolean_result) { %>
												<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_Integer",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:Integer(PrefName):intValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {139}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
											<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueType")).doubleValue() ==((Number)(new Double(2))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",140,e);}if (_boolean_result) { %>	
												<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_Double",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:Double(PrefName):doubleValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
											<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("PreferenceDefinitionMgr:PreferenceDefinition(PrefName):ValueType")).doubleValue() ==((Number)(new Double(3))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",142,e);}if (_boolean_result) { %>
												<input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(getObject("PrefName"),null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(PrefName)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
											<% }}} %>
										<% } %> 
									<% } %>
								</table>
							</td>
						</tr>
					<tr>
						<td colspan="3">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" style="width: 0; height: 0; border: none"/>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table><% printFooter(out); %>