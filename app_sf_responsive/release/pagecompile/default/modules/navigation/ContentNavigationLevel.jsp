<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("navigationItem:Active"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = (context.getFormattedValue(getObject("css"),null) + context.getFormattedValue("page-navigation-active",null)); getPipelineDictionary().put("css", temp_obj);} %><% } %><li<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("css"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %> class="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("css"),null)),null)%>"<% } %>>
<a <% processOpenTag(response, pageContext, "href", new TagParameter[] {
new TagParameter("link",getObject("navigationItem:Link"))}, 16); %> title="<% {String value = null;try{value=context.getFormattedValue(getObject("navigationItem:Desc"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" > <% {String value = null;try{value=context.getFormattedValue(getObject("navigationItem:Title"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {16}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> </a><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("navigationItem:Sub") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",17,e);}if (_boolean_result) { %><ul class="page-navigation-<% {String value = null;try{value=context.getFormattedValue(getObject("navigationDepth"),"#0.#",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"><% while (loop("navigationItem:Sub:Iterator","SubItem",null)) { %><% processOpenTag(response, pageContext, "contentnavigationlevel", new TagParameter[] {
new TagParameter("navigationDepth",(new Double( ((Number) getObject("navigationDepth")).doubleValue() +((Number) new Double(1)).doubleValue()))),
new TagParameter("navigationItem",getObject("SubItem"))}, 20); %><% } %></ul><% } %></li><% printFooter(out); %>