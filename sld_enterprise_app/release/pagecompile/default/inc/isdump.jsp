<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><pre><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary, java.util.Iterator, com.intershop.beehive.core.capi.request.SessionMgr, com.intershop.beehive.core.capi.request.Session, com.intershop.beehive.core.capi.naming.NamingMgr"%><%
	PipelineDictionary dict = getPipelineDictionary();
	Session sess = ((SessionMgr)NamingMgr.getInstance().lookupManager(SessionMgr.REGISTRY_NAME)).getCurrentSession();
%>
-------------------------------------------------------------------------------
| <% {out.write(localizeISText("isdump.SESSIONProperties",null,null,null,null,null,null,null,null,null,null,null,null));} %> |
-------------------------------------------------------------------------------
<%
	out.println("SessionID: "+sess.getSessionID());
	out.println("User logged in: "+(sess.isLoggedIn()?"YES":"NO"));
	out.println("Locale: "+sess.getLocale().getJavaLanguageKey()+"_"+sess.getLocale().getJavaCountryKey() );
	out.println("Currency: "+sess.getCurrencyCode());
%>
-------------------------------------------------------------------------------
| <% {out.write(localizeISText("isdump.SESSIONDictionary",null,null,null,null,null,null,null,null,null,null,null,null));} %> |
-------------------------------------------------------------------------------
<%
	Iterator sessKeys = sess.createDictionaryKeyIterator();
	Object value = null;
	String key = null;
	while (sessKeys.hasNext()){
		key = sessKeys.next().toString();
		value = sess.getObject(key);
		out.println(key+": "+String.valueOf(value));
	}
%>
-------------------------------------------------------------------------------
| <% {out.write(localizeISText("isdump.PIPELINEDictionary",null,null,null,null,null,null,null,null,null,null,null,null));} %> |
-------------------------------------------------------------------------------
<%
	Iterator pipeKeys = dict.createKeyIterator();
	String alias = null;
	while (pipeKeys.hasNext()){
		key = pipeKeys.next().toString();
		alias = dict.getAliasKey(key);
		value = dict.get(key);
		out.println(key+" ("+alias+"): "+String.valueOf(value));
	}
%>
-------------------------------------------------------------------------------
| <% {out.write(localizeISText("isdump.FORMValues",null,null,null,null,null,null,null,null,null,null,null,null));} %> |
-------------------------------------------------------------------------------
<%
	Iterator formKeys = dict.createFormKeyIterator();
	Object[] values = null;
	while (formKeys.hasNext()){
		key = formKeys.next().toString();
		alias = dict.getAliasKey(key);
		values = dict.getFormValues(key);
		if (values.length<=1){
			value = dict.getFormValue(key);
			out.println(key+" ("+alias+"): "+String.valueOf(value));
		}else{
			out.print(key+": [");
			for (int i=0; i<values.length-1; i++){
				out.print(", "+String.valueOf(values[i]));
			}
			out.println(", "+String.valueOf(values[values.length-1])+"]");
		}
	}
%></pre><% printFooter(out); %>