<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (hasLoopElements("AddedContents") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("UpdatedContents") ? Boolean.TRUE : Boolean.FALSE)).booleanValue() || ((Boolean) (hasLoopElements("DeletedContents") ? Boolean.TRUE : Boolean.FALSE)).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = ("true"); getPipelineDictionary().put("ProductChange", temp_obj);} %><tr>
<td class="w e"><img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/space.gif" width="1" height="2" alt="" border="0"/></td>
</tr>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td width="100%" class="table_title2 aldi" colspan="3"><% {out.write(localizeISText("ContentDetails.Content.table_title2",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AddedContents") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",14,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="3"><% {out.write(localizeISText("ContentDetails.TheFollowingContentWereAdded.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ContentDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s">&nbsp;</td>
<td class="table_header n e s"><% {out.write(localizeISText("ContentDetails.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("AddedContents",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedContents:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top">&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("AddedContents:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("UpdatedContents") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",31,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="3"><% {out.write(localizeISText("ContentDetails.TheFollowingContentWereUpdated.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ContentDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ContentDetails.OldValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s" nowrap="nowrap"><% {out.write(localizeISText("ContentDetails.NewValue.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
</tr><% while (loop("UpdatedContents",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedContents:NewSnapShot:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedContents:OldSnapShot:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {43}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("UpdatedContents:NewSnapShot:Value"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
</tr><% } %><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("DeletedContents") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",48,e);}if (_boolean_result) { %><tr>
<td class="table_detail w e" colspan="3"><% {out.write(localizeISText("ContentDetails.TheFollowingContentWereDeleted.table_detail",null,null,null,null,null,null,null,null,null,null,null,null));} %>:</td>
</tr>
<tr>
<td class="table_header aldi"><% {out.write(localizeISText("ContentDetails.Name.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s"><% {out.write(localizeISText("ContentDetails.Value.table_header",null,null,null,null,null,null,null,null,null,null,null,null));} %></td>
<td class="table_header n e s">&nbsp;</td>
</tr><% while (loop("DeletedContents",null,null)) { %><tr>
<td class="table_detail w e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedContents:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {59}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top"><% {String value = null;try{value=context.getFormattedValue(getObject("DeletedContents:StringValue"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {60}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>&nbsp;</td>
<td class="table_detail e s top">&nbsp;</td>
</tr><% } %><% } %></table>
</td>
</tr><% } %><% printFooter(out); %>