<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><select name="CMS_SELECTED_APP" id="<%=context.getFormattedValue(getObject("SelectBoxID"),null)%>" class="<%=context.getFormattedValue(getObject("SelectBoxClass"),null)%>"><% {Object temp_obj = (getObject("PageletModelRepository:ApplicationTypes")); getPipelineDictionary().put("applicationTypes", temp_obj);} %><option value="all"><% {out.write(localizeISText("PageletEntryPointSearchMask.All.option",null,null,null,null,null,null,null,null,null,null,null,null));} %></option><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("applicationTypes"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><% while (loop("applicationTypes","applicationType",null)) { %><option value="<% {String value = null;try{value=context.getFormattedValue(getObject("applicationType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("applicationType:ID"),null).equals(context.getFormattedValue(getObject("SelectedApplicationTypeID"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %>
selected="selected"
<% } %> ><% {String value = null;try{value=context.getFormattedValue(getObject("applicationType:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></option><% } %><% } %></select><% printFooter(out); %>