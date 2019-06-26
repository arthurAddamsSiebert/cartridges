<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
	<tr>
		<td width="100%" class="table_title2">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideImageSet"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayImageVariable",null),context.getFormattedValue("HideImageSet",null)).addURLParameter(context.getFormattedValue("DisplayImageValue",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_opened"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.PredefinedImageSets.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<% } else { %>
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayImageVariable",null),context.getFormattedValue("HideImageSet",null)).addURLParameter(context.getFormattedValue("DisplayImageValue",null),context.getFormattedValue("false",null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_closed"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.PredefinedImageSets.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<% } %>
		</td>
    </tr>
</table>
<% {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("boolean_false", temp_obj);} %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideImageSet"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
<% URLPipelineAction action66 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-DispatchImageSet",null)))),null));String site66 = null;String serverGroup66 = null;String actionValue66 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-DispatchImageSet",null)))),null);if (site66 == null){  site66 = action66.getDomain();  if (site66 == null)  {      site66 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup66 == null){  serverGroup66 = action66.getServerGroup();  if (serverGroup66 == null)  {      serverGroup66 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-DispatchImageSet",null)))),null));out.print("\"");out.print(" name=\"");out.print("ImageSetImagesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue66, site66, serverGroup66,true)); %>
	<input type="hidden" name="ProductID_<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
	<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
	<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CurrentChannel:UUID"),null)),null)%>" />
	<input type="hidden" name="LocaleId" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Locale:LocaleID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
	<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
		<tr>
			<td class="table_title_description">
				<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.TheListShowsAllImageSetsWhichAreAssignedToTheSame.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
					<br /><br />
					<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageFieldsWithARedAsterisk.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ImageSetDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e">
			<tr>
				<td class="table_header e s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageView.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.Image.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.Preview.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<% while (loop("ImageSetDefinitions","Definition",null)) { %>
				<tr class="subheading">
					<td colspan="4" class="table_detail s"><% {String value = null;try{value=context.getFormattedValue(getObject("Definition:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
				</tr>
				<% while (loop("Definition:SortedImageSetDefinitionAssignments","DefinitionAsgmt",null)) { %>
					<tr>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("UniqueImageSetDefinitionContents:get(Definition:Name):Contains(DefinitionAsgmt:ImageTypeViewAsgmt)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
							<% {Object temp_obj = (""); getPipelineDictionary().put("disabled", temp_obj);} %>
						<% } %>
						<td class="table_detail2 e s">
							&nbsp;&nbsp;&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
							<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:UUID"),null)),null)%>" />
						</td>
						<td class="table_detail2 e s">
							<% {String value = null;try{value=context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:ImageType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;
							(&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:ImageType:Width"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;x&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:ImageType:Height"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;)
						</td>
						<td class="table_detail2 e s">
							<table cellpadding="0" cellspacing="0" border="0">
								<tr>
									<td>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("SelectImageSetImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(DefinitionAsgmt:ImageTypeViewAsgmt:UUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",62,e);}if (_boolean_result) { %>
											<% {Object temp_obj = (getObject("ImageFormValues:get(DefinitionAsgmt:ImageTypeViewAsgmt:UUID)")); getPipelineDictionary().put("image_path", temp_obj);} %>
										<% } else { %>
											<% {Object temp_obj = (getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:ImageBO(DefinitionAsgmt:ImageTypeViewAsgmt:ImageType:ID,DefinitionAsgmt:ImageTypeViewAsgmt:ImageView:ID):ImageBaseName")); getPipelineDictionary().put("image_path", temp_obj);} %>
										<% } %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
											<input type="text" name="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:UUID"),null)),null)%>" maxlength="350" size="80" class="inputfield_en" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("image_path"),null)),null)%>" />
										<% } else { %>
											<input type="text" name="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:UUID"),null)),null)%>" maxlength="350" size="80" class="inputfield_en" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("image_path"),null)),null)%>" disabled="disabled"/>
										<% } %>
									</td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
										<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0" /></td>
										<td>
											<table cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td class="button"><input type="submit" name="browseDirectory_<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:UUID"),null)),null)%>" value="..." class="button"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("DefinitionAsgmt:ImageTypeViewAsgmt:ImageType:SourceType"),null).equals(context.getFormattedValue("Internal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %> disabled="disabled"<% } %> /></td>
												</tr>
											</table>
										</td>
									<% } %>
								</tr>
							</table>
						</td>
						<td class="table_detail2 s center">
							<% {Object temp_obj = (getObject("ProductBO:Extension(\"Image\"):ImageContainerBO:ImageBO(DefinitionAsgmt:ImageTypeViewAsgmt:ImageType:ID,DefinitionAsgmt:ImageTypeViewAsgmt:ImageView:ID,boolean_false)")); getPipelineDictionary().put("image", temp_obj);} %>
							<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("image"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
								<a href="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("image:EffectiveUrl(Locale:LocaleID,boolean_false)"),null)),null)%>" class="action_link" target="_blank"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
							<% } else { %>
								<span title="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.ImageIsNotAvailableYet.title",null)),null)%>"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.NA.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
							<% } %>
						</td>
					</tr>
				<% } %>
			<% } %>
		</table>
	<% } else { %>
		<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
			<tr><td class="table_detail" ><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.CurrentlyThereAreNoImageSetsAppliedToThisProduct.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
		</table>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
			<tr><td align="right">
				<table border="0" cellspacing="4" cellpadding="0">
					<tr>
						<td class="button">
							<input class="button" type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Apply.button",null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",109,e);}if (_boolean_result) { %> disabled="disabled"<% } %> />
						</td>
						<td class="button">
							<input class="button" type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Reset.button",null)),null)%>" />
						</td>
					</tr>
				</table>
			</td></tr>
		</table>
	<% } %>
