<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% processOpenTag(response, pageContext, "breadcrumbtrail", new TagParameter[] {
new TagParameter("text",getObject("Category:DisplayName"))}, 3); %><table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td width="100%" class="table_title w e s n"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {7}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</td>
</tr>
<tr>
<td class="w e s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td valign="top" class="e w" width="100%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="100%" class="table_header s" colspan="2"><% {out.write(localizeISText("CategoryInfo.General.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td colspan="2"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="3" alt="" border="0"/></td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("CategoryInfo.Name.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td width="100%" class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {23}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr> 
<tr>
<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("CategoryInfo.ID.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail" nowrap="nowrap"><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("CategoryInfo.Keywords.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("Category:Description"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Description"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {31}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } else { %><% {out.write(localizeISText("CategoryInfo.ThereAreNoKeywordsAvailable.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("CategoryInfo.Status.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)(getObject("Category:isOnline"))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryInfo.Online.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryInfo.Offline.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td class="table_detail" nowrap="nowrap"><b><% {out.write(localizeISText("CategoryInfo.ParentCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</b></td>
<td class="table_detail" nowrap="nowrap"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("Category:Parent"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",39,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;(<% {String value = null;try{value=context.getFormattedValue(getObject("Category:Parent:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {39}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)<% } else { %><% {out.write(localizeISText("CategoryInfo.CategoryHasNoParentCategory.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } %></td>
</tr>
<tr>
<td colspan="2" class="s"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="5" alt="" border="0"/></td>
</tr>
</table>
</td>
</tr>
</table>
<table cellpadding="0" cellspacing="0" border="0" width="100%"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("ProductType")))).booleanValue() && ((Boolean) (hasLoopElements("ProductType:CustomProductAttributes") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",50,e);}if (_boolean_result) { %><tr>
<td width="60%" class="table_header w e s" nowrap="nowrap"><% {out.write(localizeISText("CategoryInfo.ClassificationAttributeName.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="20%" class="table_header e s"><% {out.write(localizeISText("CategoryInfo.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td width="20%" class="table_header e s" nowrap="nowrap"><% {out.write(localizeISText("CategoryInfo.DataType.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("ProductType:CustomProductAttributes","PTA",null)) { %><tr>
<td class="table_detail w e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PTA:DisplayName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {58}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% {String value = null;try{value=context.getFormattedValue(getObject("PTA:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></td>
<td class="table_detail e s"><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("1",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryInfo.Integer.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else {_boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("PTA:ValueType"),null).equals(context.getFormattedValue("2",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",60,e);}if (_boolean_result) { %><% {out.write(localizeISText("CategoryInfo.Double.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% } else { %><% {out.write(localizeISText("CategoryInfo.String.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %><% }} %></td>
</tr><% } %><% } else { %><tr>
<td width="100%" class="table_header w e s"><% {out.write(localizeISText("CategoryInfo.ClassificationAttributes.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr>
<tr>
<td width="100%" class="table_detail w e s"><% {out.write(localizeISText("CategoryInfo.ThisCategoryDoesNotDefineAnyClassificationAttributes.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% } %></table><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/Back", null, "72");} %><!-- EO Main Content -->
<!-- EO Working Area --><% printFooter(out); %>