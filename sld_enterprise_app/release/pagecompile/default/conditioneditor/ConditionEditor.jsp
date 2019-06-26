<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="org.apache.commons.lang.StringUtils"%><%@page import="com.intershop.beehive.core.capi.webform.FormParameter"%><%@page import="java.util.Comparator"%><%@page import="java.util.Collections"%><%@page import="java.util.Map"%><%@page import="java.util.Set"%><%@page import="java.util.HashMap"%><%@page import="com.intershop.beehive.core.capi.webform.Form"%><%@page import="com.intershop.component.foundation.capi.condition.ConditionDescriptor"%><%@page import="java.util.Iterator"%><%@page import="com.intershop.component.foundation.capi.condition.ConditionDescriptorRegistry"%><% {Object temp_obj = (getObject("conditioneditortitle")); getPipelineDictionary().put("ConditionEditorTitle", temp_obj);} %><% {Object temp_obj = (getObject("conditiondescriptorreqistry")); getPipelineDictionary().put("ConditionDescriptorReqistry", temp_obj);} %><% {Object temp_obj = (getObject("newconditionform")); getPipelineDictionary().put("NewConditionForm", temp_obj);} %><% {Object temp_obj = (getObject("targetconditionid")); getPipelineDictionary().put("TargetConditionID", temp_obj);} %><% {Object temp_obj = (getObject("conditionform")); getPipelineDictionary().put("ConditionForm", temp_obj);} %><% {Object temp_obj = (getObject("editcondition")); getPipelineDictionary().put("EditCondition", temp_obj);} %><% {Object temp_obj = (getObject("editconditiontypegroup")); getPipelineDictionary().put("EditConditionTypeGroup", temp_obj);} %><% {Object temp_obj = (getObject("confirmDelete")); getPipelineDictionary().put("confirmDelete", temp_obj);} %><% {Object temp_obj = (getObject("conditionclipboard")); getPipelineDictionary().put("ConditionClipboard", temp_obj);} %><% {Object temp_obj = (getObject("contextobject")); getPipelineDictionary().put("ContextObject", temp_obj);} %><% {Object temp_obj = (getObject("contextobjectidname")); getPipelineDictionary().put("ContextObjectIDName", temp_obj);} %><% {Object temp_obj = (getObject("contextobjectid")); getPipelineDictionary().put("ContextObjectID", temp_obj);} %><% {Object temp_obj = (getObject("dispatchpipeline")); getPipelineDictionary().put("DispatchPipeline", temp_obj);} %><% {Object temp_obj = (getObject("targetcontextobjectid")); getPipelineDictionary().put("TargetContextObjectID", temp_obj);} %><% {Object temp_obj = (getObject("overrideapplicationexclusionsforms")); getPipelineDictionary().put("OverrideApplicationExclusionsForms", temp_obj);} %><% {Object temp_obj = (getObject("parametername1")); getPipelineDictionary().put("ParameterName1", temp_obj);} %><% {Object temp_obj = (getObject("parametervalue1")); getPipelineDictionary().put("ParameterValue1", temp_obj);} %><% {Object temp_obj = (getObject("parametername2")); getPipelineDictionary().put("ParameterName2", temp_obj);} %><% {Object temp_obj = (getObject("parametervalue2")); getPipelineDictionary().put("ParameterValue2", temp_obj);} %><% {Object temp_obj = (getObject("parametername3")); getPipelineDictionary().put("ParameterName3", temp_obj);} %><% {Object temp_obj = (getObject("parametervalue3")); getPipelineDictionary().put("ParameterValue3", temp_obj);} %><% {Object temp_obj = (getObject("parametername4")); getPipelineDictionary().put("ParameterName4", temp_obj);} %><% {Object temp_obj = (getObject("parametervalue4")); getPipelineDictionary().put("ParameterValue4", temp_obj);} %><% {Object temp_obj = (getObject("parametername5")); getPipelineDictionary().put("ParameterName5", temp_obj);} %><% {Object temp_obj = (getObject("parametervalue5")); getPipelineDictionary().put("ParameterValue5", temp_obj);} %><%
	 ArrayList<ConditionDescriptor> typeConditionDescriptors = new ArrayList<ConditionDescriptor>();
	 HashMap<String, String> typesMap = new HashMap<String, String>();
	 
	 String selectedType = null;
	 Form form = getObject("NewConditionForm")==null ? (Form) getObject("ConditionForm") : (Form) getObject("NewConditionForm");
	 if (form!=null) {
	 	FormParameter param = form.getParameter("ConditionType");
	 	if (param!=null) selectedType = (String) param.getValue();
	 }
	 
	 ConditionDescriptorRegistry reg = (ConditionDescriptorRegistry) getObject("ConditionDescriptorRegistry");
	 Iterator<ConditionDescriptor> descriptors = reg.sortDescriptorsByName(Iterators.createCollection(reg.createSelectableDescriptorsIterator())).iterator();
	 
	 // collect descriptor information
	 while (descriptors.hasNext()) {
	 	ConditionDescriptor desc = descriptors.next();
	 	
	 	if (!desc.isConfigurable(getObject("ContextObject"))) 
	 		continue;		// check if condition is configurable
	 		
	 	if (selectedType!=null && desc.getType().equals(selectedType)) 
	 		typeConditionDescriptors.add(desc);
	 		
	 	if (StringUtils.isNotBlank(desc.getType())) 
	 		typesMap.put(desc.getType(), desc.getTypeName());
	 }
	 
	 List<String> conditionTypes = new ArrayList<String>();
	 conditionTypes.addAll(typesMap.keySet());
	 
	 class MyComparator implements Comparator<String> 
	 {
	 	 private Map<String, String> typesMap;
	 	 
	     public MyComparator(Map<String, String> typesMap) {
	     	this.typesMap = typesMap;
	     }
	 	
	     public int compare(String s1, String s2) {
	         return typesMap.get(s1).compareTo(typesMap.get(s2));
	     }
	 }
	 
	 Collections.sort(conditionTypes, new MyComparator(typesMap));
	 
	 getPipelineDictionary().put("TypeConditionDescriptors", typeConditionDescriptors.iterator());
	 getPipelineDictionary().put("ConditionTypes", conditionTypes.iterator());
	 getPipelineDictionary().put("ConditionTypesMap", typesMap);
	 getPipelineDictionary().put("ConditionOperators", reg.createOperatorsIterator());

	 // delete all parametername1..5|parametervalue1..5, to avoid that ismessagebox uses the parameters for his parametername1..5|parametervalue1..5 too
	 for (int i=1; i < 6; i ++)
	 { 	 
	 	getPipelineDictionary().remove("parametername" + i);
	 	getPipelineDictionary().remove("parametervalue" + i);
	 }
	 
