<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><select class="form-control"
required
id="<% {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("formparameter"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
><% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("selectedsecurityquestion"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><option value="" disabled <% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("formparameter"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %> selected="selected"<% } %>><% {out.write(localizeISText("account.option.select.text","",null,null,null,null,null,null,null,null,null,null,null));} %></option><% } %><% while (loop("SecurityQuestionEnumerationKeyProvider:AllKeys","CurrentKey",null)) { %><% processOpenTag(response, pageContext, "addsecurityquestion", new TagParameter[] {
new TagParameter("selectedtext",getObject("selectedsecurityquestion")),
new TagParameter("text",localizeText(context.getFormattedValue(getObject("CurrentKey"),null))),
new TagParameter("selectedvalue",getObject("selectedsecurityquestionvalue")),
new TagParameter("value",getObject("CurrentKey"))}, 10); %><% } %></select><% printFooter(out); %>