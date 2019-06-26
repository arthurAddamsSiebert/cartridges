<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!-- Working Area -->
<!--AssignProductLinksActionSelectCategories.isml-->
<table border="0" cellspacing="0" cellpadding="0" width="100%">
<tr>
<td class="table_title aldi" colspan="5"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetCategories.Step3AssignProductCategoryLinks.table_title",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<!-- if nothing is selected--><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("NoSelectedCategory"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",12,e);}if (_boolean_result) { %><tr>
<td colspan="5">
<table border="0" cellspacing="0" cellpadding="4" width="100%" class="error_box w e s">
<tr>
<td class="error_icon e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/error.gif" width="16" height="15" alt="" border="0"/></td>
<td class="error" width="100%"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetCategories.YouHaveNotSelectedAnyTargetCategories.error",null,null,null,null,null,null,null,null,null,null,null,null));} %><br/>
</td>
</tr>
</table>
</td>
</tr><% } %><tr>
<td class="w e table_title_description" colspan="5"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetCategories.Step3Of3.table_title_description",null,null,null,null,null,null,null,null,null,null,null,null));} %>:
<br/><br/><% {out.write(localizeISText("AssignProductLinksActionSelectTargetCategories.UseTheCheckboxesToSelectTargetCategories.table_title_description",null,null,encodeString(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null)),null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("StandardCatalogCategories") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",34,e);}if (_boolean_result) { %> 
<td width="100%" class="w e n s" colspan="5"><% processOpenTag(response, pageContext, "categorytree", new TagParameter[] {
new TagParameter("treeid","StandardCatalogCategories"),
new TagParameter("minexpandlevel","1"),
new TagParameter("selectmode","multi"),
new TagParameter("categories",getObject("StandardCatalogCategories"))}, 36); %><% } else { %><td width="100%" class="w e n s table_detail" colspan="5"><% {out.write(localizeISText("AssignProductLinksActionSelectTargetCategories.ThereAreNoCategoriesThatCanBeAssigned.table_detail",null,null,encodeString(context.getFormattedValue(context.getFormattedValue("typeCodeDefinition.",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Group"),null) + context.getFormattedValue(".",null) + context.getFormattedValue(getObject("ProductLinkTypeSummary:TypeCodeDefinition:Name"),null) + context.getFormattedValue(".displayName",null),null)),null,null,null,null,null,null,null,null,null));} %><% } %></td> 
</tr> 
<tr>
<td align="left" class="w s">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/product/bulkwizard/WizardParams", null, "52");} %><input type="hidden" name="LinkTarget" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkTarget"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {53}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="LinkType" value="<% {String value = null;try{value=context.getFormattedValue(getObject("LinkType"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {54}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ActionID" value="AssignProductLinks"/>
<input type="hidden" name="IsSearchFired" value="<% {String value = null;try{value=context.getFormattedValue(getObject("IsSearchFired"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" />
<input type="submit" name="selectAction" value="&lt;&lt;&nbsp;<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
<td align="right" class="e s" colspan="4">
<table border="0" cellspacing="4" cellpadding="0">
<tr>
<td class="button">
<input type="hidden" name="assignProductCatategoryLinks" value="true"/>
<input type="submit" name="finish" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectVisibility.Finish.button",null)),null)%>" class="button"/>
</td>
<td class="button">
<input type="submit" name="cancel" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletEntryPointSetParent.Cancel.button",null)),null)%>" class="button"/>
</td>
</tr>
</table>
</td>
</tr>
</table>
<!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>