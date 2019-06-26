<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("CurrentChannel:RepositoryDomain:Site:Configuration")); getPipelineDictionary().put("configuration", temp_obj);} %>
<% } else { %>
	<% {Object temp_obj = (getObject("MasterRepository:OwningDomain:Site:Configuration")); getPipelineDictionary().put("configuration", temp_obj);} %>
<% } %>
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td>
			<table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
				<tr>
					<td colspan="3">
						<table cellpadding="0" cellspacing="0" border="0">
							
							
							<tr>
								<td class="label">
										<label class="label" for="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("solr_ServiceConfiguration.SolrServerURL.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
								</td>
								<td class="table_detail">
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PreferenceConfigurationEditable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",23,e);}if (_boolean_result) { %>
									<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"solr.SolrServerURL\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/>
									<% } else { %>
									<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerURL",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"solr.SolrServerURL\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } %>
								</td>
							</tr>
							<tr>
								<td colspan="2"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
							</tr>
							
							<tr>
								<td class="label">
									<label class="label" for="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("solr_ServiceConfiguration.SolrServerContextPath.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
								</td>
								<td class="table_detail">
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PreferenceConfigurationEditable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %>
									<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"solr.SolrServerContextPath\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled" />
									<% } else { %>
									<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrServerContextPath",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"solr.SolrServerContextPath\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
									<% } %>
								</td>
							</tr>
							<tr>
								<td colspan="2"><img width="1" border="0" height="4" alt="" src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif"></td>
							</tr>
							
							<tr>
								<td class="label">
									<label class="label" for="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrClusterNodeURLs",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% {out.write(localizeISText("solr_ServiceConfiguration.ListOfSolrClusterNodeURLs.fielditem2","",null,null,null,null,null,null,null,null,null,null,null));} %></label>
								</td>
								<td class="table_detail">
									<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PreferenceConfigurationEditable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("PreferenceConfigurationEditable"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
									<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrClusterNodeURLs",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrClusterNodeURLs",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"solr.SolrClusterNodeURLs\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled" />
									<% } else { %>
									<input type="text" class="inputfield_en" size="70" name="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrClusterNodeURLs",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" id="<% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("solr.SolrClusterNodeURLs",null) + context.getFormattedValue("_String",null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("configuration:String(\"solr.SolrClusterNodeURLs\")"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
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