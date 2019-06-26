<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Modules", null, "2");} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("FileHandled"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("File:Extension"),null).equals(context.getFormattedValue(replace(context.getFormattedValue(getObject("File:Extension"),null),(String)("(jpg|jpeg|png|gif|svg)"),(String)("000")),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><% {Object temp_obj = ((( ((Number) new Double(1)).doubleValue() ==((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE)); getPipelineDictionary().put("FileHandled", temp_obj);} %><% {Object temp_obj = (replace(context.getFormattedValue(getObject("File:ContentDescriptor"),null),(String)(context.getFormattedValue(".",null) + context.getFormattedValue(getObject("File:Extension"),null) + context.getFormattedValue("$",null)),(String)(""))); getPipelineDictionary().put("FileContentDescriptorWhithoutFileExtension", temp_obj);} %><% {Object temp_obj = (getObject("TargetApplicationBO:ApplicationType:NamedObject(\"MediaAssetsImageFile.isml/Image\")")); getPipelineDictionary().put("MediaAssetsImageFileConfiguration", temp_obj);} %><div class="component-tile-container"
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("MediaAssetsImageFileConfiguration"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
draggable="true"
data-component-type="<% {String value = null;try{value=context.getFormattedValue(getObject("MediaAssetsImageFileConfiguration:PageletDefinition"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>"
data-component-name="<% {String value = null;try{value=context.getFormattedValue(getObject("MediaAssetsImageFileConfiguration:PageletName(File:Name)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {14}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>"
data-component-config="<% {String value = null;try{value=context.getFormattedValue(getObject("MediaAssetsImageFileConfiguration:PageletConfiguration(File:ContentDescriptor,FileContentDescriptorWhithoutFileExtension,File:Extension)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value,"json");out.write(value);} %>"
<% } %>
>
<div class="component-tile file-tile">
<div class="component-tile-img">
<img src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" draggable="false">
</div>
<div class="component-tile-title"><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></div>
</div>
<div class="component-tile-info"></div>
<div class="tooltip" style="display:none;">
<p>
<h6><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></h6>
<div><% processOpenTag(response, pageContext, "imageproperties", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("LastModified","LastModified"),
new TagParameter("ImageFile",getObject("File")),
new TagParameter("Size","Size"),
new TagParameter("Height","Height"),
new TagParameter("ERROR","ERROR"),
new TagParameter("Width","Width")}, 31); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((disableErrorMessages().isDefined(getObject("ERROR"))))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><% processOpenTag(response, pageContext, "filesizestring", new TagParameter[] {
new TagParameter("FileSizeString","FileSizeString"),
new TagParameter("value",getObject("Size")),
new TagParameter("ReturnOnly","true")}, 41); %><% {out.write(localizeISText("imagefile.information",null,null,getObject("Width"),getObject("Height"),getObject("FileSizeString"),context.getFormattedValue(getObject("LastModified"),new Integer(DATE_TIME_INPUT)),null,null,null,null,null,null));} %><% } %></div>
</p>
</div>
</div><% } %><% } %><% printFooter(out); %>