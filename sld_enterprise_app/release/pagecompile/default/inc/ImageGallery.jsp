<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("filesiterator") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><table border="0" cellpadding="0" cellspacing="0" width="100%" class = "w e s">
<tr>
<td class="imageGallery"><% while (loop("filesiterator","File",null)) { %><div class="imageThumb">
<div class="thumbImage"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("thumbnailtemplate")))).booleanValue() && ((Boolean) existsTemplate(context.getFormattedValue(getObject("thumbnailtemplate"),null))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("thumbnailtemplate"),null), null, "11");} %><% } else { %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %><img border="0" alt="" src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductImage-GenerateThumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null)).addURLParameter(context.getFormattedValue("RepositoryDomainId",null),context.getFormattedValue(getObject("UnitDomain:DomainID"),null)).addURLParameter(context.getFormattedValue("Width",null),context.getFormattedValue("200",null)).addURLParameter(context.getFormattedValue("Height",null),context.getFormattedValue("100",null))),null)%>" /><% } else { %><img border="0" alt="" src="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>" /><% } %><% } %></div><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("inputtype"),null).equals(context.getFormattedValue("none",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",20,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("inputtype"),null).equals(context.getFormattedValue("radio",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("File:ContentDescriptor"),null).equals(context.getFormattedValue(getObject("ContentDescriptor"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",22,e);}if (_boolean_result) { %><input type="radio" name="Image" id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("File:ContentDescriptor"),null)),null)%>" checked="checked" /><% } else { %><input type="radio" name="Image" id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("File:ContentDescriptor"),null)),null)%>" /><% } %><label class="label" for="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:FullName"),null)),null)%>">
<a class="table_detail_link wrapword" target="_blank"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",29,e);}if (_boolean_result) { %>
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>"
<% } else { %>
href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</label><% } else { %><input type="hidden" name="ObjectUUID" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" /><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Clipboard:contains(File:FullName)"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><input type="checkbox" name="SelectedObjectUUID" id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" checked="checked" /><% } else { %><input type="checkbox" name="SelectedObjectUUID" id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" value="<%=context.getFormattedValue(stringToHtml(context.getFormattedValue(getObject("File:FullName"),null)),null)%>" /><% } %><label class="label" for="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("File:FullName"),null)),null)%>">
<a class="table_detail_link wrapword" target="_blank"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",47,e);}if (_boolean_result) { %>
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>"
<% } else { %>
href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
</label><% } %><% } else { %><a class="table_detail_link wrapword" target="_blank"
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("Secure")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("Secure"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",59,e);}if (_boolean_result) { %>
href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductAttachment-OpenFile",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("Locale:LocaleID"),null))).addURLParameter(context.getFormattedValue("DirectoryPath",null),context.getFormattedValue(getObject("DirectoryPath"),null)).addURLParameter(context.getFormattedValue("FileName",null),context.getFormattedValue(getObject("File:FullName"),null))),null)%>"
<% } else { %>
href="<%=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("Locale:LocaleID"),null)),null)%>"
<% } %>
><% {String value = null;try{value=context.getFormattedValue(getObject("File:FullName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {65}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a><% } %></div><% } %></td>
</tr>
</table><% } %><% printFooter(out); %>