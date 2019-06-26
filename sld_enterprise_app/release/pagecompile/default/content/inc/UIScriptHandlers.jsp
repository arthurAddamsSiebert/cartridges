<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ConfigurationParameterCtnr:ParentContainer"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>						 
	<script type="text/javascript" src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/parameter-overloading.js"></script>
					
	
	<% processOpenTag(response, pageContext, "uidefinitionutils", new TagParameter[] {
new TagParameter("UIDefinitionUtils","UIDefinitionUtils")}, 6); %>
	<% {Object temp_obj = (replace(context.getFormattedValue(getObject("ConfigurationParameterCtnr:UUID"),null),(String)("\\."),(String)("-"))); getPipelineDictionary().put("ContainerIDSuffix", temp_obj);} %>
	
	<% {Object temp_obj = (getObject("UIDefinitionUtils:AggregateScriptFiles(ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr,ContentRepository)")); getPipelineDictionary().put("UIAggregateScriptFiles", temp_obj);} %>			
	
	<script type="text/javascript">
		if (typeof cpoScriptHandlers == 'undefined') {	
			var cpoScriptHandlers = {};
		}
		
		$(function(){
			cpoManager.init(jQuery('<%=context.getFormattedValue("#",null)%>cpo-form-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";out.write(value);} %>'));
		});
	</script>
		
	<% while (loop("UIAggregateScriptFiles","ScriptFile",null)) { %>
		<script type="text/javascript"  src="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(context.webRoot(),null) + context.getFormattedValue("/",null) + context.getFormattedValue(getObject("ScriptFile"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></script>		
	<% } %>
		
		
	<% while (loop("ConfigurationParameterCtnr:ConfigurationParameterDefinitionCtnr:ConfigurationParameterDefinitions","ConfigurationParameterDefinition",null)) { %>
		<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ConfigurationParameterDefinition:Visible"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>				
			<% {Object temp_obj = (getObject("UIDefinitionUtils:ScriptHandler(ConfigurationParameterDefinition:TypeReference,ContentRepository)")); getPipelineDictionary().put("ScriptHandlerReference", temp_obj);} %>			
											
		    <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ScriptHandlerReference"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>																		
			<script type="text/javascript">
				jQuery(function() {		
					var $parameterUI = jQuery('<%=context.getFormattedValue("#",null)%>cpo-parameter-<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-<% {String value = null;try{value=context.getFormattedValue(getObject("ContainerIDSuffix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";out.write(value);} %>');
					
					var parameterInfo = {
						name : '<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>',
						multiple : <% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:Multiple"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>,
						typeReference : '<% {String value = null;try{value=context.getFormattedValue(getObject("ConfigurationParameterDefinition:TypeReference"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {38}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>'						
					};
					
					cpoScriptHandlers.<% {String value = null;try{value=context.getFormattedValue(getObject("ScriptHandlerReference:ScriptHandlerName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>($parameterUI, parameterInfo, $);
					
					var parameter = cpoManager.createUIParameter($parameterUI);																							
					parameter.init();																																											
				});
			</script>
			<% } %>		
		<% } %>				
	<% } %>
<% } %>
<% printFooter(out); %>