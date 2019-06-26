<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%%><%@ page session="false"%><%setEncodingType("text/xml"); %>
<% {Object temp_obj = (getObject("organization:Profile:organization:Profile:AddressBook:DefaultAddressBook:Defaultorganization:Profile:AddressBook:DefaultAddress")); getPipelineDictionary().put("Address", temp_obj);} %>
<ADDRESS type="<% {String value = null;try{value=context.getFormattedValue(getObject("type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {3}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:CompanyName"),
new TagParameter("optional","true"),
new TagParameter("element","NAME")}, 4); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:FirstName,organization:Profile:AddressBook:DefaultAddress:LastName"),
new TagParameter("optional","true"),
new TagParameter("element","NAME2")}, 5); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:Street"),
new TagParameter("optional","true"),
new TagParameter("element","STREET")}, 6); %>	
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","20"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:PostalCode"),
new TagParameter("optional","true"),
new TagParameter("element","ZIP")}, 7); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","20"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:PostBox"),
new TagParameter("optional","true"),
new TagParameter("element","BOXNO")}, 8); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:City"),
new TagParameter("optional","true"),
new TagParameter("element","CITY")}, 9); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:State"),
new TagParameter("optional","true"),
new TagParameter("element","STATE")}, 10); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","50"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:Country"),
new TagParameter("optional","true"),
new TagParameter("element","COUNTRY")}, 11); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","30"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:PhoneBusiness"),
new TagParameter("optional","true"),
new TagParameter("element","PHONE")}, 12); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","30"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:Fax"),
new TagParameter("optional","true"),
new TagParameter("element","FAX")}, 13); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","100"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:EMail"),
new TagParameter("optional","true"),
new TagParameter("element","EMAIL")}, 14); %>
	<% processOpenTag(response, pageContext, "writeelement", new TagParameter[] {
new TagParameter("size","100"),
new TagParameter("objectpath","organization:Profile:AddressBook:DefaultAddress:HomePage"),
new TagParameter("optional","true"),
new TagParameter("element","URL")}, 15); %>
</ADDRESS><% printFooter(out); %>