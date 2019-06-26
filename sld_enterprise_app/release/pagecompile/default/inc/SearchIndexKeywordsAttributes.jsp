<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ChannelID")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("ChannelID"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<% {Object temp_obj = (getObject("CurrentChannelPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %>
<% } else { %>
	<% {Object temp_obj = (getObject("CurrentUserPermissionMap")); getPipelineDictionary().put("PermissionMap", temp_obj);} %>
<% } %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="infobox_title infobox left aldi">
			<table border="0" cellpadding="4" cellspacing="0" width="100%">
				<tr>
					<td><% {out.write(localizeISText("SearchIndexKeywordsAttributes.SearchIndexKeywords",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				</tr>
			</table>
		</td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_LongSearchKeywordsText")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_LongSearchKeywordsText"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
		<tr>
			<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
				<tr>
					<td class="error_icon top e">
						<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
					</td>
					<td class="error top" width="100%">
						<% {out.write(localizeISText("SearchIndexKeywordsAttributes.SearchKeywordsCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
					</td>
				</tr>
			</table>
		</tr>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_UpdateKeywords")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_UpdateKeywords"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
		<tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr>
						<td class="error_icon top e">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
						</td>
						<td class="error top" width="100%">
							<% {out.write(localizeISText("SearchIndexKeywordsAttributes.TheSearchKeywordsCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% }} %>
	<tr>
		<td class="w e s table_title_description">
			<% {out.write(localizeISText("SearchIndexKeywordsAttributes.DefineSearchIndexKeywordsForTheProductHere.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
		</td>
	</tr>
	<tr>
		<td class="w e s" colspan="2">
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				<tr>
					<td nowrap="nowrap" class="label_textarea" width="1%"><label class="label label_textarea" for="searchKeywords"><% {out.write(localizeISText("SearchIndexKeywordsAttributes.SearchIndexKeywords.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
					<td class="table_detail">
						<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_LongSearchKeywordsText")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ERROR_LongSearchKeywordsText"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
							<textarea class="label_textarea inputfield_en" name="searchKeywords" id="searchKeywords" rows="5" cols="72"><% {String value = null;try{value=context.getFormattedValue(getObject("searchKeywords"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
						<% } else { %>
							<% {Object temp_obj = (getObject("Product:MultipleLocalizedStrings(\"SearchIndexKeywords\",Locale)")); getPipelineDictionary().put("ProductSearchIndexKeywordsIterator", temp_obj);} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",63,e);}if (_boolean_result) { %>
								<textarea class="inputfield_en" name="searchKeywords" id="searchKeywords" rows="5" cols="70"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductSearchIndexKeywordsIterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% while (loop("ProductSearchIndexKeywordsIterator","SearchIndexKeyword",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndexKeyword")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue((context.getFormattedValue(getObject("SearchIndexKeyword"),null).trim()),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndexKeyword"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("SearchIndexKeyword") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>&#10;<% } %><% } %><% } %><% } %></textarea>								
							<% } else { %>
								<textarea class="inputfield_en" name="searchKeywords" id="searchKeywords" rows="5" cols="70" disabled="disabled"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductSearchIndexKeywordsIterator"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% while (loop("ProductSearchIndexKeywordsIterator","SearchIndexKeyword",null)) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SearchIndexKeyword")))).booleanValue() && ((Boolean) ((( ((Number) (new Double(context.getFormattedValue((context.getFormattedValue(getObject("SearchIndexKeyword"),null).trim()),null).length()))).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("SearchIndexKeyword"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasNext("SearchIndexKeyword") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>&#10;<% } %><% } %><% } %><% } %></textarea>
							<% } %>
						<% } %>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
		<tr>
			<td class="s w e" align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ProductLockedForMe"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",79,e);}if (_boolean_result) { %>
							<td class="button"><input class="button" name="SaveKeywords" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" type="submit" /></td>
						<% } else { %>
							<td class="button"><input class="button" name="SaveKeywords" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" type="submit" disabled="disabled" /></td>
						<% } %>
						<td class="button">
							<input class="button" name="RemoveKeywords" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletTemplateTabProperties.Reset.button",null)),null)%>" type="reset" />
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
</table><% printFooter(out); %>