<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Address"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text1",context.getFormattedValue(" - ",null) + context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.General.text1",null)),null)),
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddress-Show",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("USER_UUID",null),context.getFormattedValue(getObject("Profile:UUID"),null))).addURLParameter(context.getFormattedValue("AddressID",null),context.getFormattedValue(getObject("Address:AddressID"),null)))),
new TagParameter("id",getObject("Address:UUID")),
new TagParameter("text",getObject("Address:AddressName"))}, 5); %><% } else { %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("UpdateUserAddress.NewAddress.text",null)))}, 7); %><% } %><% {Object temp_obj = ("General"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"user/UserAddressTabs", null, "11");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Address"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp; - <% {out.write(localizeISText("UpdateUserAddress.General.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("UpdateUserAddress.NewAddress.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<!-- errors --><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) getObject("AddressForm:AddressName:isMissing")).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("UpdateUserAddress.AddressCreationUpdateFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("AddressForm:AddressName:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("UpdateUserAddress.PleaseProvideAValidNameForTheAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><br/><% {out.write(localizeISText("UpdateUserAddress.PleaseProvideAValidEmailAddress.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="table_title_description w e s"><% {out.write(localizeISText("UpdateUserAddress.FieldsWithARedAsteriskAreMandatory.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table>
<!-- Main Content --><% URLPipelineAction action467 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddress-Dispatch",null)))),null));String site467 = null;String serverGroup467 = null;String actionValue467 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddress-Dispatch",null)))),null);if (site467 == null){  site467 = action467.getDomain();  if (site467 == null)  {      site467 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup467 == null){  serverGroup467 = action467.getServerGroup();  if (serverGroup467 == null)  {      serverGroup467 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewUserAddress-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue467, site467, serverGroup467,true)); %><table border="0" cellspacing="0" cellpadding="0" width="100%" class="w e s">
<tr valign="top">
<td>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr><td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) getObject("AddressForm:AddressName:isMissing")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="AddressForm_AddressName"><% {out.write(localizeISText("sld_enterprise_app.AddressName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="AddressForm_AddressName"><% {out.write(localizeISText("sld_enterprise_app.AddressName.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail" colspan="4">
<input type="text" name="AddressForm_AddressName" id="AddressForm_AddressName" maxlength="35" size="25" class="inputfield_en"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:AddressName:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
/>&nbsp;
<input type="hidden" name="AddressForm_UseForShipTo" value="true"/>
<input type="hidden" name="AddressForm_UseForInvoiceTo" value="true"/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td class="fielditem2" nowrap="nowrap">&nbsp;</td>
<td class="table_detail" nowrap="nowrap" width="100%">&nbsp;</td>
</tr>
<tr>
<!-- street -->
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_Street"><% {out.write(localizeISText("UpdateUserAddress.Street.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4">
<input type="text" name="AddressForm_Street" id="AddressForm_Street" maxlength="35" size="25"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Street:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {84}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Street"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",88,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"
/>
</td>
</tr>
<tr>
<!-- zip + postal code -->
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_PostalCode"><% {out.write(localizeISText("UpdateUserAddress.ZipPostCode.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="AddressForm_PostalCode" id="AddressForm_PostalCode" maxlength="35" size="25"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:PostalCode:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:PostalCode"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {103}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"
/>
</td>
<td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="12" height="1" alt="" border="0"/></td>
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_City"><% {out.write(localizeISText("UpdateUserAddress.City.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail">
<input type="text" name="AddressForm_City" id="AddressForm_City" maxlength="35" size="25"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",115,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:City:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:City"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {118}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"
/>
</td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("StatesProvinces")))).booleanValue() && ((Boolean) (hasLoopElements("StatesProvinces") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",127,e);}if (_boolean_result) { %><tr>
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_State"><% {out.write(localizeISText("UpdateUserAddress.State.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",131,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("AddressForm:State:Value")); getPipelineDictionary().put("SelectedStateID", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("Address:State")); getPipelineDictionary().put("SelectedStateID", temp_obj);} %><% } %><% processOpenTag(response, pageContext, "stateselectbox", new TagParameter[] {
new TagParameter("ReadOnly",(((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) ),
new TagParameter("SelectedStateID",getObject("SelectedStateID")),
new TagParameter("StatesProvinces",getObject("StatesProvinces")),
new TagParameter("cssclass","inputfield_en"),
new TagParameter("FormParameter","AddressForm_State")}, 137); %></td>
</tr><% } %><tr>
<td nowrap="nowrap" class="label_select"><label class="label label_select" for="AddressForm_CountryCode"><% {out.write(localizeISText("UpdateUserAddress.Country.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",145,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",146,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","AddressForm_CountryCode"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("selectedcountrycode",getObject("AddressForm:CountryCode:Value")),
new TagParameter("reloadonchange","true")}, 147); %><% } else { %><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","AddressForm_CountryCode"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("selectedcountrycode",getObject("Address:CountryCode")),
new TagParameter("reloadonchange","true")}, 149); %><% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","AddressForm_CountryCode"),
new TagParameter("readonly","true"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("selectedcountrycode",getObject("AddressForm:CountryCode:Value")),
new TagParameter("reloadonchange","true")}, 153); %><% } else { %><% processOpenTag(response, pageContext, "countryselectbox", new TagParameter[] {
new TagParameter("formparameter","AddressForm_CountryCode"),
new TagParameter("readonly","true"),
new TagParameter("reloadonchangename","reloadStates"),
new TagParameter("selectedcountrycode",getObject("Address:CountryCode")),
new TagParameter("reloadonchange","true")}, 155); %><% } %><% } %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (((!(context.getFormattedValue(getObject("ValidateForm"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (disableErrorMessages().isDefined(getObject("ERROR_EMailAddressInvalid")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",161,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label"><label class="label label_error" for="AddressForm_EMail"><% {out.write(localizeISText("sld_enterprise_app.Email.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } else { %><td nowrap="nowrap" class="label"><label class="label" for="AddressForm_EMail"><% {out.write(localizeISText("sld_enterprise_app.Email.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td><% } %><td class="table_detail">
<input type="text" name="AddressForm_EMail" id="AddressForm_EMail" maxlength="256" size="25"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",168,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:EMail:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {169}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:EMail"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {171}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",173,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"
/>
</td>
<td colspan="3"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="6" height="1" alt="" border="0"/></td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_PhoneBusiness"><% {out.write(localizeISText("sld_enterprise_app.PhoneBusiness.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4">
<input type="text" name="AddressForm_PhoneBusiness" id="AddressForm_PhoneBusiness" maxlength="35" size="25"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:PhoneBusiness:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {186}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:PhoneBusiness"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {188}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",190,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_Mobile"><% {out.write(localizeISText("UpdateUserAddress.Mobile.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4">
<input type="text" name="AddressForm_Mobile" id="AddressForm_Mobile" maxlength="35" size="25"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Mobile:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {202}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Mobile"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {204}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",206,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"
/>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label"><label class="label" for="AddressForm_Fax"><% {out.write(localizeISText("sld_enterprise_app.Fax.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4">
<input type="text" name="AddressForm_Fax" id="AddressForm_Fax" maxlength="35" size="25" <% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Address")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("AddressForm:isSubmitted")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",216,e);}if (_boolean_result) { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("AddressForm:Fax:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {217}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } else { %>
value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:Fax"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {219}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",221,e);}if (_boolean_result) { %>
disabled = "disabled"
<% } %>
class="inputfield_en"/>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="5"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("CurrentUserPermissionMap:SLD_MANAGE_USERS"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",235,e);}if (_boolean_result) { %><table width="100%" border="0" cellspacing="0" cellpadding="0" class="w e s">
<tr>
<td align="right">
<table cellpadding="0" cellspacing="4" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Address"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",241,e);}if (_boolean_result) { %><td class="button">
<input type="hidden" name="webform-id" value="AddressForm"/>
<input type="hidden" name="USER_UUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Profile:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {244}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="AddressID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Address:AddressID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {245}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="update" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input class="button" type="submit" name="reset" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Reset.button",null)),null)%>"/>
</td><% } else { %><td class="button">
<input type="hidden" name="webform-id" value="AddressForm"/>
<input type="hidden" name="USER_UUID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("Profile:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input class="button" type="submit" name="back" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Cancel.button",null)),null)%>"/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Address"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",268,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "269");} %><% } %><script language="JavaScript" type="text/javascript">
<!--
document.formMask.AddressForm_AddressName.focus();
-->
</script>
<!-- EO Main Content --><% printFooter(out); %>