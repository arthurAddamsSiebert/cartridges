<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","Parameters")}, 3); %><% {try{executePipeline("ViewPagePageVariantAssignmentCreationWizard-ProcessValuesInContainer",((java.util.Map)(getObject("Parameters"))),"Parameters");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 4.",e);}} %><table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title aldi"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("All",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletEntryPointSelectPageVariantAssignmentHeader.EditAllPagesStep2SelectPageVariants.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("Parameters:SelectedObjects"),null).equals(context.getFormattedValue("Selected",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><% {out.write(localizeISText("PageletEntryPointSelectPageVariantAssignmentHeader.EditSelectedPagesStep2SelectPageVariants.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr>
</table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/search/inc/PageletSearchTitleAndErrors", null, "24");} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("mapname","Errors")}, 26); %><% {try{executePipeline("ViewPagePageVariantAssignmentCreationWizard-RestoreErrors",((java.util.Map)(getObject("Errors"))),"Errors");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 27.",e);}} %><!-- Error Handling --><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Errors:ErrorNoPageVariantsSelected"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon middle e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error middle" width="100%"><% {out.write(localizeISText("PageletEntryPointSelectPageVariantAssignmentHeader.YouHaveNotSelectedAnyPageVariantsUseTheCheckboxesT.error",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
</table><% } %><% printFooter(out); %>