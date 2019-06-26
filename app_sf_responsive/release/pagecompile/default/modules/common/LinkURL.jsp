<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%
%><% _boolean_result=false;try {_boolean_result=((Boolean)(((((Boolean) (disableErrorMessages().isDefined(getObject("link")))).booleanValue() && ((Boolean) (((!(context.getFormattedValue(getObject("link"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue()) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",2,e);}if (_boolean_result) { %><%
	
   /**
	* Do not add spaces in this module! Otherwise urls will end like this
	*
	* <a href=" http://foo.bar ">
	*
	* In most browsers this will not work! So be very carefull with this ISML template.
	* 
	*	Parameter:	link 			(required)		- URL link
	* 			    forcesecure 	(optional)		- force usage of secure protocol
	* 			    forceinsecure 	(optional)		- force usage of insecure protocol
	* 			    linkparameters	(optional)		- link parameters
	*
	*	Hint: If both forcesecure/ forceinsecure parameters are 'true', HTTPS will be used.
	*		  If neither forcesecure nor forceinsecure are present, no protocol switch will be done.
	*/
	
%><%@page import="com.intershop.sellside.pmc.capi.linkparser.StorefrontLinkParser"%><%@page import="com.intershop.beehive.core.capi.url.URLComposer" %><%
    Boolean forceSecure = getObject("forcesecure") == null ? false : (Boolean)getObject("forcesecure");
	Boolean forceInsecure = getObject("forceinsecure" )== null ? false : (Boolean)getObject("forceinsecure");
	String href = (String)getObject("link");
	href = ( null == href ) ? "" : href.trim();
	// extract anchor
	int positionOfAnchor = href.lastIndexOf("#");
	String anchor = "";
	if(positionOfAnchor >= 0)
	{
		// Link contains an anchor, extract it and cut it from the link,
		// the anchor will be appended later as very last element of the link
		// again
		anchor=href.substring(positionOfAnchor); // including the starting symbol #
		href=href.substring(0,positionOfAnchor); // shortening the href
	}	
	// attach link params to url - if any specified
	String linkparams = (String)getObject("linkparameters");
	linkparams = ( null == linkparams ) ? "" : linkparams.trim();
	if (linkparams.length() > 0)
    {
	    int lh = href.indexOf("?");
       	if (lh > 0 ) {						  // if link has a parameter-starter symbol	
	    	linkparams = "&" + linkparams;    // set & in front of parameterstring if link contains paramter starter symbol 	
    	}
    	else {								// set ? if no parameterstarter symbol was found	
			linkparams = "?" + linkparams;
		}
       	href = href.concat(linkparams);
	} 
	// append extracted anchor
	if (anchor.length() > 0) {
	    href = href.concat(anchor);
	}
	
    String protocol = null;
    if (Boolean.TRUE.equals(forceSecure))
    {
        protocol = "https";
    }
    else if (Boolean.TRUE.equals(forceInsecure))
    {
        protocol = "http";
    }
    
    // setup LinkParser-component call
    final URLComposer composer = getTemplateExecutionConfig().getURLComposer();
    final String objectName = StorefrontLinkParser.class.getSimpleName();
    final StorefrontLinkParser parser  = getRequest().getExecutionApplication().getApplicationType().getNamedObject(objectName);
    getPipelineDictionary().put("linkParsed", parser.parse(href, composer, protocol, getTemplateExecutionConfig().getRequest()));
%><% _boolean_result=false;try {_boolean_result=((Boolean)((((context.getFormattedValue(getObject("encoding"),null).equals(context.getFormattedValue("off",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",76,e);}if (_boolean_result) { %><% {String value = null;try{value=context.getFormattedValue(getObject("linkParsed"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {77}",e);}if (value==null) value="";out.write(value);} %><% } else { %><% {String value = null;try{value=context.getFormattedValue(getObject("linkParsed"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {79}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><% } %><% } %><% printFooter(out); %>