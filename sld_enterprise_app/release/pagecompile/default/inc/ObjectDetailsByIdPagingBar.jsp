<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%@page import="com.intershop.beehive.core.capi.paging.PageableIterator,
    com.intershop.beehive.core.capi.pipeline.PipelineDictionary,
    com.intershop.beehive.core.capi.request.Request"%><% processOpenTag(response, pageContext, "createmap", new TagParameter[] {
new TagParameter("key1","DetailsPageNumber"),
new TagParameter("key0","PageLocatorName"),
new TagParameter("value1",getObject("pagenumber")),
new TagParameter("value0",getObject("pagelocatorname")),
new TagParameter("mapname","ObjectPagingBarParams")}, 6); %> 
<% {try{executePipeline("ProcessObjectDetailsPaging-GetPageableFromSession",((java.util.Map)(getObject("ObjectPagingBarParams"))),"ObjectPagingBarDictionary");}catch(Exception e){Logger.error(this,"ISPIPELINE failed. Line: 9.",e);}} %><%
	PipelineDictionary my_dict = (PipelineDictionary) getObject("ObjectPagingBarDictionary");
	
		PageableIterator my_pageable = (PageableIterator)my_dict.get("DetailsPagingBarPageable");
		getPipelineDictionary().put("TmpPageable", my_pageable);
		PageableIterator pageable = (PageableIterator)getObject("TmpPageable");
		//String pageableName = (String)getObject("pageable");
		//getPipelineDictionary().put("TmpPageable", getObject(pageableName));
		//PageableIterator pageable = (PageableIterator)getObject("TmpPageable");
	
	Object currentObject = getObject("currentobject");
	Object previousObject = null;
	Object nextObject = null;
	
	if ( null != currentObject && null != pageable ) {
		getPipelineDictionary().put("TmpNextObjectPage", pageable.getPage());
		getPipelineDictionary().put("TmpPreviousObjectPage", pageable.getPage());
	
		int counter = 0;
		boolean found = false;
		int currentPage = pageable.getPage();
		pageable.reset();
		while(pageable.hasNext()) {
			previousObject = nextObject;
			nextObject = pageable.next();
			counter++;
			if (nextObject.equals(currentObject)) {
				found = true;
				nextObject = (pageable.hasNext()) ? pageable.next() : null;
				break;
			}
		}
		//if object found on current page (if not - hide paging bar)
		if(found) {
			//determine previous and next objects 
			if (null == previousObject && !pageable.isFirstPage()) {
				pageable.setPage(currentPage - 1);
				pageable.reset();
				getPipelineDictionary().put("TmpPreviousObjectPage", currentPage - 1);
				while(pageable.hasNext()) {
					previousObject = pageable.next();
				}
			}
		
			pageable.setPage(currentPage);
		
			if (null == nextObject && !pageable.isLastPage()) {
				pageable.setPage(currentPage + 1);
				pageable.reset();
				getPipelineDictionary().put("TmpNextObjectPage", currentPage + 1);
				if (pageable.hasNext()) 
					nextObject = pageable.next();
			}
		
			pageable.setPage(currentPage);
		
			getPipelineDictionary().put("TmpCurrentCounter", pageable.getPage() * pageable.getPageSize() + counter);
			getPipelineDictionary().put("TmpNextObject", nextObject);
			getPipelineDictionary().put("TmpPreviousObject", previousObject);
			getPipelineDictionary().put("TmpCurrentObject", currentObject);
		}
	}
%><table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><%
            getPipelineDictionary().put("ApplicationState", Request.getCurrent().getSession().getObject("ApplicationState"));
        %><td width="20%"><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"inc/BackToList", null, "98");} %></td>
