<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%response.setHeader(TemplateConstants.PERSONALIZED_HEADER, "1");setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) ((( ((Number) getObject("ProductBOs:Page")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue() || ((Boolean) ((( ((Number) ((new Double( ((Number) getObject("ProductBOs:Page")).doubleValue() +((Number) new Double(1)).doubleValue())))).doubleValue() <((Number)(getObject("ProductBOs:PageCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><div class="row"><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) getObject("ProductBOs:Page")).doubleValue() !=((Number)(new Double(0))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",5,e);}if (_boolean_result) { %><a class="btn btn-link" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-PreviousPage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("ProductBOs:ID"),null))).addURLParameter(context.getFormattedValue("PreviousPage",null),context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("ProductBOs:Page")).doubleValue() -((Number) new Double(1)).doubleValue())),"0"),null))),null)%>" class="kor-control kor-control-previous"><% {out.write(localizeISText("product.compare.previous.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %><% _boolean_result=false;try {_boolean_result=((Boolean)((( ((Number) ((new Double( ((Number) getObject("ProductBOs:Page")).doubleValue() +((Number) new Double(1)).doubleValue())))).doubleValue() <((Number)(getObject("ProductBOs:PageCount"))).doubleValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",8,e);}if (_boolean_result) { %><a class="btn btn-link pull-right" href="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewProductCompare-NextPage",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("PageableID",null),context.getFormattedValue(getObject("ProductBOs:ID"),null))).addURLParameter(context.getFormattedValue("NextPage",null),context.getFormattedValue(context.getFormattedValue((new Double( ((Number) getObject("ProductBOs:Page")).doubleValue() +((Number) new Double(1)).doubleValue())),"0"),null))),null)%>" class="kor-control kor-control-next"><% {out.write(localizeISText("product.compare.next.button.label","",null,null,null,null,null,null,null,null,null,null,null));} %></a><% } %></div><% } %><% printFooter(out); %>