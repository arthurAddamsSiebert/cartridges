<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<table border="0" cellpadding="0" cellspacing="0" width="100%"> 
    <tr>
        <td class="table_detail w e s">
			<% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("targetpageletviewpipelineparams:PageletType"),null).equals(context.getFormattedValue("Page",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("PageletExportEmptyList.ThereAreCurrentlyNoPagesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("targetpageletviewpipelineparams:PageletType"),null).equals(context.getFormattedValue("Include",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("PageletExportEmptyList.ThereAreCurrentlyNoIncludesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("targetpageletviewpipelineparams:PageletType"),null).equals(context.getFormattedValue("PageVariantTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",9,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("PageletExportEmptyList.ThereAreCurrentlyNoPageTemplatesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("targetpageletviewpipelineparams:PageletType"),null).equals(context.getFormattedValue("ComponentTemplate",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",11,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("PageletExportEmptyList.ThereAreCurrentlyNoComponentTemplatesToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("targetpageletviewpipelineparams:PageletType"),null).equals(context.getFormattedValue("PageVariant",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",13,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("PageletExportEmptyList.ThereAreCurrentlyNoPageVariantsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("targetpageletviewpipelineparams:PageletType"),null).equals(context.getFormattedValue("Component",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %>
				<% {out.write(localizeISText("PageletExportEmptyList.ThereAreCurrentlyNoComponentsToShowHere.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>
			<% }}}}}} %>
		</td>
	</tr>
</table>
<% printFooter(out); %>