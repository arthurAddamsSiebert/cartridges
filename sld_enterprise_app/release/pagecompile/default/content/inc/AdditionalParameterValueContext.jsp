<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %>
<%@page import="com.intershop.component.pmc.capi.model.PageletModelRepository"%>
<%@page import="com.intershop.component.pmc.capi.definition.pagelet.ConfigurationParameterType"%>
<%@page import="com.intershop.sellside.pmc.capi.PageletModelUtils"%>
<%@page import="com.intershop.component.pmc.capi.definition.pagelet.ConfigurationParameterDefinition"%>
<%@page import="com.intershop.beehive.emf.core.Parameter"%>
<%@page import="com.intershop.beehive.emf.core.ParameterValueBinding"%>
<% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%!public static class ValueContext
    {
        private PageletModelRepository pageletModelRepository;
        private ConfigurationParameterDefinition cpd;

        private ValueContext(PageletModelRepository pageletModelRepository, ConfigurationParameterDefinition cpd)
        {
            this.pageletModelRepository = pageletModelRepository;
            this.cpd = cpd;
            if (cpd == null) throw new RuntimeException("Attribute \"ConfigurationParameterDefinition\" must not be null.");
            if (pageletModelRepository == null) throw new RuntimeException("Attribute \"PageletModelRepository\" must not be null.");
        }

        public Object getValueOf(ParameterValueBinding<Parameter> pvb)
        {
            ConfigurationParameterType type = PageletModelUtils.INSTANCE.getConfigurationParameterType(cpd, pageletModelRepository);
            Parameter p = type.getAdditionalParametersAsMap().get(pvb.getName());

            if (p != null)
            {
                String javaType = p.getType();
                if (javaType == null || javaType.equals("java.lang.String"))
                {
                    return pvb.getValue();
                }
                else
                {

                    Object ret = null;
                    try
                    {
                        ret =
                            StringUtil.convertStringValue(pvb.getValue(), getClass().getClassLoader().loadClass(javaType));
                        if (ret == null) Logger.warn(this, "", javaType);
                    }
                    catch(ClassNotFoundException cnfe)
                    {
                        String msg =
                            String.format("Invalid type '%s' configured in configuration parameter type '%s'.", javaType, type.getQualifiedName());
                        Logger.error(this, msg, cnfe);
                    }

                    return (ret != null) ? ret : pvb.getValue();
                }
            }
            return pvb.getValue();
        }
    }%><%
    getPipelineDictionary().put("ValueContext", new ValueContext((PageletModelRepository)getObject("PageletModelRepository"), (ConfigurationParameterDefinition)getObject("ConfigurationParameterDefinition")));
%><% printFooter(out); %>