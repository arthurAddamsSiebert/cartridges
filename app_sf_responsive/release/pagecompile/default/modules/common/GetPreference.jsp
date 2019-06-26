<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import = "com.intershop.beehive.core.capi.preference.DomainPreferenceMgr"%><%@page import = "com.intershop.beehive.core.capi.preference.PreferenceNotFoundException"%><%@page import = "com.intershop.beehive.core.capi.naming.NamingMgr"%><%@page import = "com.intershop.beehive.core.capi.domain.DomainMgr"%><%@page import = "com.intershop.beehive.core.capi.domain.Domain"%><%
	PipelineDictionary dict = getPipelineDictionary();
	String retName = (String)dict.get("return");
	String domainName = (String)dict.get("domainname");
	
	if(null==domainName)
	{
		dict.put(retName, null);
	}
	else
	{
		String returnType = (String)dict.get("type");
		
		String preferenceKey = (String)dict.get("preferencekey");

		DomainMgr dmgr = (DomainMgr)NamingMgr.getInstance().lookupManager(DomainMgr.REGISTRY_NAME);
		
		DomainPreferenceMgr domainPreferenceMgr = (DomainPreferenceMgr)NamingMgr.getInstance().lookupManager(DomainPreferenceMgr.REGISTRY_NAME);
	
		Domain domain = dmgr.getDomainByName(domainName);
	
		try{
			if(returnType!=null){
				if(returnType.equalsIgnoreCase("String")){
					dict.put(retName, domainPreferenceMgr.getStringPreference(preferenceKey,domain));
				}else if(returnType.equalsIgnoreCase("Int")){
					dict.put(retName, domainPreferenceMgr.getIntPreference(preferenceKey,domain));
				}else if(returnType.equalsIgnoreCase("Double")){
					dict.put(retName, domainPreferenceMgr.getDoublePreference(preferenceKey,domain));
				}else{
					dict.put(retName, domainPreferenceMgr.getPreference(preferenceKey, domain));
				}
			}else{
				dict.put(retName, domainPreferenceMgr.getPreference(preferenceKey, domain));
			}
		}catch(PreferenceNotFoundException pnfe){
			dict.put(retName, null);
		}
	}
	
%><% printFooter(out); %>