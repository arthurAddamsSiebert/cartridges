<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="application/javascript;charset=utf-8" %><%setEncodingType("application/javascript"); %><%@page import="com.intershop.component.user.capi.validation.NameCheckProvider" %><%
		getPipelineDictionary().put("ForbiddenSymbolsRegExpConfigKey", NameCheckProvider.INTERSHOP_FORBIDDENSYMBOLS_NAME_REGEXP);
		getPipelineDictionary().put("DefaultForbiddenSymbolsRegExp", NameCheckProvider.DEFAULT_FORBIDDENSYMBOLS_REG_EXP);
	%><% {Object temp_obj = (getObject("CurrentDomain:Configuration:String(ForbiddenSymbolsRegExpConfigKey)")); getPipelineDictionary().put("ForbiddenSymbolsRegExp", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("ForbiddenSymbolsRegExp")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("DefaultForbiddenSymbolsRegExp")); getPipelineDictionary().put("ForbiddenSymbolsRegExp", temp_obj);} %><% } %><script type="text/javascript">
(function($) {
$.fn.bootstrapValidator.i18n.forbiddensymbols = $.extend($.fn.bootstrapValidator.i18n.forbiddensymbols || {}, {
'default': 'Your input contains forbidden symbols.'
});
$.fn.bootstrapValidator.validators.forbiddensymbols = {
enableByHtml5: function($field) {
return (undefined !== $field.attr('forbiddensymbols'));
},
/**
* Return true if and only if the input value is a valid name
*
* @param {BootstrapValidator} validator Validate plugin instance
* @param {jQuery} $field Field element
* @param {Object} [options]
* @returns {Boolean}
*/
validate: function(validator, $field, options) {
var value = $field.val();
if (value === '') {
return true;
}
var forbiddenSymbolsRegExp = /<% {String value = null;try{value=context.getFormattedValue(getObject("ForbiddenSymbolsRegExp"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {37}",e);}if (value==null) value="";out.write(value);} %>/;
return forbiddenSymbolsRegExp.test(value);
}
};
}(window.jQuery));
</script><% printFooter(out); %>