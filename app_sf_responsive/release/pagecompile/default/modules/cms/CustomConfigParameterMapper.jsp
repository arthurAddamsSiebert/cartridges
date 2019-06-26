<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@ page import="java.util.HashMap" %><%
	String input = (String)getPipelineDictionary().get("configparameterstring");
	String resultName = (String)getPipelineDictionary().get("resultmapname");
	
	HashMap<String,String> hash = new HashMap<String,String>();
	
	if (null != input && "" != input) {
		if (input.contains(";")) {
			String[] lines = input.split(";");
			
			for(int i=0; i<lines.length; i++) {
				String[] pair = lines[i].split("=");
				
				if (null != pair && pair.length>1) {
					hash.put(pair[0],pair[1]);
				}
			}
		} else {
			String[] pair =input.split("=");
			if (null != pair && pair.length>1) {
				hash.put(pair[0],pair[1]);
			}
		}
	}

	getPipelineDictionary().put(resultName, hash);
%><% printFooter(out); %>