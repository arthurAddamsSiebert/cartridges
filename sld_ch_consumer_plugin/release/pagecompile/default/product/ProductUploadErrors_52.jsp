<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("SizeLimitExceeded",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",1,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUploadErrors_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUploadErrors_52.TheSizeOfTheSelectedFileExceedsTheAllowedSize.message",null)))}, 2); %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("FileUploadError",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUploadErrors_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUploadErrors_52.TheSelectedFileCouldNotBeUploaded.message",null)))}, 4); %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("ErrorCode"),null).equals(context.getFormattedValue("ZeroFileLenght",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUploadErrors_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUploadErrors_52.TheSelectedFileCouldNotBeUploadedBecauseZeroFileLength.message",null)))}, 6); %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Upload")))).booleanValue() && ((Boolean) (((!((Boolean) ((disableErrorMessages().isDefined(getObject("FileNames"))))).booleanValue() || !((Boolean) ((hasLoopElements("FileNames") ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan","4"),
new TagParameter("subject",localizeText(context.getFormattedValue("ProductUploadErrors_52.File.subject",null))),
new TagParameter("type","nse"),
new TagParameter("message",localizeText(context.getFormattedValue("ProductUploadErrors_52.YouHaveNotSelectedAFileToUpload.message",null)))}, 8); %>
<% }}}} %><% printFooter(out); %>