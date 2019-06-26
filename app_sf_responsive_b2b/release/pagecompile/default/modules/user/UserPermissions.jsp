<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="java.text.Collator,
                com.intershop.component.user.capi.UserBO,
                com.intershop.beehive.core.capi.security.Permission,
                com.intershop.component.b2b.role.capi.user.UserBORoleExtension" %><%
PipelineDictionary dictionary = getPipelineDictionary();
UserBO user = dictionary.get("user");
UserBORoleExtension extension = user.getExtension(UserBORoleExtension.class);
Collection<Permission> userPermissions = extension.getUserPermissionMap().values();
Collection<String> orderedPermissions = new TreeSet<String>(Collator.getInstance());

for (Permission currentPermission : userPermissions)
{
	orderedPermissions.add(currentPermission.getName());
}

dictionary.put("permissions", orderedPermissions);
%><% printFooter(out); %>