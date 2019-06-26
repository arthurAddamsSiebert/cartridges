<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:Syndication")); getPipelineDictionary().put("Syndication", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:SyndicationUUID")); getPipelineDictionary().put("SyndicationUUID", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:SiteMapWebForm")); getPipelineDictionary().put("SiteMapWebForm", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:Locales")); getPipelineDictionary().put("Locales", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:Currencies")); getPipelineDictionary().put("Currencies", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:SiteMapImagesForm")); getPipelineDictionary().put("SiteMapImagesForm", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:ImageViews")); getPipelineDictionary().put("ImageViews", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:ImageTypeViewPairs")); getPipelineDictionary().put("ImageTypeViewPairs", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:DeleteConfirmation")); getPipelineDictionary().put("DeleteConfirmation", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:ImagePosition")); getPipelineDictionary().put("ImagePosition", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:DuplicatePair")); getPipelineDictionary().put("DuplicatePair", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:MissingImageType")); getPipelineDictionary().put("MissingImageType", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:NoSelectedImagesError")); getPipelineDictionary().put("NoSelectedImagesError", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:Clipboard")); getPipelineDictionary().put("Clipboard", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:IncludeProductsChecked")); getPipelineDictionary().put("IncludeProductsChecked", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:IncludeCategoriesChecked")); getPipelineDictionary().put("IncludeCategoriesChecked", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:IncludeStaticPagesChecked")); getPipelineDictionary().put("IncludeStaticPagesChecked", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:URLRewriteEnabled")); getPipelineDictionary().put("URLRewriteEnabled", temp_obj);} %>
<% {Object temp_obj = (getObject("targetpageletviewpipelineparams:FormSubmitted")); getPipelineDictionary().put("FormSubmitted", temp_obj);} %>

<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","SiteMapWebForm"),
new TagParameter("value6",getObject("null")),
new TagParameter("key2","Locales"),
new TagParameter("value5",getObject("null")),
new TagParameter("key0","Syndication"),
new TagParameter("value2",getObject("null")),
new TagParameter("key5","ImageViews"),
new TagParameter("value1",getObject("null")),
new TagParameter("key6","ImageTypeViewPairs"),
new TagParameter("key3","Currencies"),
new TagParameter("value4",getObject("null")),
new TagParameter("value3",getObject("null")),
new TagParameter("key4","SiteMapImagesForm"),
new TagParameter("mapname","targetpageletviewpipelineparams"),
new TagParameter("mode","add"),
new TagParameter("value0",getObject("null"))}, 23); %>
<% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DuplicatePair"),
new TagParameter("value6",getObject("null")),
new TagParameter("key2","MissingImageType"),
new TagParameter("value5",getObject("null")),
new TagParameter("key0","DeleteConfirmation"),
new TagParameter("value2",getObject("null")),
new TagParameter("key5","IncludeCategoriesChecked"),
new TagParameter("value1",getObject("null")),
new TagParameter("key6","IncludeStaticPagesChecked"),
new TagParameter("key3","NoSelectedImagesError"),
new TagParameter("value4",getObject("null")),
new TagParameter("value3",getObject("null")),
new TagParameter("key4","IncludeProductsChecked"),
new TagParameter("mapname","targetpageletviewpipelineparams"),
new TagParameter("mode","add"),
new TagParameter("value0",getObject("null"))}, 32); %>

