<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<!-- common shipping discount errors -->
<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:TargetAffected:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:TargetAffected:Message"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",6,e);}if (_boolean_result) { %>
		<br/>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("ActionForm:TargetAffected:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> 
	<% } %>
	<% while (loop("ActionForm:TargetAffected:Errors","Error",null)) { %>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
	<% } %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:AffectedItemsNumber:Message"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",16,e);}if (_boolean_result) { %>
		<br/>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("ActionForm:AffectedItemsNumber:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> 
	<% } %>
	<% while (loop("ActionForm:AffectedItemsNumber:Errors","Error",null)) { %>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
	<% } %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:ShippingDiscountConsistency:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",25,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:ShippingDiscountConsistency:Message"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",26,e);}if (_boolean_result) { %>
		<br/>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("ActionForm:ShippingDiscountConsistency:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> 
	<% } %>
	<% while (loop("ActionForm:ShippingDiscountConsistency:Errors","Error",null)) { %>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
	<% } %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:ShippingMethodsConsitency:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:ShippingMethodsConsitency:Message"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",36,e);}if (_boolean_result) { %>
		<br/>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("ActionForm:ShippingMethodsConsitency:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> 
	<% } %>
	<% while (loop("ActionForm:ShippingMethodsConsitency:Errors","Error",null)) { %>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
	<% } %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("ActionForm:ShippingRegionsConsistency:Invalid"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %>
	<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ActionForm:ShippingRegionsConsistency:Message"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",46,e);}if (_boolean_result) { %>
		<br/>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("ActionForm:ShippingRegionsConsistency:Message"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %> 
	<% } %>
	<% while (loop("ActionForm:ShippingRegionsConsistency:Errors","Error",null)) { %>
		<% {out.write(localizeISText(context.getFormattedValue(getObject("Error"),null),"",null,null,null,null,null,null,null,null,null,null,null));} %>
	<% } %>
<% } %>

<!-- EO common shipping discount errors -->							
<% printFooter(out); %>