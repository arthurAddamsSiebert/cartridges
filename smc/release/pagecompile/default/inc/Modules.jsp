<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% context.setCustomTagTemplateName("dateinput","inc/DateInput.isml",false,new String[]{"InputFieldName","InputFieldLabel","InputFieldLabelClass","InputFieldEditClass","InputFieldSize","DateObject","DateString","Invalid","Required","Readonly"},null); %>

<% context.setCustomTagTemplateName("timeinput","inc/TimeInput.isml",false,new String[]{"InputFieldName","InputFieldLabel","InputFieldLabelClass","DateObject","TimeString","Invalid","Required","Readonly"},null); %>

<% context.setCustomTagTemplateName("datetimeinput","inc/DateTimeInput.isml",false,new String[]{"DateInputFieldName","DateInputFieldLabel","DateObject","DateString","TimeInputFieldName","TimeInputFieldLabel","TimeString","Invalid","Required","Readonly"},null); %>


<% context.setCustomTagTemplateName("seq-init","inc/isseq-init.isml",false,new String[]{"name","modulo"},null); %>
<% context.setCustomTagTemplateName("seq-next","inc/isseq-next.isml",false,new String[]{"name"},null); %>

<% context.setCustomTagTemplateName("pagingbar","inc/PagingBar.isml",false,new String[]{"pageable","pagenumberprefix","pagesizeprefix","variablepagesize"},null); %>


<% context.setCustomTagTemplateName("messagebox","inc/MessageBox",false,new String[]{"subject","type","message","okbtnname","cancelbtnname","colspan","class","prefixiterator","prefix","iterator","hiddenname","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5"},null); %>


<% context.setCustomTagTemplateName("customattributes","inc/CustomAttributesEditor.isml",false,new String[]{"CustomAttributesIterator","FormName","LocalizableFlag","HideLocaleSelection","Title2","ReadOnly","Header","TitleLine1","TitleLine2"},null); %>

<% context.setCustomTagTemplateName("messagebox","inc/MessageBox.isml",false,new String[]{"subject","type","message","okbtnname","cancelbtnname","colspan","class","prefixiterator","prefix","iterator","hiddenname","parametername1","parametervalue1","parametername2","parametervalue2","parametername3","parametervalue3","parametername4","parametervalue4","parametername5","parametervalue5","parametername6","parametervalue6"},null); %>

<% context.setCustomTagTemplateName("logfilesearchnoresult","inc/LogFileSearchNoResult.isml",false,new String[]{"EmptySearchResultDesc","EmptyRepositoryDesc"},null); %>
<% printFooter(out); %>