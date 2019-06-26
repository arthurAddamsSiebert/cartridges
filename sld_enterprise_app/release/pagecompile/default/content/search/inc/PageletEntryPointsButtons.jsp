<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><!-- TEMPLATENAME: PageletEntryPointsButtons.isml -->
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("submitbuttonincludetype"),null).equals(context.getFormattedValue("objectlist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="editAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditAll.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td>
<td class="button"><input type="submit" name="editSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditSelected.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {12}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td><% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true"),
new TagParameter("disableButtonAttribute",getObject("DisableButtonAttribute"))}, 13); %></tr>
</table><% } %></td>
<td align="right">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.New.button",null)),null)%>" class="button"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.Delete.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
</td><% } %></tr>
</table>
</td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="editAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditAll.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td>
<td class="button"><input type="submit" name="editSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditSelected.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td><% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true"),
new TagParameter("disableButtonAttribute",getObject("DisableButtonAttribute"))}, 43); %></tr>
</table>
</td>
</tr>
</table><% } %><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PermissionMap:SLD_MANAGE_CONTENT")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("submitbuttonincludetype"),null).equals(context.getFormattedValue("objectlist",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("page"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",54,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td>
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="submit" name="new" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.New.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {64}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %><td class="button">
<input type="submit" name="confirmDelete" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.Delete.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {68}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/>
</td><% } %></tr>
</table>
</td>
<td width="26">
&nbsp;
</td>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",78,e);}if (_boolean_result) { %><table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="editSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditSelected.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td>
<td class="button"><input type="submit" name="editAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditAll.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td><% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true"),
new TagParameter("disableButtonAttribute",getObject("DisableButtonAttribute"))}, 83); %></tr>
</table><% } %></td>
</tr>
</table>
</td>
</tr>
</table><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("PageletSearchResultDict:Pagelets")))).booleanValue() && ((Boolean) (hasLoopElements("PageletSearchResultDict:Pagelets") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",94,e);}if (_boolean_result) { %><table class="w e s" width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="left">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><input type="submit" name="editSelected" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditSelected.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {100}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td>
<td class="button"><input type="submit" name="editAll" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointsButtons.EditAll.button",null)),null)%>" class="button" <% {String value = null;try{value=context.getFormattedValue(getObject("DisableButtonAttribute"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {101}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/></td><% processOpenTag(response, pageContext, "publishtolivebutton", new TagParameter[] {
new TagParameter("addSeparatorBefore","true"),
new TagParameter("disableButtonAttribute",getObject("DisableButtonAttribute"))}, 102); %></tr>
</table>
</td>
</tr>
</table><% } %><% } %><% } %><% printFooter(out); %>