<% out.print("</form>"); %>
<% } %>
<div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="10" alt="" border="0"/></div>


<table border="0" cellpadding="0" cellspacing="0" width="100%" class="aldi">
	<tr>
		<td width="100%" class="table_title2">
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideAdditionalImagesSet"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %>
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayAdditionalImagesVariable",null),context.getFormattedValue("HideAdditionalImagesSet",null)).addURLParameter(context.getFormattedValue("DisplayAdditionalImagesValue",null),context.getFormattedValue("true",null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_opened"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.AdditionalImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<% } else { %>
				<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-SetDisplayOptions",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ChannelID",null),context.getFormattedValue(getObject("CurrentChannel:UUID"),null))).addURLParameter(context.getFormattedValue("DisplayAdditionalImagesVariable",null),context.getFormattedValue("HideAdditionalImagesSet",null)).addURLParameter(context.getFormattedValue("DisplayAdditionalImagesValue",null),context.getFormattedValue("false",null)).addURLParameter(context.getFormattedValue("ProductID",null),context.getFormattedValue(getObject("Product:UUID"),null))),null)%>" class="table_closed"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.AdditionalImages.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
			<% } %>
		</td>
    </tr>
</table>
<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("HideAdditionalImagesSet"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",135,e);}if (_boolean_result) { %>
<% URLPipelineAction action67 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-Dispatch",null)))),null));String site67 = null;String serverGroup67 = null;String actionValue67 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-Dispatch",null)))),null);if (site67 == null){  site67 = action67.getDomain();  if (site67 == null)  {      site67 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup67 == null){  serverGroup67 = action67.getServerGroup();  if (serverGroup67 == null)  {      serverGroup67 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage_32-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("AddImagesForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue67, site67, serverGroup67,true)); %>
	<input type="hidden" name="ProductID_<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
	<input type="hidden" name="ProductID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Product:UUID"),null)),null)%>" />
	<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("CurrentChannel:UUID"),null)),null)%>" />
	<input type="hidden" name="LocaleId" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" />
	<input type="hidden" name="reload" value="reload" />
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox w e n">
		<!-- errors -->
		<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ErrorMessage")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ImageNameMissingErrorMessage")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("MissingUnitDomain")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",144,e);}if (_boolean_result) { %>
			<tr class="table_detail" >
				<td colspan="12">
					<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
						<tr valign="top">
							<td class="error_icon top e">
								<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/>
							</td>
							<td class="error top" width="100%">
								<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorMessage"),null).equals(context.getFormattedValue("ImageNotSelected",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageNameIsMandatoryPleaseProvideAProductImageName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } %>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageNameMissingErrorMessage"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",156,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageNameIsMandatoryPleaseProvideAProductImageName.error1",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } %>
								 
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MissingUnitDomain"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %>
									<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.TheURLPrefixOfTheSelectedImageTypeIsInvalidPlease.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
								<% } %>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		<% } %>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteImageReference")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",170,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">	
			<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Clipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",172,e);}if (_boolean_result) { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","file"),
