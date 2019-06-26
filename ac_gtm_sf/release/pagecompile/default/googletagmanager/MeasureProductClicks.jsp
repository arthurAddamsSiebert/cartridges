<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %>
<script type="text/javascript">
	(function ($) {
		$(document)
			
			
			.on('click', '.js-ti-producttile-productlink', function(){

				if ( (typeof window.ish === "undefined") || (typeof window.ish.GTMproducts === "undefined") || (window.ish.GTMproducts === null) || (window.ish.GTMproducts.length < 1) ) {
					
					return;
				}

				
				var currentProductSKU = $(this).parents('.js-productTile').data('sku'),
					productObj = $.grep(window.ish.GTMproducts, function(element){ return element.id === currentProductSKU; });

				if ( (productObj === null) || (productObj.length < 1) ) {
					
					return;
				}

				window.dataLayer = window.dataLayer || [];
				dataLayer.push({
					'event': 'productClick',
					'ecommerce': {
						'click': {
							'actionField': {'list': productObj.list},
							'products': [productObj]
						}
					}
				});

				
			})
	});
</script>
<% printFooter(out); %>