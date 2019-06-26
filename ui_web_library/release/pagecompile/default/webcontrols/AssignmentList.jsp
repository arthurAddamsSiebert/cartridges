<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery-ui-1.10.3/jquery-ui.css<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery-ui-1.10.3/themes/base/jquery.ui.theme.css<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery-ui-1.10.3/themes/backoffice/jquery.ui.theme.css<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>jquery/assignment/jquery.assignment.css<% out.print("</waplacement>"); %>

<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery.js<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-migrate-1.2.1.js<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery-ui-1.10.3.js<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/tmpl-1.1.1/jquery.tmpl.js<% out.print("</waplacement>"); %>
<% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/assignment/jquery.assignment.js<% out.print("</waplacement>"); %>

<% {Object temp_obj = (context.getFormattedValue("#",null) + context.getFormattedValue(getObject("id"),null)); getPipelineDictionary().put("selector", temp_obj);} %>

<% out.print(context.prepareWAPlacement("JSWebControls")); %>
	$.extend($.ui.assignment, {
		locale: {
			addAll:'<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.CountItemsTotal",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {18}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
			removeAll:'<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.PleaseWait",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
			defaultValue:'<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.CannotAddOptionsUnknownDataFormat",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {20}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
			itemsCount:'<%=context.getFormattedValue("#",null)%>{count} items selected',
			itemsTotal:'<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.CountItemsTotal1",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
			itemsDefault: '<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.SorryThereSeemedToBeAProblemWithTheRemoteCallType",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
			busy:'<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.TextInputFieldEditor.PropertygroupsEditorTextinputfieldJs",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {24}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>',
			errorDataFormat:"<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.CannotAddOptionsUnknownDataFormat1",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
			errorInsertNode:"<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.ThereWasAProblemTryingToAddTheItem",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
			errorReadonly:"<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.PropertyEditor.PropertygroupsUtilsJs",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>",
			errorRequest:"<% {String value = null;try{value=context.getFormattedValue(localizeText(context.getFormattedValue("webcontrols.AssignmentList.SorryThereSeemedToBeAProblemWithTheRemoteCallStatus",null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
		}
	});


	$( "<% {String value = null;try{value=context.getFormattedValue(getObject("selector"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>" ).assignment(
		{
			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("searchable")))).booleanValue() && ((Boolean) ((((context.getFormattedValue(getObject("searchable"),null).equals(context.getFormattedValue("false",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %>
				searchable: false
			<% } else { %>
				searchable: true
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("animated"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %>
				,
				animated: "<% {String value = null;try{value=context.getFormattedValue(getObject("animated"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("dividerlocation"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",44,e);}if (_boolean_result) { %>
				,
				dividerLocation: <% {String value = null;try{value=context.getFormattedValue(getObject("dividerlocation"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {46}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("droppable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %>
				,
				droppable: "<% {String value = null;try{value=context.getFormattedValue(getObject("droppable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {50}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("hide"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",52,e);}if (_boolean_result) { %>
				,
				hide: "<% {String value = null;try{value=context.getFormattedValue(getObject("hide"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("remoteurl"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",56,e);}if (_boolean_result) { %>
				,
				remoteurl: "<% {String value = null;try{value=context.getFormattedValue(getObject("remoteurl"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("searchdelay"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %>
				,
				searchDelay: <% {String value = null;try{value=context.getFormattedValue(getObject("searchdelay"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {62}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("show"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",64,e);}if (_boolean_result) { %>
				,
				show: "<% {String value = null;try{value=context.getFormattedValue(getObject("show"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {66}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("sortable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",68,e);}if (_boolean_result) { %>
				,
				sortable: "<% {String value = null;try{value=context.getFormattedValue(getObject("sortable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {70}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("defaultname"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",72,e);}if (_boolean_result) { %>
				,
				defaultName: "<% {String value = null;try{value=context.getFormattedValue(getObject("defaultname"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {74}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("itemlabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %>
				,
				itemLabel: "<% {String value = null;try{value=context.getFormattedValue(getObject("itemlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {78}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("availablelabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",80,e);}if (_boolean_result) { %>
				,
				availableLabel: "<% {String value = null;try{value=context.getFormattedValue(getObject("availablelabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {82}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
			<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("selectedlabel"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",84,e);}if (_boolean_result) { %>
				,
				selectedLabel: "<% {String value = null;try{value=context.getFormattedValue(getObject("selectedlabel"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {86}",e);}if (value==null) value="";value = encodeString(value,"javascript");out.write(value);} %>"
			<% } %>
		}
	);
<% out.print("</waplacement>"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("uitemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",92,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("uitemplate"),null), null, "93");} %>
<% } %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("scripttemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",96,e);}if (_boolean_result) { %>
	<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("scripttemplate"),null), null, "97");} %>
<% } %>
<% printFooter(out); %>