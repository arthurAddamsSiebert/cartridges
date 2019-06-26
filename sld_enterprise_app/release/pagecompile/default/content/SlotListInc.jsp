<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "2");} %><% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 3); %><% processOpenTag(response, pageContext, "pageletplaceholderutils", new TagParameter[] {
new TagParameter("PageletPlaceholderUtils","PlaceholderUtils")}, 4); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ContentRepository"),
new TagParameter("key0","PageletUUID"),
new TagParameter("value1",getObject("ContentRepository")),
new TagParameter("value0",getObject("pagelet:UUID")),
new TagParameter("mapname","Params")}, 5); %><% {try{executePipeline("ViewSlotComponentAssignments-TemplateCallback",((java.util.Map)(getObject("Params"))),"Result");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 8.",e);}} %><% {Object temp_obj = (getObject("pagelet")); getPipelineDictionary().put("Pagelet", temp_obj);} %><% {Object temp_obj = (getObject("locale")); getPipelineDictionary().put("Locale", temp_obj);} %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result"))}, 11); %><% processOpenTag(response, pageContext, "populatedictionary", new TagParameter[] {
new TagParameter("map",getObject("Result:RestoredParamMap"))}, 12); %><% processOpenTag(response, pageContext, "pageleteditable", new TagParameter[] {
new TagParameter("User",getObject("CurrentUser")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("PageletLockedForOther","PageletLockedForOther"),
new TagParameter("Result","IsPageletEditable"),
new TagParameter("Pagelet",getObject("pagelet"))}, 13); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("PageletModelUtils:SlotInclusionDefinitions(Pagelet:PageletDefinition)") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {Object temp_obj = (new Double(0)); getPipelineDictionary().put("SlotCount", temp_obj);} %> 
<% while (loop("PageletModelUtils:SlotInclusionDefinitions(Pagelet:PageletDefinition)","SlotInclusionDefinition",null)) { %><% {Object temp_obj = (getObject("PageletModelUtils:SlotDefinition(SlotInclusionDefinition:SlotDefinition:ReferencedName,PageletModelRepository)")); getPipelineDictionary().put("SlotDefinition", temp_obj);} %><% {Object temp_obj = ((new Double( ((Number) getObject("SlotCount")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("SlotCount", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Pagelet:SubSlot(SlotDefinition:QualifiedName)"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("Pagelet:SubSlot(SlotDefinition:QualifiedName)")); getPipelineDictionary().put("Slot", temp_obj);} %><div><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="6" alt="" border="0"/></div><% processOpenTag(response, pageContext, "slotpageletassignments", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue7",getObject("slotparametervalue7")),
new TagParameter("ContextType",getObject("SlotDefinition:QualifiedName")),
new TagParameter("parametervalue6",getObject("slotparametervalue6")),
new TagParameter("parametervalue5",getObject("slotparametervalue5")),
new TagParameter("parametervalue4",getObject("slotparametervalue4")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0",getObject("slotparametername0")),
new TagParameter("parametervalue3",getObject("slotparametervalue3")),
new TagParameter("parametername1",getObject("slotparametername1")),
new TagParameter("parametervalue2",getObject("slotparametervalue2")),
new TagParameter("parametervalue1",getObject("slotparametervalue1")),
new TagParameter("parametername2",getObject("slotparametername2")),
new TagParameter("parametervalue0",getObject("slotparametervalue0")),
new TagParameter("parametername3",getObject("slotparametername3")),
new TagParameter("ContextPipeline",getObject("slottargetpipeline")),
new TagParameter("ContextObject",getObject("Slot")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("Repository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("slotparametername4")),
new TagParameter("parametername5",getObject("slotparametername5")),
new TagParameter("parametername6",getObject("slotparametername6")),
new TagParameter("parametername7",getObject("slotparametername7"))}, 22); %><% {Object temp_obj = (getObject("PlaceholderUtils:PlaceholdersForSlot(Slot,ContentRepository:RepositoryDomain,PageletModelRepository)")); getPipelineDictionary().put("SlotPlaceholders", temp_obj);} %> 
<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SlotPlaceholders") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><% while (loop("SlotPlaceholders","Placeholder",null)) { %> 
<% processOpenTag(response, pageContext, "placeholderwithsubplaceholders", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("parametervalue7",getObject("slotparametervalue7")),
new TagParameter("Placeholder",getObject("Placeholder")),
new TagParameter("ContextType",getObject("Placeholder:UUID")),
new TagParameter("parametervalue6",getObject("slotparametervalue6")),
new TagParameter("parametervalue5",getObject("slotparametervalue5")),
new TagParameter("parametervalue4",getObject("slotparametervalue4")),
new TagParameter("PageLocatorName",getObject("PageLocatorName")),
new TagParameter("parametername0",getObject("slotparametername0")),
new TagParameter("parametervalue3",getObject("slotparametervalue3")),
new TagParameter("parametername1",getObject("slotparametername1")),
new TagParameter("parametervalue2",getObject("slotparametervalue2")),
new TagParameter("parametervalue1",getObject("slotparametervalue1")),
new TagParameter("parametername2",getObject("slotparametername2")),
new TagParameter("parametervalue0",getObject("slotparametervalue0")),
new TagParameter("parametername3",getObject("slotparametername3")),
new TagParameter("ContextPipeline",getObject("slottargetpipeline")),
new TagParameter("StartFlag",getObject("StartFlag")),
new TagParameter("ContentRepository",getObject("ContentRepository")),
new TagParameter("parametername4",getObject("slotparametername4")),
new TagParameter("parametername5",getObject("slotparametername5")),
new TagParameter("parametername6",getObject("slotparametername6")),
new TagParameter("parametername7",getObject("slotparametername7"))}, 50); %><% } %><% } %><% } %><% } %><!-- EO Content - Slot Definitions --><% } %><% printFooter(out); %>