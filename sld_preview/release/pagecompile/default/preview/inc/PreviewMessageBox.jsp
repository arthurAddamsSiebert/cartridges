<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("colspan")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("1"); getPipelineDictionary().put("colspan", temp_obj);} %>
<% } %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("class")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
	<% {Object temp_obj = ("w e s"); getPipelineDictionary().put("MessageBoxClass", temp_obj);} %>
<% } else { %>
	<% {Object temp_obj = (getObject("class")); getPipelineDictionary().put("MessageBoxClass", temp_obj);} %>
<% } %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("itemType"),null).equals(context.getFormattedValue("promotion",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedPromotionStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 13); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_AND_END_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedPromotionStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 15); %>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_TRIGGERED_FROM_MASTER_CHANNEL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingPromotionTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 17); %>
    <% }}} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("itemType"),null).equals(context.getFormattedValue("ABTest",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",19,e);}if (_boolean_result) { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedABTestStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 21); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_AND_END_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedABTestStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 23); %>
	<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_TRIGGERED_FROM_MASTER_CHANNEL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %>
	<% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingABTestTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 25); %>
    <% }}} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("itemType"),null).equals(context.getFormattedValue("product",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",27,e);}if (_boolean_result) { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",28,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedProductStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 29); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_AND_END_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedProductStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 31); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_TRIGGERED_FROM_MASTER_CHANNEL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingProductTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 33); %>
    <% }}} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("itemType"),null).equals(context.getFormattedValue("category",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedCategoryStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 37); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_AND_END_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",38,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedCategoryStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 39); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_TRIGGERED_FROM_MASTER_CHANNEL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingCategoryTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 41); %>
    <% }}} %>
<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("itemType"),null).equals(context.getFormattedValue("campaign",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",43,e);}if (_boolean_result) { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedCampaignStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 45); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_AND_END_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedCampaignStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 47); %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_TRIGGERED_FROM_MASTER_CHANNEL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
    <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingCampaignTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 49); %>
    <% }}} %>
<% } else { %>
    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("component",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",53,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedComponentStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 54); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("pagetemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedPageTemplateStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 56); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("componenttemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",57,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedComponentTemplateStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 58); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("pagevariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedPageVariantStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 60); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("template",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",61,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedTemplateStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 62); %>
        <% } else { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedCmsElementStartsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 64); %>
        <% }}}}} %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_START_AND_END_IN_PAST_BUT_PASTPREVIEW_DISABLED",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("component",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",67,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedComponentStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 68); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("pagetemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",69,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedPageTemplateStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 70); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("componenttemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",71,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedComponentTemplateStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 72); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("pagevariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",73,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedPageVariantStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 74); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("template",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",75,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedTemplateStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 76); %>
        <% } else { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.TheSelectedCmsElementStartsAndEndsInThePast.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 78); %>
        <% }}}}} %>
    <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("previewMessage"),null).equals(context.getFormattedValue("PREVIEW_TRIGGERED_FROM_MASTER_CHANNEL",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("component",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",81,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingComponentTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 82); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("pagetemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",83,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingPageTemplateTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 84); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("componenttemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",85,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingComponentTemplateTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 86); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("pagevariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",87,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingPageVariantTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 88); %>
        <% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("cmsItemType"),null).equals(context.getFormattedValue("template",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",89,e);}if (_boolean_result) { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingTemplateTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 90); %>
        <% } else { %>
            <% processOpenTag(response, pageContext, "messagebox", new TagParameter[] {
new TagParameter("colspan",getObject("colspan")),
new TagParameter("subject","text"),
new TagParameter("cancelbtnname","cancelPreview"),
new TagParameter("okbtnname","preview"),
new TagParameter("type","mdc"),
new TagParameter("message",localizeText(context.getFormattedValue("PreviewMessageBox.ForPreviewingCmsElementTheDefaultPreviewChannelIsUsed.message",null))),
new TagParameter("class",getObject("MessageBoxClass"))}, 92); %>
        <% }}}}} %>
    <% }}} %>
<% }}}}} %>
<% printFooter(out); %>