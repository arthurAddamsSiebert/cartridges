<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.TRUE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% {out.flush();processLocalIncludeByServer((com.intershop.beehive.core.capi.request.ServletResponse)response,"modules/Modules", null, "2");} %><% context.setCustomTagTemplateName("wishlistpropertiesform","modules/account/WishlistPropertiesForm.isml",true,new String[]{"CurrentForm","TargetPipeline","SubmitButtonName","SubmitButtonText","WishlistBO","TitleText","ParameterName1","ParameterValue1"},null); %><% processOpenTag(response, pageContext, "wishlistpropertiesform", new TagParameter[] {
new TagParameter("TitleText",localizeText(context.getFormattedValue("account.order_template.new_from_order.heading",null))),
new TagParameter("CurrentForm",getObject("NewWishlistForm")),
new TagParameter("SubmitButtonText",localizeText(context.getFormattedValue("account.order_template.new_from_basket.button.create.label",null))),
new TagParameter("ParameterName1","OrderID"),
new TagParameter("TargetPipeline","ViewOrderTemplate-CreateFromOrder"),
new TagParameter("SubmitButtonName","CreateWishlist"),
new TagParameter("ParameterValue1",getObject("OrderID"))}, 18); %><% printFooter(out); %>