<td nowrap="nowrap" align="center"><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("TmpPageable:ElementCount")).doubleValue() >((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() && ((Boolean) (((((Boolean) (disableErrorMessages().isDefined(getObject("TmpNextObject")))).booleanValue() || ((Boolean) (disableErrorMessages().isDefined(getObject("TmpPreviousObject")))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",101,e);}if (_boolean_result) { %><div style="margin-bottom: 2px;"><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TmpPreviousObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",103,e);}if (_boolean_result) { %>
&nbsp;<a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("nameforobjectid"),null),context.getFormattedValue(getObject("TmpPreviousObject:Id"),null))).addURLParameter(context.getFormattedValue("removeid",null),context.getFormattedValue(getObject("TmpCurrentObject:Id"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null)).addURLParameter(context.getFormattedValue(getObject("parametername10"),null),context.getFormattedValue(getObject("parametervalue10"),null)).addURLParameter(context.getFormattedValue(getObject("parametername11"),null),context.getFormattedValue(getObject("parametervalue11"),null)).addURLParameter(context.getFormattedValue(getObject("parametername12"),null),context.getFormattedValue(getObject("parametervalue12"),null)).addURLParameter(context.getFormattedValue("DetailsPageNumber",null),context.getFormattedValue(getObject("TmpPreviousObjectPage"),null))),null)%>" class="pagecursortxt button">&lt;&lt;</a><% } %><% {out.write(localizeISText("ObjectDetailsByIdPagingBar.Item0Of1.link",null,null,context.getFormattedValue(getObject("TmpCurrentCounter"),null),context.getFormattedValue(getObject("TmpPageable:ElementCount"),null),"pagecursortxt","pagecursoritem bold",null,null,null,null,null,null));} %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("TmpNextObject"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",129,e);}if (_boolean_result) { %><a href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("pipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue(getObject("nameforobjectid"),null),context.getFormattedValue(getObject("TmpNextObject:Id"),null))).addURLParameter(context.getFormattedValue("removeid",null),context.getFormattedValue(getObject("TmpCurrentObject:Id"),null)).addURLParameter(context.getFormattedValue(getObject("parametername"),null),context.getFormattedValue(getObject("parametervalue"),null)).addURLParameter(context.getFormattedValue(getObject("parametername1"),null),context.getFormattedValue(getObject("parametervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("parametername2"),null),context.getFormattedValue(getObject("parametervalue2"),null)).addURLParameter(context.getFormattedValue(getObject("parametername3"),null),context.getFormattedValue(getObject("parametervalue3"),null)).addURLParameter(context.getFormattedValue(getObject("parametername4"),null),context.getFormattedValue(getObject("parametervalue4"),null)).addURLParameter(context.getFormattedValue(getObject("parametername5"),null),context.getFormattedValue(getObject("parametervalue5"),null)).addURLParameter(context.getFormattedValue(getObject("parametername6"),null),context.getFormattedValue(getObject("parametervalue6"),null)).addURLParameter(context.getFormattedValue(getObject("parametername7"),null),context.getFormattedValue(getObject("parametervalue7"),null)).addURLParameter(context.getFormattedValue(getObject("parametername8"),null),context.getFormattedValue(getObject("parametervalue8"),null)).addURLParameter(context.getFormattedValue(getObject("parametername9"),null),context.getFormattedValue(getObject("parametervalue9"),null)).addURLParameter(context.getFormattedValue(getObject("parametername10"),null),context.getFormattedValue(getObject("parametervalue10"),null)).addURLParameter(context.getFormattedValue(getObject("parametername11"),null),context.getFormattedValue(getObject("parametervalue11"),null)).addURLParameter(context.getFormattedValue(getObject("parametername12"),null),context.getFormattedValue(getObject("parametervalue12"),null)).addURLParameter(context.getFormattedValue("DetailsPageNumber",null),context.getFormattedValue(getObject("TmpNextObjectPage"),null))),null)%>" class="pagecursortxt button">&gt;&gt;</a><% } %></div><% } else { %>&nbsp;
<% } %></td>
<td width="20%">
&nbsp;
</td>
</tr>
</table><% printFooter(out); %>