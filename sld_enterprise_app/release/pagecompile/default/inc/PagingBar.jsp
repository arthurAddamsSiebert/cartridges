<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (disableErrorMessages().isDefined(getObject("pagenumberprefix")))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% getPipelineDictionary().put("pagenumberprefix", "PageNumber_"); %><% } %><%@page import = "com.intershop.beehive.core.capi.paging.PageableIterator"%><%
	String pageableName = (String)getObject("pageable");
	Object pageable = getObject(pageableName);
	PageableIterator pIterator = null;
	int pageCount = 0;
	if(pageable != null)
	{
		getPipelineDictionary().put("TmpPageable", pageable);
		pIterator = (PageableIterator)getObject("TmpPageable");
		pageCount = pIterator.getPageCount();
		getPipelineDictionary().put("pageCount",new Integer(pageCount-1));
	}
%><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",21,e);}if (_boolean_result) { %><table id="pagingBar" class="pagecursor" width="100%" border="0" cellspacing="1" cellpadding="1">
<tr>
<td class="pagecursortxt top" align="left" nowrap="nowrap">
&nbsp;<% {out.write(localizeISText("PageNavigationBar.Showing0To1Of2Items.pagecursortxt",null,null,context.getFormattedValue(getObject("TmpPageable:PageStart"),null),context.getFormattedValue(getObject("TmpPageable:PageEnd"),null),context.getFormattedValue(getObject("TmpPageable:ElementCount"),null),"pagecursoritem bold",null,null,null,null,null,null));} %><input type="hidden" name="PageNumberPrefix" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableID" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:ID"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {27}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="PageableName" value="<% {String value = null;try{value=context.getFormattedValue(getObject("pageable"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="CurrentPageNumber" value="<% {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:Page"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
<input type="hidden" name="ParentPage" value="<% {String value = null;try{value=context.getFormattedValue(getObject("ParentPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {30}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>"/>
</td><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TmpPageable:isFirstPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",32,e);}if (_boolean_result) { %><td class="pagecursortxt" width="1">&lt;&lt;</td>
<td class="pagecursortxt" width="1">
<input type="submit" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:PrevPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("PageletSelectComponentSlot.Previous.button",null)),null)%>" class="pagecursorbtn<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("cssclasses"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",35,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(context.getFormattedValue(" ",null) + context.getFormattedValue(getObject("cssclasses"),null),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %>"/>
</td><% } %><% {Object temp_obj = (new Double(1)); getPipelineDictionary().put("counter", temp_obj);} %><%
				int currentPage = pIterator.getPage();

				// max quantity of pages shown right from position of current page
				int maxRight	= 6;
				// max quantity of pages shown right from position of current page
				int maxLeft		= 5;
				int maxWidth	= maxRight + maxLeft;

				if (pageCount < maxWidth) maxWidth = pageCount;

				// adjust limits in case current page is within the last maxRight elements on the right side
				if (pageCount-currentPage < maxRight)
				{
					maxRight	= pageCount-currentPage;
					maxLeft		= maxWidth - maxRight;
				}

				// adjust limits in case current page is within the first maxLeft elements on the left side
				if (currentPage-maxLeft < 0)
				{
					maxLeft  = currentPage;
					maxRight = maxWidth - maxLeft;
				}

				if(pageCount>=2)
				{
					// navigate to first page
					if (currentPage>maxLeft)
					{%><td class="pagecursortxt" width="1">
<input type="submit" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {71}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>0" value="1" class="pagecursorbtn"/>
</td>
<td class="pagecursortxt" width="1">...</td><%}
					for(int i = currentPage-maxLeft; i < currentPage+maxRight; i++)
					{
						getPipelineDictionary().put("i", i+"");//put string into pipeDic to avoid the ',' in PageNumber
						if (i != currentPage)
						{%><td class="pagecursortxt" width="1">
<input type="submit" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {String value = null;try{value=context.getFormattedValue(getObject("i"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {81}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%= i+1%>" class="pagecursorbtn"/>
</td><% {Object temp_obj = ((new Double( ((Number) getObject("counter")).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("counter", temp_obj);} %><%}
						else
						{
							%><td class="pagecursoritem top" width="1"><b>[<%= i+1%>]&nbsp;</b></td><%
						}
					}
					// navigate to last page
					getPipelineDictionary().put("pc", pageCount-1+"");//put string into pipeDic to avoid the ',' in PageNumber
					if (currentPage<pageCount-maxRight)
					{	%><td class="pagecursortxt" width="1">...</td>
<td class="pagecursortxt" width="1">
<input type="submit" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {String value = null;try{value=context.getFormattedValue(getObject("pc"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {96}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%= pageCount%>" class="pagecursorbtn"/>
</td><%
					}
				}
			%><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("TmpPageable:isLastPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",102,e);}if (_boolean_result) { %><td class="pagecursortxt" width="1">
<input type="submit" name="<% {String value = null;try{value=context.getFormattedValue(getObject("pagenumberprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% {String value = null;try{value=context.getFormattedValue(getObject("TmpPageable:NextPage"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {104}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" value="<%=context.getFormattedValue(localizeText(context.getFormattedValue("ComponentSelectPageletAssignmentButtons.Next.button",null)),null)%>" class="pagecursorbtn"/>
</td>
<td class="pagecursortxt" width="1">&gt;&gt;</td><% } %></tr>
</table><% } %><% printFooter(out); %>