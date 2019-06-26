<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("AddedCategoryLinks") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("UpdatedCategoryLinks") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("DeletedCategoryLinks") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} %><tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 aldi" colspan="2"><% {out.write(localizeISText("CategoryLinkDetails.CategoryLinks.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AddedCategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",15,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="2"><% {out.write(localizeISText("CategoryLinkDetails.TheFollowingCategoryLinksWereAdded.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("CategoryLinkDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("CategoryLinkDetails.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AddedCategoryLinks",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedCategoryLinks:CategoryName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedCategoryLinks:CategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdatedCategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",30,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="2"><% {out.write(localizeISText("CategoryLinkDetails.TheFollowingCategoryLinksWereUpdated.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("CategoryLinkDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("CategoryLinkDetails.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("UpdatedCategoryLinks",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedCategoryLinks:CategoryName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {40}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedCategoryLinks:CategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("DeletedCategoryLinks") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",45,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="2"><% {out.write(localizeISText("CategoryLinkDetails.TheFollowingCategoryLinksWereDeleted.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("CategoryLinkDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("CategoryLinkDetails.ID.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("DeletedCategoryLinks",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedCategoryLinks:CategoryName(Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {55}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedCategoryLinks:CategoryID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {56}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr><% } %><% printFooter(out); %>