new TagParameter("cancelbtnname","reload"),
new TagParameter("okbtnname","deleteImageReference"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.AreYouSureThatYouWantToUnassignTheSelectedImages.message",null)))}, 173); %>
			<% } else { %>
				<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("subject","file"),
new TagParameter("type","mde"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.YouHaveNotSelectedAnyImageToBeUnassignedFromThe.message",null)))}, 175); %>
			<% } %>
		</table>
	<% } %>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="infobox w e s">
		<!-- end errors-->
		<tr>
			<td class="table_title_description" colspan="12">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %>
					<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ToDefineProductImagesInAdditionToTheImagesOfThe.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } else { %>
					<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.TheListShowsAllProductImagesWhichAreDefinedInAddit.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>
				<% } %>
			</td>
		</tr>
	</table>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",191,e);}if (_boolean_result) { %>
		<table cellpadding="5" cellspacing="0" border="0" width="100%" class="infobox w e s">
			<tr>
				<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageView.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td class="table_detail">
					<select name="SelectedImageViewID" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",196,e);}if (_boolean_result) { %> disabled="disabled"<% } %> onchange="this.form.submit();">
						<option><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</option>
						<% while (loop("ImageTypeViewFilter:SortedViews(ImageViewBOs)","ImageView",null)) { %>
							<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageView:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageView:ID"),null).equals(context.getFormattedValue(getObject("SelectedImageViewID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ImageView")); getPipelineDictionary().put("SelectedImageView", temp_obj);} %> selected="selected"<% } %>><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageView:Name(Locale)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",199,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("ImageView:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {199}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (Language missing)<% } %></option>
						<% } %>
					</select>
				</td>
				<td nowrap="nowrap">
					<noscript>
						<table cellpadding="0" cellspacing="0" border="0">
							<tr><td class="button"><input type="submit" name="reload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Apply.button",null)),null)%>" class="button"/></td></tr>
						</table>
					</noscript>
				</td>
				<td class="infobox_item" nowrap="nowrap"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageType.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
				<td>
					<select name="SelectedImageTypeID" class="inputfield_en"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedImageView")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",212,e);}if (_boolean_result) { %> disabled="disabled"<% } %> onchange="this.form.submit()">
						<option><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.PleaseSelect.option",null,null,null,null,null,null,null,null,null,null,null,null));} %> ...</option>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("SelectedImageView"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",214,e);}if (_boolean_result) { %>
							<% while (loop("ImageTypeViewFilter:SortedTypes(SelectedImageView)","ImageType",null)) { %>
								<option value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageType:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ImageType:ID"),null).equals(context.getFormattedValue(getObject("SelectedImageTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ImageType")); getPipelineDictionary().put("SelectedImageType", temp_obj);} %> selected="selected"<% } %>>
									<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Width"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;x&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("ImageType:Height"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;)
								</option>
							<% } %>
						<% } %>
					</select>
				</td>
				<td nowrap="nowrap">
					<noscript>
						<table cellpadding="0" cellspacing="0" border="0">
							<tr><td class="button"><input type="submit" name="reload" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Apply.button",null)),null)%>" class="button" <% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ImageView")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",226,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/></td></tr>
						</table>
					</noscript>
				</td>
				<td class="infobox_item" nowrap="nowrap">&nbsp;&nbsp;&nbsp;<% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.Image.infobox_item",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td>
				<td>
					<input type="text" name="AddImagesForm_image" maxlength="350" size="45" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("SelectedImageBaseName"),null)),null)%>" class="inputfield_en" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedImageTypeID")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("SelectedImageTypeID"),null).equals(context.getFormattedValue("Please select ...",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",232,e);}if (_boolean_result) { %>disabled="disabled"<% } %>/>
				</td>
				<td nowrap="nowrap">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr><td class="button"><input type="submit" name="browseDirectoryAdd" value="..." class="button"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedImageTypeID")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("SelectedImageType:SourceType"),null).equals(context.getFormattedValue("Internal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %> disabled="disabled"<% } %> /></td></tr>
					</table>
				</td>
				<td nowrap="nowrap">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr><td class="button"><input type="submit" name="addImage" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Add.button",null)),null)%>" class="button"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("SelectedImageTypeID")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { %> disabled="disabled"<% } %>/></td></tr>
					</table>
				</td>
				<td class="w100">&nbsp;</td>
			</tr>
		</table>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ExcludedImages") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",248,e);}if (_boolean_result) { %>
		<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e ">
			<tr>
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",251,e);}if (_boolean_result) { %>
					<td class="e s" nowrap="nowrap" width="80">
						<div id="A">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('AddImagesForm','SelectedObjectUUID','A','B')" class="tableheader"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.SelectAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>
						<div id="B" style="display:none">
							<table border="0" cellspacing="0" cellpadding="0" class="table_header center" width="80">
								<tr>
									<td nowrap="nowrap">
										<a href="javascript:selectAll('AddImagesForm','SelectedObjectUUID','A','B')" class="tableheader"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ClearAll.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				<% } %>
				<td class="table_header e s" width="60"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.Image.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageView.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImageType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header e s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.ImagePath.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
				<td class="table_header s"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.Preview.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
			</tr>
			<% while (loop("ExcludedImages","Image",null)) { %>
				<% {Object temp_obj = (context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageTypeBO:ID"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageViewBO:ID"),null)),null)); getPipelineDictionary().put("ObjectUUID", temp_obj);} %>
				<tr>
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",282,e);}if (_boolean_result) { %>
						<td class="table_detail2 e s center">
							<input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("ObjectUUID"),null)),null)%>" />
							<input type="checkbox" name="SelectedObjectUUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ID"),null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("Image:ID"),null).equals(context.getFormattedValue(getObject("Clipboard:ObjectUUID(Image:ID)"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %> checked="checked"<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Image:ImageReferenceHolder(Product)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",285,e);}if (_boolean_result) { %> disabled="disabled"<% } %>/>
						</td>
					<% } %>
					<td class="e s center">										
						<img src="<%=context.getFormattedValue(getObject("Image:EffectiveUrl(Locale:LocaleID,boolean_false)"),null)%>" width="30" height="30"/>											 				
					</td>
					<td class="table_detail2 e s"><% {String value = null;try{value=context.getFormattedValue(getObject("Image:ImageViewBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {291}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
					<td class="table_detail2 e s">
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Image:ImageTypeBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",293,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("Image:ImageTypeBO:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {294}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Image:ImageTypeBO:Width"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {294}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;x&nbsp;<% {String value = null;try{value=context.getFormattedValue(getObject("Image:ImageTypeBO:Height"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {294}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;)
						<% } %>
					</td>
					<td class="table_detail2 e s">
						<table cellpadding="0" cellspacing="0" border="0">
							<tr>
								<td>
									<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) getObject("Image:ImageReferenceHolder(Product)")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",301,e);}if (_boolean_result) { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",302,e);}if (_boolean_result) { %>
											<input type="text" name="<%=context.getFormattedValue(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageTypeBO:ID"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageViewBO:ID"),null)),null),null)%>" maxlength="350" size="45" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("reload")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("SelectAdditionalImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("AddImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(ObjectUUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TouchedImageBaseName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(\"TouchedObjectUUID\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageFormValues:get(\"TouchedObjectUUID\")"),null).equals(context.getFormattedValue(getObject("Image:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",303,e);}if (_boolean_result) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TouchedImageBaseName"),null)),null)%><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageFormValues:get(ObjectUUID)"),null)),null)%><% } %><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageBaseName"),null)),null)%><% } %>" style="background:#FFFFE5"/>
										<% } else { %>
											<input type="text" name="<%=context.getFormattedValue(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageTypeBO:ID"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageViewBO:ID"),null)),null),null)%>" maxlength="350" size="45" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("reload")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("SelectAdditionalImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("AddImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(ObjectUUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",305,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TouchedImageBaseName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(\"TouchedObjectUUID\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageFormValues:get(\"TouchedObjectUUID\")"),null).equals(context.getFormattedValue(getObject("Image:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",305,e);}if (_boolean_result) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TouchedImageBaseName"),null)),null)%><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageFormValues:get(ObjectUUID)"),null)),null)%><% } %><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageBaseName"),null)),null)%><% } %>" style="background:#FFFFE5" disabled="disabled"/>
										<% } %>
									<% } else { %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",308,e);}if (_boolean_result) { %>
											<input type="text" name="<%=context.getFormattedValue(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageTypeBO:ID"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageViewBO:ID"),null)),null),null)%>" maxlength="350" size="45" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("reload")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("SelectAdditionalImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("AddImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(ObjectUUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TouchedImageBaseName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(\"TouchedObjectUUID\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageFormValues:get(\"TouchedObjectUUID\")"),null).equals(context.getFormattedValue(getObject("Image:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",309,e);}if (_boolean_result) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TouchedImageBaseName"),null)),null)%><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageFormValues:get(ObjectUUID)"),null)),null)%><% } %><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageBaseName"),null)),null)%><% } %>"/>
										<% } else { %>
											<input type="text" name="<%=context.getFormattedValue(context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageTypeBO:ID"),null)),null) + context.getFormattedValue(" ",null) + context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageViewBO:ID"),null)),null),null)%>" maxlength="350" size="45" class="inputfield_en" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("reload")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("SelectAdditionalImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("BrowseDirectoryContext"),null).equals(context.getFormattedValue("AddImage",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(ObjectUUID)")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",311,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("TouchedImageBaseName")))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ImageFormValues:get(\"TouchedObjectUUID\")")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("ImageFormValues:get(\"TouchedObjectUUID\")"),null).equals(context.getFormattedValue(getObject("Image:ID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",311,e);}if (_boolean_result) { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("TouchedImageBaseName"),null)),null)%><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("ImageFormValues:get(ObjectUUID)"),null)),null)%><% } %><% } else { %><%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ImageBaseName"),null)),null)%><% } %>" disabled="disabled"/>
										<% } %>
									<% } %>
								</td>
								<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",315,e);}if (_boolean_result) { %>
									<td>
										<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0" />
									</td>
									<td>
										<table cellpadding="0" cellspacing="0" border="0">
											<tr><td class="button"><input type="submit" name="browseDirectory_<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("Image:ID"),null)),null)%>" value="..." class="button"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Image:ImageTypeBO:SourceType"),null).equals(context.getFormattedValue("Internal",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",321,e);}if (_boolean_result) { %> disabled="disabled"<% } %> /></td></tr>
										</table>
									</td>
								<% } %>
							</tr>
						</table>
					</td>
					<td class="table_detail2 s center">
						<a href="<% {String value = null;try{value=context.getFormattedValue(getObject("Image:EffectiveUrl(Locale:LocaleID,boolean_false)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {329}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" class="action_link" target="_blank"><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.View.link",null,null,null,null,null,null,null,null,null,null,null,null));} %></a>
					</td>
				</tr>
			<% } %>
		</table>
		<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentChannelPermissionMap:SLD_MANAGE_PRODUCTS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",334,e);}if (_boolean_result) { %>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" class="w e s">
				<tr>
					<td align="right">
						<table border="0" cellspacing="4" cellpadding="0">
							<tr>
								<td class="button">
									<input class="button" type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Apply.button",null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",341,e);}if (_boolean_result) { %> disabled="disabled"<% } %> />
								</td>
								<td class="button"><input class="button" type="reset" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Reset.button",null)),null)%>" /></td>
								<td class="button"><input class="button" type="submit" name="confirmDeleteImageReference" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ProductUpdateMainImagesInclude_32.Delete.button",null)),null)%>"<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ProductLockedForMe")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",344,e);}if (_boolean_result) { %> disabled="disabled"<% } %> /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		<% } %>
	<% } else { %>
		<table cellpadding="0" cellspacing="0" border="0" width="100%" class="w e s">
			<tr><td class="table_detail" ><% {out.write(localizeISText("ProductUpdateMainImagesInclude_32.CurrentlyThereAreNoAdditionalImagesDefined.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td></tr>
		</table>
	<% } %>
<% out.print("</form>"); %>
<% } %><% printFooter(out); %>