<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<input type="hidden" name="FormSubmitted" value="<% {String value = null;try{value=context.getFormattedValue(getObject("FormSubmitted"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
	<tr>
		<td class="table_header w e s"><% {out.write(localizeISText("SitemapConfiguration.Parameters.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<!-- start error handling -->
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormSubmitted")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("FormSubmitted"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("SiteMapWebForm:Submitted")).booleanValue() && ((Boolean) (((((Boolean) getObject("SiteMapWebForm:FileName:isMissing")).booleanValue() || ((Boolean) getObject("SiteMapWebForm:FileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
		<tr>
			<td width="100%" colspan="2">
			<table border="0" cellspacing="0" cellpadding="4" width="100%"
				class="error_box w e s">
				<tr valign="top">
					<td class="error_icon top e"><img
						src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt=""
						border="0" /></td>
					<td class="error top" width="100%"><% {out.write(localizeISText("SitemapConfiguration.TheTargetCouldNotBeUpdated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) getObject("SiteMapWebForm:FileName:isMissing")).booleanValue() || ((Boolean) getObject("SiteMapWebForm:FileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",58,e);}if (_boolean_result) { %>
							 <% {out.write(localizeISText("SitemapConfiguration.PleaseProvideAValidFileName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %>
					</td>
				</tr>
			</table>
			</td>
		</tr>
	<% } %>
</table>

<input type="hidden" name="reload" value="reload" />
<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr>
		<td class="table_title2 w e s"><% {out.write(localizeISText("SitemapConfiguration.GlobalProperties.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
	</tr>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue("Enabled",null).equals(context.getFormattedValue(getObject("URLRewriteEnabled"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",74,e);}if (_boolean_result) { %>
		<tr>
			<td width="100%" colspan="2">
				<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
					<tr valign="top">
						<td class="error_icon top e">
							<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0" />
						</td>
						<td class="error top" width="100%">
							<% {out.write(localizeISText("SitemapConfiguration.AttentionURLRewritingIsDisabledForThisChannel.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<% } %>
	
	<!-- Error Handling -->
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchMaskErrors", null, "92");} %>
	
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("FormSubmitted")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("FormSubmitted"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("SiteMapWebForm:FileName:isMissing")).booleanValue() || ((Boolean) getObject("SiteMapWebForm:FileName:isInvalid")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %>
						<td class="fielditem2_error w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.FileName.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:*</td>
					<% } else { %>
						<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.FileName.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
					<% } %>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:FileName:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",104,e);}if (_boolean_result) { %>
							<input type="text" name="SiteMapWebForm_FileName" maxlength="255" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("SiteMapWebForm:FileName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {105}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en"/>
						<% } else { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",107,e);}if (_boolean_result) { %>
								<input type="text" name="SiteMapWebForm_FileName" maxlength="255" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {108}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" />
							<% } else { %>
								<input type="text" name="FileName-disabled" maxlength="255" size="50" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {110}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="inputfield_en" disabled="disabled" />
							<% } %>	
						<% } %>
					</td>
				</tr>
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.Locale.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s">		
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:LocaleID:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:LocaleID:Value")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndication:LocaleID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",121,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("Syndication:LocaleID")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("CurrentSession:Locale:LocaleID")); getPipelineDictionary().put("SelectedLocaleID", temp_obj);} %>
							<% }} %>
							<select name="SiteMapWebForm_LocaleID" class="select inputfield_en">
								<% while (loop("Locales",null,null)) { %>
									<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("SelectedLocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %>selected="selected"<% } %>>
											<% {String value = null;try{value=context.getFormattedValue(getObject("Locales:getDisplayName(CurrentSession:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {130}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
									</option>
								<% } %>
						<% } else { %>
							<select name="LocaleID-disabled" class="select inputfield_en" disabled="disabled">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndication:LocaleID"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
								<% while (loop("Locales",null,null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Locales:LocaleID"),null).equals(context.getFormattedValue(getObject("Syndication:LocaleID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",137,e);}if (_boolean_result) { %>
										<option value="" selected="selected"><% {String value = null;try{value=context.getFormattedValue(getObject("Locales:DisplayName(CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {138}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
										<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",139);}else{getLoopStack().pop();break;} %>
									<% } %>
								<% } %>
							<% } else { %>
								<option value="" selected="selected"><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<% } %>
						<% } %>
						</select>
					</td>
				</tr>
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.Currency.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:CurrencyMnemonic:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:CurrencyMnemonic:Value")); getPipelineDictionary().put("SelectedCurrency", temp_obj);} %>
							<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndication:CurrencyMnemonic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",155,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("Syndication:CurrencyMnemonic")); getPipelineDictionary().put("SelectedCurrency", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("CurrentSession:Currency:Mnemonic")); getPipelineDictionary().put("SelectedCurrency", temp_obj);} %>
							<% }} %>
						
							<select name="SiteMapWebForm_CurrencyMnemonic" class="select inputfield_en">
							<% while (loop("Currencies",null,null)) { %>
								<option value="<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:Mnemonic"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {163}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("SelectedCurrency"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",164,e);}if (_boolean_result) { %>selected="selected" <% } %>>
									<% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {165}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
								</option>
							<% } %>
						<% } else { %>
							<select name="CurrencyMnemonic-disabled" class="select inputfield_en" disabled="disabled">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndication:CurrencyMnemonic"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>
								<% while (loop("Currencies",null,null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Currencies:Mnemonic"),null).equals(context.getFormattedValue(getObject("Syndication:CurrencyMnemonic"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>
										<option value="" selected="selected"><% {String value = null;try{value=context.getFormattedValue(getObject("Currencies:CurrencyName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {173}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
										<% if (getLoopStack().isEmpty()) {Logger.error(this,"ISBREAK occured outside ISLOOP. Line: {}",174);}else{getLoopStack().pop();break;} %>
									<% } %>
								<% } %>
							<% } else { %>
								<option value="" selected="selected"><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<% } %>
						<% } %>
						</select>
					</td>
				</tr>
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.CompressionLevel.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %>
						
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:CompressionLevel:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",189,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:CompressionLevel:Value")); getPipelineDictionary().put("SelectedCompressionLevel", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:CompressionLevel")); getPipelineDictionary().put("SelectedCompressionLevel", temp_obj);} %>
							<% } %>
						
							<select	name="SiteMapWebForm_CompressionLevel" class="select inputfield_en">
								<option value="0" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %>selected="selected"<% } %>>0</option>
								<option value="1" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",197,e);}if (_boolean_result) { %>selected="selected"<% } %>>1</option>
								<option value="2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",198,e);}if (_boolean_result) { %>selected="selected"<% } %>>2</option>
								<option value="3" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %>selected="selected"<% } %>>3</option>
								<option value="4" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",200,e);}if (_boolean_result) { %>selected="selected"<% } %>>4</option>
								<option value="5" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %>selected="selected"<% } %>>5</option>
								<option value="6" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",202,e);}if (_boolean_result) { %>selected="selected"<% } %>>6</option>
								<option value="7" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("7",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %>selected="selected"<% } %>>7</option>
								<option value="8" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("8",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",204,e);}if (_boolean_result) { %>selected="selected"<% } %>>8</option>
								<option value="9" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedCompressionLevel"),null).equals(context.getFormattedValue("9",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",205,e);}if (_boolean_result) { %>selected="selected"<% } %>>9</option>
						<% } else { %>
							<select	name="CompressionLevel-disabled" class="select inputfield_en" disabled="disabled">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndication:CompressionLevel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %>
									<option selected="selected"><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:CompressionLevel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } else { %>
									<option value="" selected="selected"><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<% } %>
						<% } %>
						</select>
					</td>
				</tr>
				<tr>
					<td class="fielditem3 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.PingService.fielditem3",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",220,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:PingSearchEngines:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
								<% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm:PingSearchEngines:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("SelectedPingSearchEngines", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:PingSearchEngines")); getPipelineDictionary().put("SelectedPingSearchEngines", temp_obj);} %>
							<% } %>
							<input type="checkbox" name="SiteMapWebForm_PingSearchEngines" id="pingSearchEnginesCheckbox" class="fielditem3 middle" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPingSearchEngines"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %> checked="checked" <% } %> />
						<% } else { %>
							<input type="checkbox" name="PingSearchEngines-disable" id="pingSearchEnginesCheckbox" class="fielditem3 middle" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Syndication:PingSearchEngines"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",228,e);}if (_boolean_result) { %> checked="checked" <% } %> disabled="disabled"/>
						<% } %>
						<span class="fielditem3 middle"> <% {out.write(localizeISText("SitemapConfiguration.AutomaticallyPingSearchEngineWhenANewSitemapGenerated.fielditem3",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<tr>
		<td class="table_title2 middle w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",239,e);}if (_boolean_result) { %>
				<input type="checkbox" name="SiteMapWebForm_IncludeProducts" id="includeProductsCheckbox" class="fielditem2" onclick="this.form.submit()" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeProductsChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",240,e);}if (_boolean_result) { %> checked="checked" <% } %> />
			<% } else { %>
				<input type="checkbox" name="IncludeProducts-disabled" id="includeProductsCheckbox" class="fielditem2" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeProductsChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",242,e);}if (_boolean_result) { %> checked="checked" <% } %> disabled="disabled" />				
			<% } %>
			<span class="middle"> <% {out.write(localizeISText("SitemapConfiguration.Products.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %> </span>
		</td>
	</tr>

	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" id="productsPropertiesSection">
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.UseLastModifiedDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>: </td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",254,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:UseLastModifiedProduct:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",255,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:UseLastModifiedProduct:Value")); getPipelineDictionary().put("SelectedUseLastModifiedProduct", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:UseLastModifiedProduct")); getPipelineDictionary().put("SelectedUseLastModifiedProduct", temp_obj);} %>
							<% } %>
							<select	name="SiteMapWebForm_UseLastModifiedProduct" class="select inputfield_en">
								<option value="yes"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUseLastModifiedProduct"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",262,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="no"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUseLastModifiedProduct"),null).equals(context.getFormattedValue("no",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",264,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<% } else { %>
							<select	name="UseLastModifiedProduct-disabled" class="select inputfield_en" disabled="disabled">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:UseLastModifiedProduct")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Syndication:UseLastModifiedProduct"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",267,e);}if (_boolean_result) { %>
									<option><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UseLastModifiedProduct"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } else { %>
									<option value=""><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<% } %>
						<% } %>
						</select>
					</td>
				</tr>
				
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:ChangeFrequencyProduct:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",278,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (getObject("SiteMapWebForm:ChangeFrequencyProduct:Value")); getPipelineDictionary().put("SelectedChangeFrequencyProduct", temp_obj);} %>
					<% } else { %>
						<% {Object temp_obj = (getObject("Syndication:ChangeFrequencyProduct")); getPipelineDictionary().put("SelectedChangeFrequencyProduct", temp_obj);} %>
					<% } %>
				
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.ChangeFrequency.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",286,e);}if (_boolean_result) { %>
							<select	name="SiteMapWebForm_ChangeFrequencyProduct" class="select inputfield_en"	id="changeFrequencyProductSelect">
						<% } else { %>
							<select	name="ChangeFrequencyProduct-disabled" class="select inputfield_en" id="changeFrequencyProductSelect" disabled="disabled">
						<% } %>
							<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="always"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("always",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",293,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Always.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="hourly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("hourly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",295,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Hourly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="daily"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("daily",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",297,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Daily.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="weekly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",299,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Weekly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="monthly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Monthly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="yearly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("yearly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yearly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="never"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyProduct"),null).equals(context.getFormattedValue("never",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",305,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Never.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.Priority.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",312,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:PriorityProduct:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",313,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:PriorityProduct:Value")); getPipelineDictionary().put("SelectedPriorityProduct", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:PriorityProduct")); getPipelineDictionary().put("SelectedPriorityProduct", temp_obj);} %>
							<% } %>
							<select	name="SiteMapWebForm_PriorityProduct" class="select inputfield_en" id="priorityProductSelect">
								<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="0.0"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",321,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.0</option>
								<option value="0.1"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",323,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.1</option>
								<option value="0.2"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",325,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.2</option>
								<option value="0.3"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",327,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.3</option>
								<option value="0.4"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",329,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.4</option>
								<option value="0.5"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",331,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.5</option>
								<option value="0.6"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",333,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.6</option>
								<option value="0.7"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.7",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",335,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.7</option>
								<option value="0.8"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.8",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",337,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.8</option>
								<option value="0.9"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("0.9",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",339,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.9</option>
								<option value="1.0"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityProduct"),null).equals(context.getFormattedValue("1.0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",341,e);}if (_boolean_result) { %>selected="selected"<% } %>>1.0</option>
						<% } else { %>
							<select	name="PriorityProduct-disabled" class="select inputfield_en" id="priorityProductSelect" disabled="disabled">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:PriorityProduct")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Syndication:PriorityProduct"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",344,e);}if (_boolean_result) { %>
									<option value="" selected="selected"><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:PriorityProduct"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {345}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } else { %>
									<option value="" selected="selected"><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<% } %>
						<% } %>
							
						</select>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<table cellpadding="5" cellspacing="0" border="0" width="100%">
							<tr class="infobox">
								<td class="infobox_title w e s" nowrap="nowrap" colspan="7">
									<% {out.write(localizeISText("SitemapConfiguration.ProductPictures.infobox_title",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</td>
							</tr>
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("DeleteConfirmation")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("DeleteConfirmation"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",363,e);}if (_boolean_result) { %>
								<tr>
									<td colspan="7" style="padding:0px">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DeleteConfirmation"),null).equals(context.getFormattedValue("NoSelectedImagesError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",366,e);}if (_boolean_result) { %>
											<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
												<tr>
													<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
													<td class="confirm e s" width="100%">
														<% {out.write(localizeISText("SitemapConfiguration.YouHaveNotSelectedAnyProductPictures.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
													</td>
												</tr>
											</table>
										<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("DeleteConfirmation"),null).equals(context.getFormattedValue("DeleteSingleImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",375,e);}if (_boolean_result) { %>
											<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
												<tr>
													<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
													<td class="confirm e s" width="100%">
														<% {out.write(localizeISText("SitemapConfiguration.DoYouWantToRemoveProductPictureClickOK.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
													</td>
													<td class="e s">
														<table border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td class="button">
																	<input type="hidden" name="SyndicationUUID"	value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("SyndicationUUID"),null)),null)%>" />
																	<input type="hidden" name="ImageToDeletePosition"	value="<% {String value = null;try{value=context.getFormattedValue(getObject("ImagePosition"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {387}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
																	<input type="submit" name="ConfirmDeleteImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfiguration.OK.button",null)),null)%>" class="button"/>
																</td>
																<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
																<td class="button"><input type="submit" name="reload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfiguration.Cancel.button",null)),null)%>" class="button"/></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										<% } else { %>
											<table border="0" cellpadding="4" cellspacing="0" width="100%" class="confirm_box">
												<tr>
													<td class="error_icon w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/confirmation.gif" width="16" height="15" alt="" border="0"/></td>
													<td class="confirm e s" width="100%">
														<% {out.write(localizeISText("SitemapConfiguration.DoYouWantToRemoveProductPicturesClickOK.confirm",null,null,null,null,null,null,null,null,null,null,null,null));} %>
													</td>
													<td class="e s">
														<table border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td class="button">
																	<input type="submit" name="ConfirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfiguration.OK.button",null)),null)%>" class="button"/>
																</td>
																<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="4" height="0" alt="" border="0"/></td>
																<td class="button"><input type="submit" name="reload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfiguration.Cancel.button",null)),null)%>" class="button"/></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										<% }} %>
									</td>
								</tr>
							<% } %>
							<tr>
								<td class="table_title_description w e s" colspan="7">
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",423,e);}if (_boolean_result) { %><% {out.write(localizeISText("SitemapConfiguration.SelectTheDesiredImageViewAndImageType.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %> <br /><% } %>
									<% {out.write(localizeISText("SitemapConfiguration.IfTheSelectedProductImageDoesNotExistDefault.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
								</td>
							</tr>
							
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("DuplicatePair"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",428,e);}if (_boolean_result) { %>
									<tr>
										<td colspan="7" class="error w e s">
											<% {out.write(localizeISText("SitemapConfiguration.ThisImageViewImageTypePairIsAlreadyAdded.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</td>
									</tr>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MissingImageType"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",435,e);}if (_boolean_result) { %>
									<tr>
										<td colspan="7" class="error w e s"><% {out.write(localizeISText("SitemapConfiguration.PleaseChooseImageViewAndType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									</tr>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelectedImagesError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",440,e);}if (_boolean_result) { %>
									<tr>
										<td colspan="7" class="error w e s">
											<% {out.write(localizeISText("SitemapConfiguration.PleaseSelectAtLeastOneImage.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</td>
									</tr>
								<% } %>
								
								<% while (loop("ImageTypeViewPairs","TypeViewPair",null)) { %>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("TypeViewPair:ImageType:Name")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("TypeViewPair:ImageView:Name")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",449,e);}if (_boolean_result) { %>
										<% {Object temp_obj = ("true"); getPipelineDictionary().put("MissingImageViewOrTypeError", temp_obj);} %>
									<% } %>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MissingImageViewOrTypeError"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",453,e);}if (_boolean_result) { %>
									<tr>
										<td colspan="7" class="error w e s">
											<% {out.write(localizeISText("SitemapConfiguration.SomeOfTheImagesBelowContainAMissingImageViewOrType.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										</td>
									</tr>
								<% } %>
			
								<tr>
									<td class="infobox_item w s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.ImageView.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
									<td class="table_detail  s">
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",464,e);}if (_boolean_result) { %>
											<select name="SiteMapImagesForm_SelectedImageViewID" id="imageViewSelectBox" class="inputfield_en image_view_select" onchange="this.form.submit()">
										<% } else { %>
											<select name="SelectedImageViewID-disabled" id="imageViewSelectBox" class="inputfield_en image_view_select" disabled="disabled">
										<% } %>
										<option value=""><% {out.write(localizeISText("SitemapConfiguration.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</option>
											<% while (loop("ImageViews","ImageView",null)) { %>
												<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>" title="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {471}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
													<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("SiteMapImagesForm:SelectedImageViewID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",472,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ImageView")); getPipelineDictionary().put("SelectedImageView", temp_obj);} %> selected="selected"<% } %>><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {472}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
											<% } %>
										</select>
									</td>
									<td class="s" nowrap="nowrap">
										<noscript>
										<table cellpadding="0" cellspacing="0" border="0">
											<tr>
												<td class="button"><input type="submit" name="reload"
													value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfiguration.Apply.button",null)),null)%>" class="button" /></td>
											</tr>
										</table>
										</noscript>
									</td>
									<td class="infobox_item s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.ImageType.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
									<td class="s">
										<select name="SiteMapImagesForm_SelectedImageTypeID" class="inputfield_en image_type_select" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedImageView")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",489,e);}if (_boolean_result) { %> disabled="disabled"<% } %>>
											<option value=""><% {out.write(localizeISText("SitemapConfiguration.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %>...</option>
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedImageView"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",491,e);}if (_boolean_result) { %>
												<% while (loop("SelectedImageView:AssignedImageTypeBOs","ImageType",null)) { %>
													<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageType:ID"),null)),null)%>" title="<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {493}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
														<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageType:ID"),null).equals(context.getFormattedValue(getObject("SiteMapImagesForm:SelectedImageViewID:Value"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",494,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ImageType")); getPipelineDictionary().put("SelectedImageType", temp_obj);} %> selected="selected"<% } %>>
														<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {495}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
													</option>
												<% } %>
											<% } %>
										</select>
									</td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",501,e);}if (_boolean_result) { %>
										<td class="nowrap s">
											<table cellspacing="0" cellpadding="0" border="0">
												<tbody>
													<tr>
														<td class="button"><input type="submit" name="add" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("SitemapConfiguration.Add.button",null)),null)%>" class="button"
															<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedImageView")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",507,e);}if (_boolean_result) { %> disabled="disabled"<% } %> /></td>
													</tr>
												</tbody>
											</table>
										</td>
									<% } %>
									<td class="w100 e s">&nbsp;</td>
								</tr>
							
						</table>
					</td>
				</tr>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageTypeViewPairs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",520,e);}if (_boolean_result) { %>
						<td colspan="2">
							<table cellspacing="0" cellpadding="0" border="0" width="100%">
								
								<tr>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",525,e);}if (_boolean_result) { %>
										<td nowrap="nowrap" width="80" class="table_header w e s">
											<div id="C">
												<table cellspacing="0" cellpadding="0" border="0" width="80"
													class="table_header center">
													<tr>
														<td nowrap="nowrap">
															<a class="tableheader" href="javascript:selectAll('PageletSearch','SelectedObjectUUID','C','D')">
																<% {out.write(localizeISText("SitemapConfiguration.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
															</a>
														</td>
													</tr>
												</table>
											</div>
											<div style="display: none" id="D">
												<table cellspacing="0" cellpadding="0" border="0" width="80" class="table_header center">
													<tr>
														<td nowrap="nowrap">
															<a class="tableheader" href="javascript:selectAll('PageletSearch','SelectedObjectUUID','C','D')">
																<% {out.write(localizeISText("SitemapConfiguration.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
															</a>
														</td>
													</tr>
												</table>
											</div>
										</td>
									<% } %>
									<td nowrap="nowrap" class="table_header e s"><% {out.write(localizeISText("SitemapConfiguration.ImageViewName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<td class="table_header e s"><% {out.write(localizeISText("SitemapConfiguration.ImageTypeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",554,e);}if (_boolean_result) { %>
										<td class="table_header e s"><% {out.write(localizeISText("SitemapConfiguration.Actions.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
									<% } %>
								</tr>
								
								
								<% while (loop("ImageTypeViewPairs","TypeViewPair",null)) { %>
									<tr>
										<%
											com.intershop.component.image.capi.common.ImageTypeBOViewBOPair pair = (com.intershop.component.image.capi.common.ImageTypeBOViewBOPair) getLoopObject("TypeViewPair");
											getPipelineDictionary().put("ImageTypeViewPositionStr", pair.getPosition().toString());
										 %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",566,e);}if (_boolean_result) { %>
											<td class="w e s center middle"><input type="checkbox"
												value="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeViewPair:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {568}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="SelectedObjectUUID"
												<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("TypeViewPair:Position"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(ImageTypeViewPositionStr)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",569,e);}if (_boolean_result) { %> checked="checked"<% } %> />
											<input type="hidden" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TypeViewPair:Position"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {570}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" name="ObjectUUID" />
											</td>
										<% } %>
										<td class="table_detail e s">
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TypeViewPair:ImageView:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",574,e);}if (_boolean_result) { %>
												<% {String value = null;try{value=context.getFormattedValue(getObject("TypeViewPair:ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {575}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
											<% } else { %>
												<span class="error"> <% {out.write(localizeISText("SitemapConfiguration.Missing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> </span>
											<% } %>									
										</td>
										<td class="table_detail e s">
											<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TypeViewPair:ImageType:Name"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",581,e);}if (_boolean_result) { %>
												<% {String value = null;try{value=context.getFormattedValue(getObject("TypeViewPair:ImageType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {582}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
											<% } else { %>
												<span class="error"> <% {out.write(localizeISText("SitemapConfiguration.Missing.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %> </span>
											<% } %>
										</td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",587,e);}if (_boolean_result) { %>
											<td nowrap="nowrap" class="table_detail e s">
												<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewChannelOutboundSyndicationSitemapConfiguration-ConfirmDeleteImage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ImagePosition",null),context.getFormattedValue(getObject("TypeViewPair:Position"),null))).addURLParameter(context.getFormattedValue("SyndicationUUID",null),context.getFormattedValue(getObject("Syndication:UUID"),null))),null)%>"
													class="action_link">
												<% {out.write(localizeISText("SitemapConfiguration.Remove.link",null,null,null,null,null,null,null,null,null,null,null,null));} %>
												</a>
											</td>
										<% } %>
									</tr>
								<% } %>
								
							</table>
						</td>
					<% } else { %>
						<td colspan="2">
							<table cellspacing="0" cellpadding="0" border="0" width="100%">
								<tr>
									<td nowrap="nowrap" class="table_detail w e s">
										<% {out.write(localizeISText("SitemapConfiguration.ThereIsCurrentlyNoProductPictureAssigned.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
									</td>
								</tr>
							</table>
						</td>
					<% } %>
				</tr>
			</table>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("IncludeProductsChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",614,e);}if (_boolean_result) { %>
				<script type="text/javascript">hideSitemapConfigurationSection('productsPropertiesSection');</script>
			<% } %>
		</td>
	</tr>

	<tr>
		<td class="table_title2 w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",622,e);}if (_boolean_result) { %>
				<input type="checkbox" class="fielditem2" name="SiteMapWebForm_IncludeCategories" id="includeCategoriesCheckbox" onclick="this.form.submit()" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeCategoriesChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",623,e);}if (_boolean_result) { %> checked="checked" <% } %> />
			<% } else { %>
				<input type="checkbox" class="fielditem2" name="IncludeCategories-disabled" id="includeCategoriesCheckbox" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeCategoriesChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",625,e);}if (_boolean_result) { %> checked="checked" <% } %> disabled="disabled" />
			<% } %>
			<span class="middle"> <% {out.write(localizeISText("SitemapConfiguration.Categories.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %> </span>
		</td>
	</tr>
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" id="categoriesPropertiesSection">
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.UseLastModifiedDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",636,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:UseLastModifiedCategory:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",637,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:UseLastModifiedCategory:Value")); getPipelineDictionary().put("SelectedUseLastModifiedCategory", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:UseLastModifiedCategory")); getPipelineDictionary().put("SelectedUseLastModifiedCategory", temp_obj);} %>
							<% } %>
							<select	name="SiteMapWebForm_UseLastModifiedCategory" class="select inputfield_en">
								<option value="yes"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUseLastModifiedCategory"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",644,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="no"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUseLastModifiedCategory"),null).equals(context.getFormattedValue("no",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",646,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<% } else { %>
							<select	name="UseLastModifiedCategory-disabled" class="select inputfield_en" disabled="disabled">
							<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:UseLastModifiedCategory")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Syndication:UseLastModifiedCategory"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",649,e);}if (_boolean_result) { %>
								<option><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UseLastModifiedCategory"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {650}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
							<% } else { %>
								<option value=""><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<% } %>
						<% } %>
						</select>
					</td>
				</tr>			
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:ChangeFrequencyCategory:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",659,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (getObject("SiteMapWebForm:ChangeFrequencyCategory:Value")); getPipelineDictionary().put("SelectedChangeFrequencyCategory", temp_obj);} %>
					<% } else { %>
						<% {Object temp_obj = (getObject("Syndication:ChangeFrequencyCategory")); getPipelineDictionary().put("SelectedChangeFrequencyCategory", temp_obj);} %>
					<% } %>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.ChangeFrequency.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",666,e);}if (_boolean_result) { %>
							<select	name="SiteMapWebForm_ChangeFrequencyCategory" class="select inputfield_en" id="changeFrequencyCategorySelect">
						<% } else { %>
							<select	name="ChangeFrequencyCategory-disabled" class="select inputfield_en" id="changeFrequencyCategorySelect" disabled="disabled">
						<% } %>
							<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="always"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("always",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",673,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Always.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="hourly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("hourly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",675,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Hourly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="daily"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("daily",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",677,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Daily.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="weekly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",679,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Weekly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="monthly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",681,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Monthly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="yearly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("yearly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",683,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yearly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="never"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyCategory"),null).equals(context.getFormattedValue("never",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",685,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Never.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.Priority.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",692,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:PriorityCategory:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",693,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:PriorityCategory:Value")); getPipelineDictionary().put("SelectedPriorityCategory", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:PriorityCategory")); getPipelineDictionary().put("SelectedPriorityCategory", temp_obj);} %>
							<% } %>
							<select	name="SiteMapWebForm_PriorityCategory" class="select inputfield_en" id="priorityCategorySelect">
								<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="0.0"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",701,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.0</option>
								<option value="0.1"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",703,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.1</option>
								<option value="0.2"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",705,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.2</option>
								<option value="0.3"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",707,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.3</option>
								<option value="0.4"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",709,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.4</option>
								<option value="0.5"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",711,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.5</option>
								<option value="0.6"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",713,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.6</option>
								<option value="0.7"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.7",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",715,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.7</option>
								<option value="0.8"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.8",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",717,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.8</option>
								<option value="0.9"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("0.9",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",719,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.9</option>
								<option value="1.0"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityCategory"),null).equals(context.getFormattedValue("1.0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",721,e);}if (_boolean_result) { %>selected="selected"<% } %>>1.0</option>
						<% } else { %>
							<select	name="PriorityCategory-disabled" class="select inputfield_en" id="priorityCategorySelect" disabled="disabled">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:PriorityCategory")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Syndication:PriorityCategory"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",724,e);}if (_boolean_result) { %>
									<option><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:PriorityCategory"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {725}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } else { %>
									<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<% } %>
						<% } %>
						</select>
					</td>
				</tr>
                <tr>
					<td class="fielditem2 w e s" nowrap="nowrap" title="This includes all categories except the ones with 'Show In Menu'=false and 'ExcludePathFromSearchIndex'=true".>
						<% {out.write(localizeISText("SitemapConfiguration.IncludeCategoriesWithoutProducts.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%" title="This includes all categories except the ones with 'Show In Menu'=false and 'ExcludePathFromSearchIndex'=true.">
                        <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",737,e);}if (_boolean_result) { %>
                            <% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:IncludeCategoriesWithoutProducts:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",738,e);}if (_boolean_result) { %>
                                <% {Object temp_obj = (getObject("SiteMapWebForm:IncludeCategoriesWithoutProducts:Value")); getPipelineDictionary().put("SelectedIncludeCategoriesWithoutProducts", temp_obj);} %>
                            <% } else { %>
	                            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:IncludeCategoriesWithoutProducts")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Syndication:IncludeCategoriesWithoutProducts"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",741,e);}if (_boolean_result) { %>
	                                <% {Object temp_obj = ("yes"); getPipelineDictionary().put("SelectedIncludeCategoriesWithoutProducts", temp_obj);} %>
	                            <% } else { %>
	                                <% {Object temp_obj = ("no"); getPipelineDictionary().put("SelectedIncludeCategoriesWithoutProducts", temp_obj);} %>
	                            <% } %>
                            <% } %>
                            <select name="SiteMapWebForm_IncludeCategoriesWithoutProducts" class="select inputfield_en">
                                <option value="no"
                                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedIncludeCategoriesWithoutProducts"),null).equals(context.getFormattedValue("no",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",749,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
                                <option value="yes"
                                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedIncludeCategoriesWithoutProducts"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",751,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
                        <% } else { %>
                            <select name="IncludeCategoriesWithoutProducts-disabled" class="select inputfield_en" disabled="disabled">
                            <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:IncludeCategoriesWithoutProducts")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Syndication:IncludeCategoriesWithoutProducts"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",754,e);}if (_boolean_result) { %>
                                <option><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:IncludeCategoriesWithoutProducts"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {755}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
                            <% } else { %>
                                <option value=""><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
                            <% } %>
                        <% } %>
                        </select>
                    </td>
                </tr>           
			</table>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("IncludeCategoriesChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",764,e);}if (_boolean_result) { %>
				<script type="text/javascript">hideSitemapConfigurationSection('categoriesPropertiesSection');</script>
			<% } %>
		</td>
	</tr>
	
	<tr>
		<td class="table_title2 w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",772,e);}if (_boolean_result) { %>
				<input type="checkbox" class="fielditem2" name="SiteMapWebForm_IncludeStaticPages" id="includeStaticPagesCheckbox" onclick="this.form.submit()" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeStaticPagesChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",773,e);}if (_boolean_result) { %> checked="checked" <% } %> />
			<% } else { %>
				<input type="checkbox" class="fielditem2" name="SiteMapWebForm_IncludeStaticPages" id="includeStaticPagesCheckbox" <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("IncludeStaticPagesChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",775,e);}if (_boolean_result) { %> checked="checked" <% } %> disabled="disabled" />
			<% } %>
			<span class="middle"> <% {out.write(localizeISText("SitemapConfiguration.StaticPages.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %> </span>
		</td>
	</tr>
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" border="0" width="100%" id="staticPagesPropertiesSection">
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.UseLastModifiedDate.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",786,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:UseLastModifiedStaticPage:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",787,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:UseLastModifiedStaticPage:Value")); getPipelineDictionary().put("SelectedUseLastModifiedStaticPage", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:UseLastModifiedStaticPage")); getPipelineDictionary().put("SelectedUseLastModifiedStaticPage", temp_obj);} %>
							<% } %>	
							<select	name="SiteMapWebForm_UseLastModifiedStaticPage" class="select inputfield_en">
								<option value="yes"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUseLastModifiedStaticPage"),null).equals(context.getFormattedValue("yes",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",794,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yes.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="no"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedUseLastModifiedStaticPage"),null).equals(context.getFormattedValue("no",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",796,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.No.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
						<% } else { %>
							<select	name="UseLastModifiedStaticPage-disabled" class="select inputfield_en" disabled="disabled">
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Syndication:UseLastModifiedStaticPage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",799,e);}if (_boolean_result) { %>
								<option><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:UseLastModifiedStaticPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {800}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
							<% } else { %>
								<option value=""><% {out.write(localizeISText("SitemapConfiguration.NotSet.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<% } %>
						<% } %>
						</select>
					</td>
				</tr>			
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:ChangeFrequencyStaticPage:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",809,e);}if (_boolean_result) { %>
						<% {Object temp_obj = (getObject("SiteMapWebForm:ChangeFrequencyStaticPage:Value")); getPipelineDictionary().put("SelectedChangeFrequencyStaticPage", temp_obj);} %>
					<% } else { %>
						<% {Object temp_obj = (getObject("Syndication:ChangeFrequencyStaticPage")); getPipelineDictionary().put("SelectedChangeFrequencyStaticPage", temp_obj);} %>
					<% } %>	
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.ChangeFrequency.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",816,e);}if (_boolean_result) { %>
							<select	name="SiteMapWebForm_ChangeFrequencyStaticPage" class="select inputfield_en" id="changeFrequencyStaticPageSelect">
						<% } else { %>
							<select	name="ChangeFrequencyStaticPage-disabled" class="select inputfield_en" id="changeFrequencyStaticPageSelect" disabled="disabled">
						<% } %>
							<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="always"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("always",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",823,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Always.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="hourly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("hourly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",825,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Hourly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="daily"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("daily",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",827,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Daily.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="weekly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("weekly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",829,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Weekly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="monthly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("monthly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",831,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Monthly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="yearly"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("yearly",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",833,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Yearly.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
							<option value="never"
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedChangeFrequencyStaticPage"),null).equals(context.getFormattedValue("never",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",835,e);}if (_boolean_result) { %>selected="selected"<% } %>><% {out.write(localizeISText("SitemapConfiguration.Never.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option></select>
					</td>
				</tr>
				<tr>
					<td class="fielditem2 w e s" nowrap="nowrap"><% {out.write(localizeISText("SitemapConfiguration.Priority.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
					<td class="fielditem2 e s" width="100%">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PermissionMap:SLD_SYNDICATE_CATALOGS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",841,e);}if (_boolean_result) { %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SiteMapWebForm:PriorityStaticPage:Value"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",842,e);}if (_boolean_result) { %>
								<% {Object temp_obj = (getObject("SiteMapWebForm:PriorityStaticPage:Value")); getPipelineDictionary().put("SelectedPriorityStaticPage", temp_obj);} %>
							<% } else { %>
								<% {Object temp_obj = (getObject("Syndication:PriorityStaticPage")); getPipelineDictionary().put("SelectedPriorityStaticPage", temp_obj);} %>
							<% } %>
							<select	name="SiteMapWebForm_PriorityStaticPage" class="select inputfield_en" id="priorityStaticPageSelect">
								<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<option value="0.0"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",850,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.0</option>
								<option value="0.1"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",852,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.1</option>
								<option value="0.2"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",854,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.2</option>
								<option value="0.3"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.3",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",856,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.3</option>
								<option value="0.4"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.4",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",858,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.4</option>
								<option value="0.5"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.5",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",860,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.5</option>
								<option value="0.6"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.6",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",862,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.6</option>
								<option value="0.7"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.7",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",864,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.7</option>
								<option value="0.8"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.8",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",866,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.8</option>
								<option value="0.9"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("0.9",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",868,e);}if (_boolean_result) { %>selected="selected"<% } %>>0.9</option>
								<option value="1.0"
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("SelectedPriorityStaticPage"),null).equals(context.getFormattedValue("1.0",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",870,e);}if (_boolean_result) { %>selected="selected"<% } %>>1.0</option>
						<% } else { %>
							<select	name="PriorityStaticPage-disabled" class="select inputfield_en" id="priorityStaticPageSelect" disabled="disabled">
								<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:PriorityStaticPage")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("Syndication:PriorityStaticPage"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",873,e);}if (_boolean_result) { %>
									<option><% {String value = null;try{value=context.getFormattedValue(getObject("Syndication:PriorityStaticPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {874}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option>
								<% } else { %>
									<option value=""><% {out.write(localizeISText("SitemapConfiguration.None.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option>
								<% } %>
						<% } %>
						</select>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table><% printFooter(out); %>