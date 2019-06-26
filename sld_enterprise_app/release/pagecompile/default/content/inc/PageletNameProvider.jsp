<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.naming.NamingMgr,
				com.intershop.beehive.core.capi.domain.Domain,
				com.intershop.beehive.core.capi.domain.PersistentObject,
				com.intershop.component.pmc.capi.pagelet.NameOrIDProvider,
				com.intershop.component.foundation.capi.assignment.AssignmentStrategy,
				com.intershop.beehive.core.capi.localization.LocaleInformation" 
%><%
	NamingMgr nMgr = NamingMgr.getInstance();
	NameOrIDProvider<PersistentObject> provider = (NameOrIDProvider<PersistentObject>)nMgr.lookupProvider(NameOrIDProvider.REGISTRY_NAME);

	if (provider == null)
	{
		Logger.error(this, "Unable to find a provider implementation for {}. Using default.",
		                NameOrIDProvider.REGISTRY_NAME);

		provider = new com.intershop.component.pmc.capi.pagelet.DefaultNameOrIDProvider();
	}
	
	String existing = (String)getObject("ExistingName");

	if (existing == null || existing.trim().length() == 0)
	{
		Domain domain = (Domain)getObject("Domain");
		PersistentObject contextObject = (PersistentObject)getObject("ContextObject");
		LocaleInformation locale = (LocaleInformation)getObject("Locale");
		getPipelineDictionary().put("Name", provider.getNextName(contextObject, domain, locale));
	}
	else
	{
		getPipelineDictionary().put("Name", existing);
	}
%><% {String value = null;try{value=context.getFormattedValue(getObject("Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% printFooter(out); %>