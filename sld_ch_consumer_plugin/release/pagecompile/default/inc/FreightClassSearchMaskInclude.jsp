<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername1"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametername1" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametervalue1" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue1"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {2}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername2"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametername2" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametervalue2" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue2"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername3"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametername3" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametervalue3" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue3"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {4}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername4"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametername4" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametervalue4" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue4"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {5}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("parametername5"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %><input type="hidden" name="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametername5" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametername5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><input type="hidden" name="SearchPipelineParametervalue5" value="<% {String value = null;try{value=context.getFormattedValue(getObject("parametervalue5"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {6}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/><% } %><input type="hidden" name="SearchType" value="parametric"/>
<input type="hidden" name="SearchPipeline" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pipeline"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {9}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<table cellpadding="2" width="100%">
<colgroup>
<col width="12%"/>
<col width="38%"/>
<col width="50%"/>
</colgroup><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/FreightClassParametricSearchMask", null, "17");} %></table><% printFooter(out); %>