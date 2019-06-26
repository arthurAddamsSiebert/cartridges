<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%setEncodingType("text/xml"); %>
<?is-template class="<%=getClass().getName()%>" credits="Copyright (C) 2008 Intershop Communications AG, all rights reserved."?>
<%@page import="
    java.io.PrintWriter,
    java.util.ArrayList,
    java.util.Comparator,
    java.util.Collections,
    java.util.regex.Pattern,

    javax.naming.Binding,
    javax.naming.InitialContext,
    javax.naming.LinkRef,
    javax.naming.NamingEnumeration,
    javax.naming.Context,
    
    org.slf4j.LoggerFactory,
    
    com.intershop.beehive.core.capi.domain.Domain,
    com.intershop.beehive.core.capi.domain.DomainMgr,
    com.intershop.beehive.core.capi.localization.LocaleMgr,
    com.intershop.beehive.core.capi.naming.NamingMgr,
    com.intershop.beehive.core.capi.paging.PageableIterator,
    com.intershop.beehive.core.capi.user.User,
    
    com.intershop.component.foundation.capi.paging.PageablePositionableIterator,    
    com.intershop.component.foundation.capi.security.UserAuthorization,
    com.intershop.component.foundation.capi.security.Authorization
    "
%><%!
    public static class BindingOrder implements Comparator<Binding> {
        public static final BindingOrder INSTANCE = new BindingOrder();
        public int compare(final Binding a, final Binding b) {
            return a.getName().compareTo(b.getName());
        }
    }
    private static String stripSlash(final String name) {    
        if (name == null || !name.endsWith("/")) {
            return name;
        } else {
            return name.substring(0, name.length() - 1);
        }
    }
    private static final Pattern BUNDLE_PATTERN = Pattern.compile("^isfile://(?:[^/]+/){3}branding[-/].*");
%><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"htmleditor/Modules.isml", null, "44");} %>
<%
    final DomainMgr domainManager = NamingMgr.getManager(DomainMgr.class);
    final Domain unitDomain = domainManager.getDomainByUUID(String.valueOf(getObject("OrganizationDomainId")));
    if (unitDomain != null) {
        final Domain siteDomain = unitDomain.isMereUnit() ? unitDomain.getSite() : unitDomain;
        getPipelineDictionary().put("SiteDomain", siteDomain);
    }
    final String startURI;
    try {
        startURI = String.valueOf(getObject("ContextURI"));

        // List bindings at startURI.
        final InitialContext initial = new InitialContext();
        initial.addToEnvironment(Authorization.AUTHORIZATION_ENVIRONMENT_KEY, new UserAuthorization((User)getObject("CurrentUser")));
        final NamingEnumeration<Binding> result = initial.listBindings(startURI);

        // Since directories and files are intermixed without any order, we have no choice but to separate them
        // here. While we're at it, we can sort them as well.
        final ArrayList<Binding> fileList = new ArrayList<Binding>();
        final ArrayList<Binding> subdirList = null == getObject("PageNumber") ? new ArrayList<Binding>(): null;
        while (result.hasMore()) {
            final Binding item = result.next();
            Object o = item.getObject();
            if (o instanceof LinkRef) {
                // Resolve links so that they appear as objects.
                o = initial.lookupLink(startURI + item.getName());
                item.setObject(o);
            } 
            if (o instanceof Context) {
                if (subdirList != null) {
                    subdirList.add(item);
                }
            } else {
                fileList.add(item);
            }
        }
        if (subdirList != null) {
            Collections.sort(subdirList, BindingOrder.INSTANCE);
            getPipelineDictionary().put("Subdirs", PageablePositionableIterator.attach(subdirList));
        } else {
            getPipelineDictionary().remove("Subdirs");
        }
        Collections.sort(fileList, BindingOrder.INSTANCE);
        PageableIterator pageable = PageablePositionableIterator.attach(fileList);
        pageable.setPageSize(val((String)getObject("PageSize")).intValue());
        pageable.setPage(val((String)getObject("PageNumber")).intValue());
        getPipelineDictionary().put("Files", pageable);
    } catch (Exception e1) {
        LoggerFactory.getLogger(getClass()).error("List '" + getObject("ContextURI") + "' failed:", e1);
        %><error><message><%=e1.getMessage()%></message></error><%
        return;
    }
