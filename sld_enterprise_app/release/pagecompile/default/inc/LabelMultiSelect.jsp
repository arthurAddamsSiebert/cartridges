<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %> 
<link href="<%=context.getFormattedValue(context.webRoot(),null)%>/multiselect/select2.css" rel="stylesheet" >
<!--requires jquery 1.9.0 and above 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.js" type="text/javascript"></script>
-->
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/multiselect/select2.js"></script>
<!--
<script src="<%=context.getFormattedValue(context.webRoot(),null)%>/js/isselect2.js"></script>
--><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("isLabelEnabled")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("isLabelEnabled"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %><script>
$(document).ready(function(){
$("#labelselect").prop('disabled', true);
})
</script><% } %><!-- JS widget customization file path-->
<script src="<%=context.getFormattedValue(context.webRoot(),null)%><% {String value = null;try{value=context.getFormattedValue(getObject("jscustomization"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"></script>
<div id="labelselect" class="select2-container select2-container-multi" style="width:300px;" > 
<script> 
var assignedtags=[];
var ajaxURL="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("link"),null),(String)("javascript")),null)%>";
<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignedLabels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %> 
<% while (loop("AssignedLabels","label",null)) { %> 
assignedtags.push("<% {String value = null;try{value=context.getFormattedValue(getObject("label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"); 
<% } %> 
<% } %></script> 
<input type="hidden" name=assignedlabels id="assignedlabels">
<input type="hidden" name=unassignedlabels id="unassignedlabels"> 
</div>
<div id="divCheckbox" style="display: none;"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("AssignedLabels"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %> 
<% while (loop("AssignedLabels","label",null)) { %> 
<input
type="hidden"
id="<% {String value = null;try{value=context.getFormattedValue(getObject("label:UUID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
name="<% {String value = null;try{value=context.getFormattedValue(getObject("label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
value="<% {String value = null;try{value=context.getFormattedValue(getObject("label:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"
disabled="disabled"
/><% } %><% } %></div><% printFooter(out); %>