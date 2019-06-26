<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><%--
  ~ Licensed to the Apache Software Foundation (ASF) under one
  ~ or more contributor license agreements. See the NOTICE file
  ~ distributed with this work for additional information
  ~ regarding copyright ownership. The ASF licenses this file
  ~ to you under the Apache License, Version 2.0 (the
  ~ "License"); you may not use this file except in compliance
  ~ with the License. You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied. See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>

<%@ page import="org.apache.axis2.Constants,
                 org.apache.axis2.description.AxisOperation" %>
<%@ page import="org.apache.axis2.description.AxisService" %>
<%@ page import="org.apache.axis2.description.Parameter" %>
<%@ page import="org.apache.axis2.engine.AxisConfiguration" %>
<%@ page import="org.apache.axis2.util.JavaUtils" %>
<%@ page import="java.util.Hashtable" %>
<%@ page import="java.util.Iterator" %>
<h1><% {out.write(localizeISText("templates.listSingleService.ListSingleService","",null,null,null,null,null,null,null,null,null,null,null));} %></h1>
<%
    String isFault = (String) request.getSession().getAttribute(Constants.IS_FAULTY);
    String servicName = request.getParameter("serviceName");
    if (Constants.IS_FAULTY.equals(isFault)) {
        Hashtable errornessservices = (Hashtable) request.getSession().getAttribute(Constants.ERROR_SERVICE_MAP);
%>
<h3><% {out.write(localizeISText("templates.listSingleService.ThisAxisServiceHasDeploymentFaults","",null,null,null,null,null,null,null,null,null,null,null));} %></h3><%
%><font color="red"><%=(String) errornessservices.get(servicName) %></font>
<%

} else {

    AxisService axisService =
            (AxisService) request.getSession().getAttribute(Constants.SINGLE_SERVICE);
    if (axisService != null) {
        Iterator opItr = axisService.getOperations();
        //operationsList = operations.values();
        String serviceName = axisService.getName();
%><h2><font color="blue"><a href="<%=axisService.getName()%>?wsdl"><%=serviceName%></a></font></h2>
<font color="blue"><% {out.write(localizeISText("templates.listSingleService.ServiceEPR","",null,null,null,null,null,null,null,null,null,null,null));} %> </font><font color="black"><%=axisService.getName()%></font><br>
<%
    boolean disableREST = false;
    AxisConfiguration axisConfiguration = axisService.getAxisConfiguration();

    Parameter parameter;

    // do we need to completely disable REST support
    parameter = axisConfiguration.getParameter(Constants.Configuration.DISABLE_REST);
    if (parameter != null) {
        disableREST = !JavaUtils.isFalseExplicitly(parameter.getValue());
    }
    if (!disableREST ) {
%>
<%
    }


    String serviceDescription = axisService.getDocumentation();
    if (serviceDescription == null || "".equals(serviceDescription)) {
        serviceDescription = "No description available for this service";
    }
%>
<h4><% {out.write(localizeISText("templates.listSingleService.ServiceDescription","",null,null,null,null,null,null,null,null,null,null,null));} %> <font color="black"><%=serviceDescription%></font></h4>

<i><font color="blue"><% {out.write(localizeISText("templates.listSingleService.ServiceStatus","",null,null,null,null,null,null,null,null,null,null,null));} %> <%=axisService.isActive() ? "Active" : "InActive"%></font></i><br>
<%
    if (opItr.hasNext()) {
%><i><% {out.write(localizeISText("templates.listSingleService.AvailableOperations","",null,null,null,null,null,null,null,null,null,null,null));} %></i><%
} else {
%><i> <% {out.write(localizeISText("templates.listSingleService.ThereAreNoOperationsSpecified","",null,null,null,null,null,null,null,null,null,null,null));} %></i><%
    }
    opItr = axisService.getOperations();
%><ul><%
    while (opItr.hasNext()) {
        AxisOperation axisOperation = (AxisOperation) opItr.next();
%><li><%=axisOperation.getName().getLocalPart()%></li>
    <%--                <br>Operation EPR : <%=prifix + axisService.getName().getLocalPart() + "/"+ axisOperation.getName().getLocalPart()%>--%>
    <%
        }
    %></ul>
<%
} else {
%>
<h3><font color="red">No services found in this location</font></h3>
<%
        }

    }
%>
<% printFooter(out); %>