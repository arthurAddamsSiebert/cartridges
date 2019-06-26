<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area --><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",localizeText(context.getFormattedValue("NewABTestGroup_52.NewTestGroup.text",null)))}, 4); %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title n w e s"><% {out.write(localizeISText("NewABTestGroup_52.NewTestGroup.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- errors --> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestGroupForm:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><tr>
<td> 
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%"><b><% {out.write(localizeISText("NewABTestGroup_52.TestGroupCouldNotBeCreated.error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b><br/><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestGroupForm:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %><% {out.write(localizeISText("NewABTestGroup_52.TestGroupNameIsMandatoryPleaseProvideATestGroupName.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/><% } %></td>
</tr>
</table>
</td>
</tr><% } %><!-- EO errors--> 
<tr>
<td class="table_title_description w e"><% {out.write(localizeISText("NewABTestGroup_52.InsertNameAndDescriptionOfYourTestGroupTheTargetURL.table_title_description",null,null,"star",null,null,null,null,null,null,null,null,null));} %><br/><br/><% {out.write(localizeISText("NewABTestGroup_52.ClickApplyToSaveTheDetailsClickCancelToAbortTheCreation.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% URLPipelineAction action556 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroup_52-Dispatch",null)))),null));String site556 = null;String serverGroup556 = null;String actionValue556 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroup_52-Dispatch",null)))),null);if (site556 == null){  site556 = action556.getDomain();  if (site556 == null)  {      site556 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup556 == null){  serverGroup556 = action556.getServerGroup();  if (serverGroup556 == null)  {      serverGroup556 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewABTestGroup_52-Dispatch",null)))),null));out.print("\"");out.print(" name=\"");out.print("formMask");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue556, site556, serverGroup556,true)); %><input type="hidden" name="ABTestUUID" value="<%=context.getFormattedValue(getObject("ABTest:UUID"),null)%>"/>
<table cellpadding="0" cellspacing="0" border="0" width="100%" class="aldi">
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestGroupForm:Name:isMissing"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",41,e);}if (_boolean_result) { %><td class="fielditem2_error" nowrap="nowrap"><% {out.write(localizeISText("NewABTestGroup_52.Name.fielditem2_error",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } else { %><td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewABTestGroup_52.Name.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:<span class="star">*</span></td><% } %><td class="table_detail w100">
<input type="text" name="ABTestGroupForm_Name" maxlength="400" size="69" value="<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestGroupForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ABTestGroupForm:Name:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {47}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>" class="inputfield_en"/>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewABTestGroup_52.Description.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<textarea rows="5" cols="67" name="ABTestGroupForm_Description" class="inputfield_en"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("ABTestGroupForm:isSubmitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("ABTestGroupForm:Description:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %></textarea>
</td>
</tr>
<tr>
<td class="fielditem2" nowrap="nowrap"><% {out.write(localizeISText("NewABTestGroup_52.TargetURL.fielditem2",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
<td class="table_detail">
<input type="text" name="ABTestGroupForm_AddURL" maxlength="400" size="30" value="" class="inputfield_en"/>
</td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="4" alt="" border="0"/></td>
</tr>
<tr>
<td colspan="2" class="n" align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="webform-id" value="ABTestGroupForm"/>
<input type="submit" name="create" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewABTestGroup_52.Apply.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="hidden" name="ChannelID" value="<%=context.getFormattedValue(getObject("CurrentChannel:UUID"),null)%>"/>
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("NewABTestGroup_52.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table><% out.print("</form>"); %><!-- EO Working Area --><% printFooter(out); %>