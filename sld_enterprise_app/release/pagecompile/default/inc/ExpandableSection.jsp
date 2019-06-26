<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>

<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("expandableSectionCounter")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	<script type="text/javascript">
	function expandCollapseSection(sectionNum, expandedClassName, collapsedClassName){
		if(sectionNum){
			var expandSection = document.getElementById('expSect_'+sectionNum);
			if(expandSection){
				var headerTextComp = document.getElementById('headertext_'+sectionNum);
				if( expandSection.style.display == 'none' ){
					headerTextComp.className = expandedClassName;
					expandSection.style.display = 'inline';
				}else{
					headerTextComp.className = collapsedClassName;
					expandSection.style.display = 'none';
				}
			}
		}
	}</script>
<% } %>

<% {
/* Initializes the module:
	NOTE: it uses a counter for the module includes (stored in the pipelineDictionary under "expandableSectionCounter" key), 
	for two reasons:
	 - to ensure that the javaScript is initialized just once (if the counter has not yet been defined);
	 - and that if more than one expandableSections are used that expand/collapse events will process the correct section. 
	   This is done by adding the counter's value as sufix to the <a> and <div> 'id' attributes, 
	   and then supplying the value as js-function argument, so the correct elements' styles are changed. 
*/
	Integer expandableSectionCounter = getObject("expandableSectionCounter") != null ? (Integer)getObject("expandableSectionCounter") : 0 ;
	expandableSectionCounter++;
	getPipelineDictionary().put("expandableSectionCounter", expandableSectionCounter);
	
	/* Since this module is not strict, and to allow nested usage of expandableSections, 
	the module's attributes are assigned to local attribs to ensure they won't be lost!
	*/
	String contentTemplateAttr = (String) getObject("contenttemplate");
	String headerTextAttr = (String) getObject("headertext");
	String sectionExpandedAttr = (String) getObject("sectionexpanded");
	String headerClassnameAttr = (String) (getObject("headerclassname") != null ? getObject("headerclassname") : "table_title n e w s" );
	
	boolean isSectionExpanded = Boolean.valueOf(sectionExpandedAttr);
	String expandedClassName = "table_opened";
	String collapsedClassName = "table_closed";
%>

<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<!-- Header (titleBar) of the section -->
	<tr onclick="expandCollapseSection('<%=expandableSectionCounter%>', '<%=expandedClassName%>', '<%=collapsedClassName%>' )">
		<td class="<%=headerClassnameAttr%>" style="white-space:nowrap">
			<a	id="headertext_<%=expandableSectionCounter%>"
				class="<%=(isSectionExpanded ? expandedClassName : collapsedClassName)%>">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("headertext"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",55,e);}if (_boolean_result) { %>
					<% {String value = null;try{value=context.getFormattedValue(getObject("headertext"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
				<% } %>
			</a>
		</td>
	</tr>

	<!-- Content of the section -->
	<tr>
		<td>
			<div id="expSect_<%=expandableSectionCounter%>" style="<%=(isSectionExpanded ? "display:inline;": "display:none;" ) %>">
				<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("contenttemplate"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",66,e);}if (_boolean_result) { %>
					<% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,context.getFormattedValue(getObject("contenttemplate"),null), null, "67");} %>
				<% } %>
			</div>
		</td>
	</tr>
</table>
<% }%><% printFooter(out); %>