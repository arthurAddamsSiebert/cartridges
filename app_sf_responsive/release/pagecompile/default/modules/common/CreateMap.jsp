<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import = "com.intershop.beehive.core.capi.pipeline.PipelineDictionary"%><%@page import = "java.util.Map"%><%@page import = "java.util.HashMap"%><%
    PipelineDictionary pd = getPipelineDictionary();
    Map params = null;
    String mapname = "Map";
    Object map = getObject("mapname");
    if(map != null)
    {
        mapname = map.toString();
    }
    if(pd.containsKey("mode"))
    {
        if(getObject("mode").toString().equals("add"))
        {
            params = (Map)getObject(mapname);
            if(params == null)
            { // no map specified
                params = new HashMap();
            }
        }
        else
        {// unknown mode, fallback to create
            params = new HashMap();
        }
    }
    else
    { // default mode: create
         params = new HashMap();
    }
    for(int i=0;i<10;i++)
    {
        Object key = getObject("key"+i);
        Object value = getObject("value"+i);
        if(key != null)
        {
            params.put(key, value);
        }
        key = null;
        value = null;
    }
    pd.put(mapname, params);
%><% printFooter(out); %>