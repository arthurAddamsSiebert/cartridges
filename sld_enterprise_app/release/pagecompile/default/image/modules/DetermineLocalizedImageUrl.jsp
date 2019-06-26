<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><%@page import="com.intershop.component.image.capi.ImageBO"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageBO"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",3,e);}if (_boolean_result) { %><% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("ImageLocale"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",4,e);}if (_boolean_result) { %><% {Object temp_obj = (getObject("ImageLocale:LocaleID")); getPipelineDictionary().put("localeIDforImage", temp_obj);} %><% } else { %><% {Object temp_obj = (getObject("ImageLocaleID")); getPipelineDictionary().put("localeIDforImage", temp_obj);} %><% } %><% 
		String localeIDforImage = (String)getObject("localeIDforImage");
		String imageBOlocalizedEffectiveUrl = null; 
  		ImageBO currentImageBO = (ImageBO)getObject("ImageBO");
  		
  		if(localeIDforImage != null) {
  			imageBOlocalizedEffectiveUrl = currentImageBO.getEffectiveUrl(localeIDforImage, false);
  		} else {
  			imageBOlocalizedEffectiveUrl = currentImageBO.getEffectiveUrl();
  		}
  		getPipelineDictionary().put("EffectiveLocalizedUrl", imageBOlocalizedEffectiveUrl);
	%><% } %><% printFooter(out); %>