<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/xml;charset=utf-8" %><%setEncodingType("text/xml"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pageable"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("pageable:PageCount")).doubleValue() >((Number)(new Double(1))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% {Object temp_obj = ("0"); getPipelineDictionary().put("FirstPage", temp_obj);} %><% {Object temp_obj = ((new Double( ((Number) (val(context.getFormattedValue(getObject("pageable:Page"),null)))).doubleValue() -((Number) (val(context.getFormattedValue("1",null)))).doubleValue()))); getPipelineDictionary().put("PrevPage", temp_obj);} %><% {Object temp_obj = ((new Double( ((Number) (val(context.getFormattedValue(getObject("pageable:Page"),null)))).doubleValue() +((Number) (val(context.getFormattedValue("1",null)))).doubleValue()))); getPipelineDictionary().put("NextPage", temp_obj);} %><% {Object temp_obj = ((new Double( ((Number) (val(context.getFormattedValue(getObject("pageable:PageCount"),null)))).doubleValue() -((Number) (val(context.getFormattedValue("1",null)))).doubleValue()))); getPipelineDictionary().put("LastPage", temp_obj);} %><% {Object temp_obj = ((new Double( ((Number) ((new Double( ((Number) (getObject("pageable:Page"))).doubleValue() *((Number) getObject("pageable:PageSize")).doubleValue())))).doubleValue() +((Number) new Double(1)).doubleValue()))); getPipelineDictionary().put("ItemsFrom", temp_obj);} %><% {Object temp_obj = (((new Double( ((Number) ((new Double( ((Number) getObject("pageable:Page")).doubleValue() +((Number) new Double(1)).doubleValue())))).doubleValue() *((Number) getObject("pageable:PageSize")).doubleValue())))); getPipelineDictionary().put("ItemsTo", temp_obj);} %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) (val(context.getFormattedValue(getObject("ItemsTo"),null)))).doubleValue() >((Number)(getObject("pageable:ElementCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",10,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("pageable:ElementCount")); getPipelineDictionary().put("ItemsTo", temp_obj);} %><% } %><paging id="<% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.<% {String value = null;try{value=context.getFormattedValue(getObject("NextPage"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {13}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>">
<iconFirst><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/first1.gif</iconFirst>
<firstPageId><% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {15}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.first</firstPageId>
<iconPrevious><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/back1.gif</iconPrevious>
<previousPageId><% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.<% {String value = null;try{value=context.getFormattedValue(getObject("PrevPage"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {17}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></previousPageId>
<iconNext><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/forward1.gif</iconNext>
<nextPageId><% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.<% {String value = null;try{value=context.getFormattedValue(getObject("NextPage"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {19}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></nextPageId>
<iconLast><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/last1.gif</iconLast>
<lastPageId><% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {21}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.last</lastPageId>
<title><% {String value = null;try{value=context.getFormattedValue(getObject("ItemsFrom"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>-<% {String value = null;try{value=context.getFormattedValue(getObject("ItemsTo"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> of <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:ElementCount"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {22}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></title>
</paging><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("pageable:FirstPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",24,e);}if (_boolean_result) { %><collection id="<% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {25}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.first" hidden = "true">
<uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("FirstPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {26}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
<icon><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/folder.png</icon>
<title>Page <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:Page")).doubleValue() +((Number) new Double(1)).doubleValue())),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> of <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageCount"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {28}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> next</title>
<src><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("FirstPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {29}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></src>
<items></items>
</collection>
<collection id="<% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.<% {String value = null;try{value=context.getFormattedValue(getObject("PrevPage"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {32}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" hidden = "true">
<uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("PrevPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {33}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
<icon><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/folder.png</icon>
<title>Page <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:Page")).doubleValue() +((Number) new Double(1)).doubleValue())),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> of <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageCount"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {35}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> previous</title>
<src><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("PrevPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {36}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></src>
<items></items>
</collection><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((((Boolean) (getObject("pageable:LastPage"))).booleanValue() ? Boolean.FALSE : Boolean.TRUE) )).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",40,e);}if (_boolean_result) { %><collection id="<% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.<% {String value = null;try{value=context.getFormattedValue(getObject("NextPage"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {41}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>" hidden = "true">
<uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("NextPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {42}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
<icon><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/folder.png</icon>
<title>Page <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:Page")).doubleValue() +((Number) new Double(1)).doubleValue())),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> of <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageCount"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {44}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> next</title>
<src><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("NextPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {45}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></src>
<items></items>
</collection>
<collection id="<% {String value = null;try{value=context.getFormattedValue(getObject("resourceidprefix"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {48}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>.last" hidden = "true">
<uri><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("LastPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {49}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></uri>
<icon><%=context.getFormattedValue(context.webRoot(),null)%>/htmleditor/kupuimages/folder.png</icon>
<title>Page <% {String value = null;try{value=context.getFormattedValue((new Double( ((Number) getObject("pageable:Page")).doubleValue() +((Number) new Double(1)).doubleValue())),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> of <% {String value = null;try{value=context.getFormattedValue(getObject("pageable:PageCount"),"######0",null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {51}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %> previous</title>
<src><% {String value = null;try{value=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue(getObject("getterpipeline"),null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("OrganizationDomainId",null),context.getFormattedValue(getObject("OrganizationDomainId"),null))).addURLParameter(context.getFormattedValue(getObject("getterparam0"),null),context.getFormattedValue(getObject("gettervalue0"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam1"),null),context.getFormattedValue(getObject("gettervalue1"),null)).addURLParameter(context.getFormattedValue(getObject("getterparam2"),null),context.getFormattedValue(getObject("gettervalue2"),null)).addURLParameter(context.getFormattedValue("PageNumber",null),context.getFormattedValue(getObject("LastPage"),null))),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {52}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></src>
<items></items>
</collection><% } %><% } %><% } %><% printFooter(out); %>