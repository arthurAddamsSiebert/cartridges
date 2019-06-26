<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<% processOpenTag(response, pageContext, "pageletmodelutils", new TagParameter[] {
new TagParameter("PageletModelUtils","PageletModelUtils")}, 3); %>
<% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Pagelet:hasParent"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %>
	 <% processOpenTag(response, pageContext, "pageletinheritanceparenttree", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("depthCounter",(new Double( ((Number) getObject("depthCounter")).doubleValue() -((Number) new Double(1)).doubleValue()))),
new TagParameter("ContentRepositoryUUID",getObject("ContentRepositoryUUID")),
new TagParameter("Pagelet",getObject("Pagelet:Parent"))}, 5); %>
<% } else { %>
	<tr>
        <td>
	        <table border="0" cellpadding="0" cellspacing="0" width="100%">
	            <tr>
	                <td nowrap="nowrap" class="table_detail"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(Pagelet:PageletDefinition,Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {11}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
	            </tr>
	        </table>
        </td>
	</tr>
<% } %>
<tr <% if ((Double)getObject("depthCounter")%2 == 1.00) {%>class="odd" <%}%>>
    <td>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="<% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) ((new Double( ((Number) ((new Double( ((Number) getObject("depthCounter")).doubleValue() -((Number) new Double(1)).doubleValue())))).doubleValue() *((Number) new Double(22)).doubleValue())))).doubleValue() +((Number) new Double(1)).doubleValue())),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>px">&nbsp;</td>
                <td style="width:22px;background: url(<%=context.getFormattedValue(context.webRoot(),null)%>/images/cb_L.gif) repeat-y center;"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="22" alt="" border="0" /></td>		
                <td nowrap="nowrap" class="table_detail">
                    <a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPagelet-View",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("SelectedTab",null),context.getFormattedValue("Content",null))).addURLParameter(context.getFormattedValue("PageletUUID",null),context.getFormattedValue(getObject("Pagelet:UUID"),null)).addURLParameter(context.getFormattedValue("ContentRepositoryUUID",null),context.getFormattedValue(getObject("ContentRepositoryUUID"),null)).addURLParameter(context.getFormattedValue("removeLastBreadCrumb",null),context.getFormattedValue("true",null))),null)%>" class="table_detail_link2">
				        <% processOpenTag(response, pageContext, "pageletdisplayname", new TagParameter[] {
new TagParameter("Locale",getObject("Locale")),
new TagParameter("Pagelet",getObject("Pagelet"))}, 25); %>
                    </a>
                </td>
            </tr>
        </table>
    </td>
</tr>		


<% printFooter(out); %>