<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("link",url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-New",null))))),
new TagParameter("id","newProductSet"),
new TagParameter("text",localizeText(context.getFormattedValue("NewProductSet.NewSharingGroup.text",null)))}, 4); %><% {Object temp_obj = ("New"); getPipelineDictionary().put("SelectedTab", temp_obj);} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"sharing/ProductSetTabs", null, "7");} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title w e s"><% {out.write(localizeISText("NewProductSet.NewSharingGroup.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- start error handling --><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSetForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><% {out.write(localizeISText("NewProductSet.SharingGroupCreationFailed.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSetForm:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewProductSet.PleaseProvideAValidNameForTheSharingGroup.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- end error handling -->
<tr>
<td class="table_title_description w e s" nowrap="nowrap"><% {out.write(localizeISText("NewProductSet.PleaseProvideANameAndDescriptionForTheSharingGroup.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action488 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-Dispatch",null)))),null));String site488 = null;String serverGroup488 = null;String actionValue488 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-Dispatch",null)))),null);if (site488 == null){  site488 = action488.getDomain();  if (site488 == null)  {      site488 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup488 == null){  serverGroup488 = action488.getServerGroup();  if (serverGroup488 == null)  {      serverGroup488 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductSet-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("ProductSetForm");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue488, site488, serverGroup488,true)); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td>
<table cellspacing="0" cellpadding="0" border="0" width="100%" class="w e s">
<tr><td colspan="4"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSetForm:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><td nowrap="nowrap" class="label" width="6%"><label class="label label_error" for="ProductSetForm_Name"><% {out.write(localizeISText("NewProductSet.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } else { %><td nowrap="nowrap" class="label" width="6%"><label class="label" for="ProductSetForm_Name"><% {out.write(localizeISText("NewProductSet.Name.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></label></td><% } %><td class="table_detail">
<table cellspacing="0" cellpadding="0" border="0">
<tr>
<td><input type="text" name="ProductSetForm_Name" id="ProductSetForm_Name" class="inputfield_en" size="55" maxlength="150" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ProductSetForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/></td>
<td nowrap="nowrap" class="label_checkbox"><label class="label label_checkbox" for="ProductSetForm_IsActive"><% {out.write(localizeISText("NewProductSet.Enable.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="input_checkbox" width="65%"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ProductSetForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ProductSetForm_IsActive"),null).equals(context.getFormattedValue("True",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %><input type="checkbox" name="ProductSetForm_IsActive" id="ProductSetForm_IsActive" value="True" checked="checked"/><% } else { %><input type="checkbox" name="ProductSetForm_IsActive" id="ProductSetForm_IsActive" value="True"/><% } %><% } else { %><input type="checkbox" name="ProductSetForm_IsActive" id="ProductSetForm_IsActive" value="True" checked="checked"/><% } %></td>
</tr>
</table>
</td>
</tr>
<tr>
<td nowrap="nowrap" class="label_textarea"><label class="label label_textarea" for="ProductSetForm_Description"><% {out.write(localizeISText("NewProductSet.Description.label",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</label></td>
<td class="table_detail" colspan="4">
<textarea name="ProductSetForm_Description" id="ProductSetForm_Description" rows="5" cols="70" class="select inputfield_en"><% {String value = null;try{value=context.getFormattedValue(getObject("ProductSetForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {73}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></textarea>
</td>
</tr>
<tr><td><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td></tr>
</table>
<input type="hidden" name="create" value="Apply"/>
<tr><td><input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.input1",null)),null)%>" style="position: absolute; width: 0px; height: 0px; margin: 0px; border: 0px; padding: 0px; font-size: 0px;"/></td></tr>
<table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input class="button" type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Apply.button",null)),null)%>"/>
<td class="button"><input class="button" type="submit" name="cancelCreate" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewProductSet.Cancel.button",null)),null)%>"/></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>