<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="java.util.Iterator"%>
<%@page import="com.intershop.beehive.core.capi.domain.AttributeDefinitionConstants"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleMgr"%>
<%@page import="com.intershop.beehive.core.capi.localization.LocaleInformation"%>
<%@page import="com.intershop.beehive.core.capi.naming.NamingMgr"%>
<%@page import="com.intershop.beehive.core.capi.domain.ExtensibleObject"%>
<%@page import="com.intershop.beehive.core.capi.request.Request"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%!

    /**
     * retrieves the type of an extensible object attribute as a String constant.
     * If no such attribute can be found, null is returned.
     */
    public static String getAttributeTypeAsString( String attributeName, ExtensibleObject object )
    {
        try
        {
            return getAttributeTypeAsString( object.getAttributeType( attributeName ) );
        }
        catch (Exception e)
        {
        	Logger.error(object,e.getMessage(),e);
            return null;
        }
    }
   /**
    * converts the integer type of an extensible object attribute to a String
   */
    public static String getAttributeTypeAsString( int type )
    {
        switch ( type )
        {
            case AttributeDefinitionConstants.ATTRIBUTE_TYPE_STRING:          return "string";
            case AttributeDefinitionConstants.ATTRIBUTE_TYPE_INT:             return "integer";
            case AttributeDefinitionConstants.ATTRIBUTE_TYPE_DOUBLE:          return "double";
            case AttributeDefinitionConstants.ATTRIBUTE_TYPE_MULTIPLE_STRING: return "multiple_string";
            case AttributeDefinitionConstants.ATTRIBUTE_TYPE_MULTIPLE_INT:    return "multiple_integer";
            case AttributeDefinitionConstants.ATTRIBUTE_TYPE_MULTIPLE_DOUBLE: return "multiple_double";
            // other attribute types are not supported
            default: return null;
        }
    }
    
 	/**
     * converts an attribute value that can be either a String, Integer or Double
     * or an Iterator of the above, to a plain String. If the value is null, an
     * empty string is returned.
     */
    public static String convertAttributeValueToString( Object value , boolean isMultiple)
    {
        if ( value == null )
        {
            return "";
        }
        
        else if ( !isMultiple )
        {
            return value.toString();
        }
        else
        {
            Iterator<?> iter = (Iterator<?>) value;
            StringBuffer result = new StringBuffer();

            while ( iter.hasNext() )
            {
                Object item = iter.next();
                if ( item != null )
                {
                    result.append( item.toString() );
                }

                if ( iter.hasNext() )
                {
                    result.append( AttributeDefinitionConstants.MULTIPLE_ATTR_DELIMITER);
                }
            }

            return result.toString();
        }
    }

%><%!
    LocaleMgr localeMgr = (LocaleMgr)NamingMgr.getInstance().lookupManager(LocaleMgr.REGISTRY_NAME);
    LocaleInformation leadLocale = localeMgr.getLeadLocale();    
%><%
    Object value = null;
    ExtensibleObject object = (ExtensibleObject)getObject((String)getObject("extensibleobject"));
    LocaleInformation locale = (LocaleInformation)getObject((String)getObject("locale"));
    if(locale == null)
    {
    	locale = Request.getCurrent().getLocale();
    }
    String attributename = (String)getObject("attributename");

    String type = getAttributeTypeAsString( attributename, object );

    if( type == null || attributename ==null 
    || object == null || attributename==null)
    {
    	%>(<% {out.write(localizeISText("PrintAttribute.NoAttribute",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<%
    }
    else
    {

	    boolean isMultiple  = type.startsWith("multiple");
	    boolean isLocalized = false;
	    boolean isLanguageMissing = false;
	    
	    isLocalized = object.isAttributeLocalized( attributename );
	
	
		if(isLocalized)
		{
			//Try current request locale
			if(isMultiple)
			{
				value = object.getMultipleLocalizedAttributes( attributename, locale );
			}
			else
			{
				value = object.getLocalizedAttribute(attributename, locale);
			}
			
			//Try current lead locale
			if(value == null)
			{
				isLanguageMissing = true;
				if(isMultiple)
				{
					value = object.getMultipleLocalizedAttributes( attributename, leadLocale );
				}
				else
				{
					value = object.getLocalizedAttribute(attributename, leadLocale);
				}
				
			}
		}
		else
		{
			if(isMultiple)
			{
			   	value = object.getMultipleAttributes( attributename );
			}
			else
			{
				value = object.getAttribute( attributename );
			}
		}
		
		String result = convertAttributeValueToString( value, isMultiple);

	    if (!result.isEmpty())
	    {
	        out.print(encodeString(result.trim()));
	        if(isLanguageMissing)
	        {
	        	%><% {out.write(localizeISText("CatalogCategory.LanguageMissing.input",null,null,null,null,null,null,null,null,null,null,null,null));} %><%
	        }
	    }
	    else
	    {
	        %>(<% {out.write(localizeISText("PrintAttribute.NoAttribute",null,null,null,null,null,null,null,null,null,null,null,null));} %>)<%
	    }
    
    }
%><% printFooter(out); %>