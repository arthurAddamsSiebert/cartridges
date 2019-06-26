<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page
	import="com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%>

<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "5");} %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"content/Modules", null, "6");} %><script type="text/javascript">
function includeCheckboxClicked(checkboxId, sectionId) 
{
var visibility = null;
if (document.getElementById(checkboxId).checked)
{
showSitemapConfigurationSection(sectionId);
}
else 
{
hideSitemapConfigurationSection(sectionId);
}
}
function showSitemapConfigurationSection(elementId)
{
document.getElementById(elementId).style.display = "";
}
function hideSitemapConfigurationSection(elementId)
{
document.getElementById(elementId).style.display = "none";
}
</script> 
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SiteMapWebForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",33,e);}if (_boolean_result) { %><% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm:IncludeProducts:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeProductsChecked", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SiteMapWebForm_IncludeProducts")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SiteMapWebForm_IncludeProducts"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><!-- SiteMapWebForm_IncludeProducts can be defined even if the form has not been submitted, for example after clicking 'Switch to Advanced Search' link --><% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm_IncludeProducts"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeProductsChecked", temp_obj);} %><% } else { %><% {Object temp_obj = (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:IncludeProducts")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("Syndication:IncludeProducts")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeProductsChecked", temp_obj);} %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SiteMapWebForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",42,e);}if (_boolean_result) { %><% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm:IncludeCategories:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeCategoriesChecked", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SiteMapWebForm_IncludeCategories")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SiteMapWebForm_IncludeCategories"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %><% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm_IncludeCategories"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeCategoriesChecked", temp_obj);} %><% } else { %><% {Object temp_obj = (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:IncludeCategories")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("Syndication:IncludeCategories")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeCategoriesChecked", temp_obj);} %><% }} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("SiteMapWebForm:Submitted"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm:IncludeStaticPages:Value"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeStaticPagesChecked", temp_obj);} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("SiteMapWebForm_IncludeStaticPages")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("SiteMapWebForm_IncludeStaticPages"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %><% {Object temp_obj = ((((context.getFormattedValue(getObject("SiteMapWebForm_IncludeStaticPages"),null).equals(context.getFormattedValue("on",null)))) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeStaticPagesChecked", temp_obj);} %><% } else { %><% {Object temp_obj = (((((Boolean) ((((Boolean) (disableErrorMessages().isDefined(getObject("Syndication:IncludeStaticPages")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue() || ((Boolean) getObject("Syndication:IncludeStaticPages")).booleanValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("IncludeStaticPagesChecked", temp_obj);} %><% }} %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","Syndication"),
new TagParameter("value6",getObject("ImageViews")),
new TagParameter("key2","SiteMapWebForm"),
new TagParameter("value5",getObject("SiteMapImagesForm")),
new TagParameter("value8",getObject("FormSubmitted")),
new TagParameter("key0","SyndicationUUID"),
new TagParameter("value7",getObject("ImageTypeViewPairs")),
new TagParameter("value2",getObject("SiteMapWebForm")),
new TagParameter("key5","SiteMapImagesForm"),
new TagParameter("value1",getObject("Syndication")),
new TagParameter("key6","ImageViews"),
new TagParameter("key3","Locales"),
new TagParameter("value4",getObject("Currencies")),
new TagParameter("value3",getObject("Locales")),
new TagParameter("key4","Currencies"),
new TagParameter("key7","ImageTypeViewPairs"),
new TagParameter("key8","FormSubmitted"),
new TagParameter("mapname","TargetPipelineParameters"),
new TagParameter("value0",getObject("SyndicationUUID"))}, 58); %><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","ImagePosition"),
new TagParameter("value6",getObject("IncludeProductsChecked")),
new TagParameter("key2","DuplicatePair"),
new TagParameter("value5",getObject("Clipboard")),
new TagParameter("value8",getObject("IncludeStaticPagesChecked")),
new TagParameter("key0","DeleteConfirmation"),
new TagParameter("value7",getObject("IncludeCategoriesChecked")),
new TagParameter("value2",getObject("DuplicatePair")),
new TagParameter("key5","Clipboard"),
new TagParameter("value1",getObject("ImagePosition")),
new TagParameter("key6","IncludeProductsChecked"),
new TagParameter("key3","MissingImageType"),
new TagParameter("value4",getObject("NoSelectedImagesError")),
new TagParameter("value3",getObject("MissingImageType")),
new TagParameter("key4","NoSelectedImagesError"),
new TagParameter("key9","URLRewriteEnabled"),
new TagParameter("key7","IncludeCategoriesChecked"),
new TagParameter("key8","IncludeStaticPagesChecked"),
new TagParameter("mapname","TargetPipelineParameters"),
new TagParameter("value9",getObject("URLRewriteEnabled")),
new TagParameter("mode","add"),
new TagParameter("value0",getObject("DeleteConfirmation"))}, 69); %><% {Object temp_obj = ("true"); getPipelineDictionary().put("DisableNonPublicPagelets", temp_obj);} %><% processOpenTag(response, pageContext, "pageletentrypointsearch", new TagParameter[] {
new TagParameter("disablesharedpagelets","false"),
new TagParameter("targetpageletviewpipelineparams",getObject("TargetPipelineParameters")),
new TagParameter("start",getObject("PageletSearchStartFlag")),
new TagParameter("hidecopybutton","true"),
new TagParameter("disableselection","false"),
new TagParameter("extendedheadingtemplate","syndication/SitemapConfiguration.isml"),
new TagParameter("submitbuttonstemplate","syndication/SitemapConfigurationButtons.isml"),
new TagParameter("hidelockbutton","true"),
new TagParameter("page","true"),
new TagParameter("pageletclipboard",getObject("PageletClipboard")),
new TagParameter("targetpageletviewpipeline","ViewChannelOutboundSyndicationSitemapConfiguration-SelectPageletEntryPoints"),
new TagParameter("notfoundtemplate","content/search/inc/EmptyPageletEntryPointSearchResult"),
new TagParameter("uniqueid","SitemapStaticPages")}, 84); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("IncludeStaticPagesChecked"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",100,e);}if (_boolean_result) { %><script type="text/javascript">
hideSitemapConfigurationSection('staticPagesPropertiesSection');
hideSitemapConfigurationSection('pageletEntryPointList');
hideSitemapConfigurationSection('pageletEntryPointSearchMask');
hideSitemapConfigurationSection('pageletEntryPointPagingBar');
</script><% } %><% {Object temp_obj = ("off"); getPipelineDictionary().put("IncludeProductsCheckedJS", temp_obj);} %><% {Object temp_obj = ("off"); getPipelineDictionary().put("IncludeCategoriesCheckedJS", temp_obj);} %><% {Object temp_obj = ("off"); getPipelineDictionary().put("IncludeStaticPagesCheckedJS", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncludeProductsChecked"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",113,e);}if (_boolean_result) { %><% {Object temp_obj = ("on"); getPipelineDictionary().put("IncludeProductsCheckedJS", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncludeCategoriesChecked"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",116,e);}if (_boolean_result) { %><% {Object temp_obj = ("on"); getPipelineDictionary().put("IncludeCategoriesCheckedJS", temp_obj);} %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("IncludeStaticPagesChecked"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",119,e);}if (_boolean_result) { %><% {Object temp_obj = ("on"); getPipelineDictionary().put("IncludeStaticPagesCheckedJS", temp_obj);} %><% } %><script type="text/javascript">
$("a[class=switch_link]").each(function() {
var href = this.href;
if (href.indexOf('?') != -1) {
href = href + '&SiteMapWebForm_IncludeProducts=<% {String value = null;try{value=context.getFormattedValue(getObject("IncludeProductsCheckedJS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&SiteMapWebForm_IncludeCategories=<% {String value = null;try{value=context.getFormattedValue(getObject("IncludeCategoriesCheckedJS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&SiteMapWebForm_IncludeStaticPages=<% {String value = null;try{value=context.getFormattedValue(getObject("IncludeStaticPagesCheckedJS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';
}
else {
href = href + '?SiteMapWebForm_IncludeProducts=<% {String value = null;try{value=context.getFormattedValue(getObject("IncludeProductsCheckedJS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&SiteMapWebForm_IncludeCategories=<% {String value = null;try{value=context.getFormattedValue(getObject("IncludeCategoriesCheckedJS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&SiteMapWebForm_IncludeStaticPages=<% {String value = null;try{value=context.getFormattedValue(getObject("IncludeStaticPagesCheckedJS"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {131}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>';
}
$(this).attr('href', href);
});
</script><% printFooter(out); %>