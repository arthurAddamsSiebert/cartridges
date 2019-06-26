<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProduct"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><tr>
<td>
<table border="0" cellpadding="3" cellspacing="0" width="100%" class="w e s">
<tr class="object_state"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Product:DerivedProductChanged"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",7,e);}if (_boolean_result) { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from_m.gif" alt="" border="0"/></div>
</td>
</tr>
</table>
</td>
<td width="100%"><% {out.write(localizeISText("ProductSharingInformation.TheProductIsSharedFromAndHasBeenModified",null,null,encodeString(context.getFormattedValue(getObject("Product:BaseProduct:Domain:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %></td><% } else { %><td class="e">
<table border="0" cellspacing="0" cellpadding="0" width="22" height="19">
<tr>
<td>
<div align="center"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/status_shared_product_from.gif" alt="" border="0"/></div>
</td>
</tr>
</table>
</td>
<td width="100%"><% {out.write(localizeISText("ProductSharingInformation.TheProductIsSharedFrom",null,null,encodeString(context.getFormattedValue(getObject("Product:BaseProduct:Domain:DomainName"),null)),null,null,null,null,null,null,null,null,null));} %>&quot;.
</td><% } %></tr>
</table>
</td>
</tr><% } %><% printFooter(out); %>