%>
<collection id="<% {String value = null;try{value=context.getFormattedValue(getObject("ContextURI"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageNumber"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("PageNumber"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("PageSize"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",98,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(".",null) + context.getFormattedValue(getObject("PageSize"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {98}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %>">
    <uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContextURI",null),context.getFormattedValue(getObject("ContextURI"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {99}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
    <items>
        <collection>
            
            <title>[..]</title>
        </collection>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Subdirs") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",105,e);}if (_boolean_result) { %>
            <% while (loop("Subdirs","Subdir",null)) { %>
                <%
                    final String name = (String)getObject("Subdir:Name");
                    final String folderUri = startURI + name;
                    if (BUNDLE_PATTERN.matcher(folderUri).matches()) {
                        continue;
                    }
                    getPipelineDictionary().put("SubdirName", stripSlash(name));
                    getPipelineDictionary().put("SubdirURI", folderUri);
                %>
        		<collection id="isfile://<% {String value = null;try{value=context.getFormattedValue(getObject("Subdir:Object:SiteName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>/<% {String value = null;try{value=context.getFormattedValue(getObject("Subdir:NameInNamespace"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {116}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
        			<uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContextURI",null),context.getFormattedValue(getObject("SubdirURI"),null))).addURLParameter(context.getFormattedValue("AsLink",null),context.getFormattedValue(getObject("AsLink"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {117}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
        			<% _boolean_result=false;try {_boolean_result=((Boolean)(((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("Subdir:Object:SiteName"),null)))) ? Boolean.TRUE : Boolean.FALSE)))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",118,e);}if (_boolean_result) { %>
        				<icon><%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/ic_folder.gif</icon>
        				<% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((disableErrorMessages().isDefined(getObject("Subdir:Object:WritePermission"))))).booleanValue() && ((Boolean) ((((Boolean) getObject("Subdir:Object:WritePermission")).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",120,e);}if (_boolean_result) { %>
	        				<readonly>true</readonly>
        				<% } %>
        			<% } else { %>
        				<icon><%=context.getFormattedValue(context.webRoot(),null)%>/css/ServerBrowser/icon_shared_folder.gif</icon>
        				<readonly>true</readonly>
        			<% } %>
        			<title><% {String value = null;try{value=context.getFormattedValue(getObject("SubdirName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {127}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></title>
        			<src><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-List",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("ContextURI",null),context.getFormattedValue(getObject("SubdirURI"),null))).addURLParameter(context.getFormattedValue("AsLink",null),context.getFormattedValue(getObject("AsLink"),null)).addURLParameter(context.getFormattedValue("LocaleId",null),context.getFormattedValue(getObject("LocaleId"),null)).addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {128}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></src>
        		</collection>
            <% } %>
        <% } %>
        <% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("Files") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",132,e);}if (_boolean_result) { %>
            <% while (loop("Files","FileBinding",null)) { %>
                <% {Object temp_obj = (getObject("FileBinding:Object")); getPipelineDictionary().put("File", temp_obj);} %>
                <%
                    final String fileUri = String.valueOf(getObject("File:ContextURL"));
                    if (BUNDLE_PATTERN.matcher(fileUri).matches()) {
                        continue;
                    }
                %>
                <resource id="<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContextURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {141}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
                    <title><% {String value = null;try{value=context.getFormattedValue(getObject("File:FileName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {142}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></title>
                    <description><% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {143}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></description>
                    <description2>Image</description2>
                    <size><% {String value = null;try{value=context.getFormattedValue(getObject("File:FileSize"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {145}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> (byte)</size>
                    <height></height>
                    <width></width>
        			<% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) ((((context.getFormattedValue(getObject("SiteDomain:DomainName"),null).equals(context.getFormattedValue(getObject("File:SiteDomainName"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",148,e);}if (_boolean_result) { %>
        				<readonly>true</readonly>
	                    <icon><%=context.getFormattedValue(context.webRoot(),null)%>/images/shared_content.gif</icon>
        			<% } %>
                    <preview><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ServerBrowser-Thumbnail",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("URI",null),context.getFormattedValue(getObject("File:ContextURL"),null)))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {152}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></preview>
                    <% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("AsLink"),null).equals(context.getFormattedValue("true",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",153,e);}if (_boolean_result) { %>
                        <src><% {String value = null;try{value=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("LocaleId"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {154}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></src>
                        <encodeduri>https://./?[ismediaobject]isstatic://./?<% {String value = null;try{value=context.getFormattedValue(getObject("File:ContentDescriptor"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>|<% {String value = null;try{value=context.getFormattedValue(getObject("File:StaticURL"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {155}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>[/ismediaobject]</encodeduri>
                    <% } else { %>
                        <uri><% {String value = null;try{value=context.getFormattedValue(contentURL(context.getFormattedValue(getObject("File:ContentDescriptor"),null),context.getFormattedValue(getObject("LocaleId"),null)),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {157}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
                    <% } %>
                </resource>
            <% } %>
        <% } %>
        <% processOpenTag(response, pageContext, "kupuresourcepaging", new TagParameter[] {
new TagParameter("Pageable",getObject("Files")),
new TagParameter("ResourceIdPrefix",getObject("CollectionID")),
new TagParameter("GetterPipeline","ServerBrowser-SearchStaticContent"),
new TagParameter("GetterValue0",getObject("Query")),
new TagParameter("GetterParam1","PageSize"),
new TagParameter("GetterParam0","Query"),
new TagParameter("GetterValue1",getObject("Files:PageSize"))}, 162); %>
    </items>
</collection>
<% printFooter(out); %>