%><%@page import="java.util.ArrayList"%><%@page import="java.util.List"%><%
	List<String> errors = new ArrayList<String>();
	@SuppressWarnings("unchecked")
	Set<String> keys = getPipelineDictionary().keySet();
	for (String key : keys)
	{
		if (key.matches("ERROR.*Condition.*")) {
			errors.add((String)getPipelineDictionary().get(key));
		}
	}
	getPipelineDictionary().put("ThisError", errors);
%><!-- Begin of condition editor form --><% URLPipelineAction action495 = new URLPipelineAction(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null)))),null));String site495 = null;String serverGroup495 = null;String actionValue495 = context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null)))),null);if (site495 == null){  site495 = action495.getDomain();  if (site495 == null)  {      site495 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getDomainName();  }}if (serverGroup495 == null){  serverGroup495 = action495.getServerGroup();  if (serverGroup495 == null)  {      serverGroup495 = com.intershop.beehive.core.capi.request.Request.getCurrent().getRequestSite().getServerGroup();  }}out.print("<form");out.print(" method=\"");out.print("post");out.print("\"");out.print(" action=\"");out.print(context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("DispatchPipeline"),null)))),null));out.print("\"");out.print(" name=\"");out.print("form");out.print("\"");out.print(">");out.print(context.prepareWACSRFTag(actionValue495, site495, serverGroup495,true)); %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObjectIDName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextObjectID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {148}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ChannelID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("CurrentChannel:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {149}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParameterName1"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",150,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterName1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {150}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParameterName2"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",151,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterName2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {151}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParameterName3"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",152,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterName3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParameterName4"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterName4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {153}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ParameterName5"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",154,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterName5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParameterValue5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><!-- Discount Conditions -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="n e w s">
<tr>
<td class="table_title2 n w100"><% {out.write(localizeISText(context.getFormattedValue(getObject("conditioneditortitle"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></td><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OverrideApplicationExclusionsForms"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",160,e);}if (_boolean_result) { %><td class="table_detail n s right"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("OverrideApplicationExclusionsForms:get(ContextObjectID):Selection:Value"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",162,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EditCondition")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("NewConditionForm")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EditConditionTypeGroup")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",163,e);}if (_boolean_result) { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("OverrideApplicationExclusionsForms:get(ContextObjectID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {164}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked" disabled="disabled"/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("OverrideApplicationExclusionsForms:get(ContextObjectID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {166}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" checked="checked"/> 
<% } %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EditCondition")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("NewConditionForm")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EditConditionTypeGroup")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",169,e);}if (_boolean_result) { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("OverrideApplicationExclusionsForms:get(ContextObjectID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {170}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" disabled="disabled"/><% } else { %><input type="checkbox" name="<% {String value = null;try{value=context.getFormattedValue(getObject("OverrideApplicationExclusionsForms:get(ContextObjectID):Selection:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {172}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% } %></td>
<td nowrap="nowrap" class="table_detail n s right"><% {out.write(localizeISText("ConditionEditor.OverrideApplicationLevelExclusions",null,null,null,null,null,null,null,null,null,null,null,null));} %></td><% } %></tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("confirmDeleteCondition")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("TargetContextObjectID"),null).equals(context.getFormattedValue(getObject("ContextObjectID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",183,e);}if (_boolean_result) { %><tr>
<td<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OverrideApplicationExclusionsForms"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",185,e);}if (_boolean_result) { %> colspan=3<% } %>>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="confirm_box"><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("ConditionClipboard:ObjectUUIDs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",187,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","Conditions"),
new TagParameter("cancelbtnname","cancelCondition"),
new TagParameter("okbtnname","deleteCondition"),
new TagParameter("type","cmdc"),
new TagParameter("message",localizeText(context.getFormattedValue("ConditionEditor.DeleteAllSelectedConditions.subject",null))),
new TagParameter("class","s")}, 188); %><% } else { %><% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","1"),
new TagParameter("subject","Conditions"),
new TagParameter("type","cmde"),
new TagParameter("message",localizeText(context.getFormattedValue("ConditionEditor.PleaseSelectAtLeastOneCondition.error",null))),
new TagParameter("class","s")}, 193); %><% } %></table>
</td>
</tr><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("ThisError:Iterator") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("TargetContextObjectID"),null).equals(context.getFormattedValue(getObject("ContextObjectID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",201,e);}if (_boolean_result) { %><tr>
<td<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OverrideApplicationExclusionsForms"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",203,e);}if (_boolean_result) { %> colspan=3<% } %>><% while (loop("ThisError:Iterator","ThisError",null)) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box s">
<tr valign="top">
<td class="error_icon top e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error top" width="100%">
<b><!-- <% {String value = null;try{value=context.getFormattedValue(getObject("ThisError"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {209}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> --><% {out.write(localizeISText(context.getFormattedValue(getObject("ThisError"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
</td>
</tr>
</table><% } %></td>
</tr><% } %></table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ContextObject:Condition")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",222,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("NewConditionForm")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("TargetContextObjectID"),null).equals(context.getFormattedValue(getObject("ContextObjectID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",223,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w">
<tr>
<td class="table_detail"><% {out.write(localizeISText("ConditionEditor.CurrentlyThereIsNoConditionDefined.subject",null,null,null,null,null,null,null,null,null,null,null,null));} %> <% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("EditCondition"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",227,e);}if (_boolean_result) { %><% {out.write(localizeISText("ConditionEditor.ClickNewToCreateACondition.subject",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("EditCondition")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("NewConditionForm")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EditConditionTypeGroup")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",230,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="n w e s">
<tr>
<td width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("EditCondition"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",236,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("OverrideApplicationExclusionsForms"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",237,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" name="applyCondition"/></td><% } %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" name="newCondition" /></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% } %><% } else { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w s">
<tr>
<td><% processOpenTag(response, pageContext, "printcondition", new TagParameter[] {
new TagParameter("parametervalue5",getObject("ParameterValue5")),
new TagParameter("parametervalue4",getObject("ParameterValue4")),
new TagParameter("parametervalue3",getObject("ParameterValue3")),
new TagParameter("editcondition",getObject("EditCondition")),
new TagParameter("parametervalue2",getObject("ParameterValue2")),
new TagParameter("parametervalue1",getObject("ParameterValue1")),
new TagParameter("conditionform",getObject("ConditionForm")),
new TagParameter("editconditiontypegroup",getObject("EditConditionTypeGroup")),
new TagParameter("newconditionform",getObject("NewConditionForm")),
new TagParameter("readonly",((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)),
new TagParameter("contextobjectid",getObject("ContextObjectID")),
new TagParameter("parametername4",getObject("ParameterName4")),
new TagParameter("parametername5",getObject("ParameterName5")),
new TagParameter("conditiontypes",getObject("ConditionTypes")),
new TagParameter("conditionclipboard",getObject("ConditionClipboard")),
new TagParameter("parametername1",getObject("ParameterName1")),
new TagParameter("parametername2",getObject("ParameterName2")),
new TagParameter("targetconditionid",getObject("TargetConditionID")),
new TagParameter("channeldomain",getObject("CurrentChannel:Domain")),
new TagParameter("parametername3",getObject("ParameterName3")),
new TagParameter("conditiondescriptorregistry",getObject("ConditionDescriptorRegistry")),
new TagParameter("conditionoperators",getObject("ConditionOperators")),
new TagParameter("typeconditiondescriptors",getObject("TypeConditionDescriptors")),
new TagParameter("contextobject",getObject("ContextObject")),
new TagParameter("contextobjectidname",getObject("ContextObjectIDName")),
new TagParameter("condition",getObject("ContextObject:Condition")),
new TagParameter("dispatchpipeline",getObject("DispatchPipeline")),
new TagParameter("conditiondescriptors",getObject("ConditionDescriptors")),
new TagParameter("conditiontypesmap",getObject("ConditionTypesMap"))}, 254); %></td>
</tr>
</table><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("NewConditionForm")))).booleanValue() && !((Boolean) (disableErrorMessages().isDefined(getObject("TargetConditionID")))).booleanValue() && ((Boolean) (((!((Boolean) (disableErrorMessages().isDefined(getObject("TargetContextObjectID")))).booleanValue() || ((Boolean) ((((context.getFormattedValue(getObject("TargetContextObjectID"),null).equals(context.getFormattedValue(getObject("ContextObjectID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",288,e);}if (_boolean_result) { %><table cellpadding="0" cellspacing="4" border="0" width="100%" class="e w s">
<tr><% {Object temp_obj = (getObject("CurrentChannel:Domain")); getPipelineDictionary().put("ChannelDomain", temp_obj);} %><td width="65">&nbsp;
</td>
<td><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"conditioneditor/NewCondition", null, "299");} %></td>
<td width="6">&nbsp;
</td>
</tr>
</table><% } %></td>
</tr>
</table><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ContextObject:Condition")))).booleanValue() && !((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("readonly")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("readonly"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",314,e);}if (_boolean_result) { %><table width="100%" cellspacing="0" cellpadding="0" border="0" class="w e s">
<tr>
<td width="100%" align="right">
<table cellspacing="4" cellpadding="0" border="0">
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("EditCondition")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("NewConditionForm")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("EditConditionTypeGroup")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",320,e);}if (_boolean_result) { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Group.button",null)),null)%>" name="groupConditions" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Ungroup.button",null)),null)%>" name="ungroupConditions" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.MoveUp.button",null)),null)%>" name="moveUpCondition" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.MoveDown.button",null)),null)%>" name="moveDownCondition" disabled="disabled" /></td>
<td ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="20" height="6" alt="" border="0"/></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" name="newCondition" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" name="applyCondition" disabled="disabled" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" name="confirmDeleteCondition" disabled="disabled" /></td><% } else { %><td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Group.button",null)),null)%>" name="groupConditions" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Ungroup.button",null)),null)%>" name="ungroupConditions" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.MoveUp.button",null)),null)%>" name="moveUpCondition" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.MoveDown.button",null)),null)%>" name="moveDownCondition" /></td>
<td ><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="20" height="6" alt="" border="0"/></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.New.button",null)),null)%>" name="newCondition" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Apply.button",null)),null)%>" name="applyCondition" /></td>
<td class="button"><input type="submit" class="button" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("sld_enterprise_app.Delete.button",null)),null)%>" name="confirmDeleteCondition" /></td><% } %></tr>
</table>
</td>
</tr>
</table><% } %><% out.print("</form>"); %> 
<% printFooter(out); %>