<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewApplication",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
	<% {out.write(localizeISText("PreviewPanelError.TheApplicationIsInvalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewLocale",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
	<% {out.write(localizeISText("PreviewPanelError.TheLanguageIsInvalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewCurrency",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
	<% {out.write(localizeISText("PreviewPanelError.TheCurrencyIsInvalid",null,null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewDate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>	
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("previewFormParameter:isError(\"error.invalidDate\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %>
	   <% {out.write(localizeISText("PreviewPanelError.DateTimeIsNotInTheCorrectFormat","",null,null,null,null,null,null,null,null,null,null,null));} %>
	<% } %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("previewFormParameter:isError(\"error.dateInPast\")"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
       <% {out.write(localizeISText("PreviewPanelError.DateTimeRefersToThePast",null,null,null,null,null,null,null,null,null,null,null,null));} %>
    <% } %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewUserGroups",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
	<% {out.write(localizeISText("PreviewPanelError.AtLeastOneCustomerSegmentNeedsToBeSelected","",null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewCustomerSegmentBOs",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",18,e);}if (_boolean_result) { %>
	<% {out.write(localizeISText("PreviewPanelError.AtLeastOneCustomerSegmentNeedsToBeSelected","",null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewDisplayDevice",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
	<% {out.write(localizeISText("PreviewPanelError.TheDisplaySizeWidthOrHeightIsNotCorrect","",null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewFormParameter:ID"),null).equals(context.getFormattedValue("PreviewTargetURL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
	 <% {out.write(localizeISText("PreviewPanelError.PleaseWaitUntilTheDesignViewHasFinished","",null,null,null,null,null,null,null,null,null,null,null));} %>
<% } else { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)(existsTemplate(context.getFormattedValue(context.getFormattedValue("preview/error/",null) + context.getFormattedValue(getObject("previewFormParameter:ID"),null),null)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
		<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(context.getFormattedValue("preview/error/",null) + context.getFormattedValue(getObject("previewFormParameter:ID"),null),null), null, "26");} %>
	<% } else { %>
		<% {out.write(localizeISText("PreviewPanelError.ParameterIsInvalid",null,null,encodeString(context.getFormattedValue(getObject("previewFormParameter:ID"),null)),null,null,null,null,null,null,null,null,null));} %>
	<% } %> 
<% }}}}}}}} %> 
<% printFooter(out); %>