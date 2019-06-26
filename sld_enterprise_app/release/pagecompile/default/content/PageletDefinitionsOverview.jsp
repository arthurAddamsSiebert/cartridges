<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><!DOCTYPE html>
<html>
	<head><% insertIntershopSignature(request,(com.intershop.beehive.core.capi.request.ServletResponse)response); %>
		<title><% {out.write(localizeISText("PageletDefinitionsOverview.AvailableComponentTypes.title",null,null,null,null,null,null,null,null,null,null,null,null));} %></title>
		<style type="text/css">
		
		* {
		    color: #333333;
		    margin: 0;
		    padding: 0;
		}
		body {
		    color: #333333;
		    font-family: verdana;
		    font-size: 12px;
		    line-height: 18px;
		    position: relative;
		}
		
		.clearfix:before,
		.clearfix:after {
			display: table;
			content: " ";
		}
		
		.clearfix:after {
			clear: both;
		}
		
		h1 { 
			display: block;
			padding: 12px 10px;
			border-bottom: 1px solid #bbbbbb;
		}
		
		h2 {
		    color: #333333;
		    font-size: 150%;
		    line-height: 24px;
		    margin: 10px 10px 0px 10px;
		    padding: 2px;
		}
		h2 .groupName {
			font-size: 70%;
			margin-left: 20px;
		}
		
		ul {
		    list-style-type: none;
		    margin: 0 20px;
		   
		}
		ul li {
		    background: #fefefe;
		    border: 1px solid #bbbbbb;
		    margin: 0 0 10px 0;
		    padding: 10px;
		}
		ul ul {
		    margin: 10px 20px;
		}
		
		ul ul ul li {
		    border: 0;
		    margin: 0;
		    padding: 0;
		    list-style-type: disc;
		}
		
		ul ul ul li a {
			text-decoration: none;
		}
		ul ul ul li a:hover {
			text-decoration: underline;
		}
		
		/* NAV */
		.component-nav {
			background: #eeeeee;
			border-right: 1px solid #bbbbbb;
			position: fixed;
			overflow: auto;
			top: 43px;
			left: 0;
			width: 25%;
			height: calc( 100% - 43px );
		}
		
		.component-nav li {
			border: 0;
			padding: 0;
			background: none;
			margin: 5px;
			
		}
		.component-nav .group {
			font-weight: 700;
			font-size: 120%;
		}
		.component-nav .title {
			padding: 0 10px;
		}
		.component-nav a {
			text-decoration: none;
		}
		.component-nav a:hover {
			text-decoration: underline;
		}
		
		
		/* COMPONENT */
		.component-content {
			position: fixed;
			overflow: auto;
			top: 43px;
			right: 0;
			width: 74.5%;
			height: calc( 100% - 43px );
		}
		
		.component {
		    background: #eeeeee;
		    border: 1px dotted #bbbbbb;
		    margin: 10px;
		    padding: 10px;
		}
		
		.attribute {
			color: #999999;
			font-style: italic;
		}
		.attribute-value {
			color: #333333;
		}
		
		.info-description {
		    margin: 0px 0px 5px 12px;
		  
		  
		}
		
		.pageletDescription{
		  width: calc( 100% - 120px );
		  float: left;
	      margin-bottom: 20px;
		}
		
		.info-model, 
		.info-callParameter,
		.info-callParameterInterfaces, 
		.info-configurationParameters, 
		.info-contentEntryPointExtensions,
		.info-slots,
		.info-renderPipeline,
		.info-renderTemplate {
		    background: #F4F4F4;
		}
		
		.info-slots li > b.title {
		    font-size: 120%;
		}
		
		.info-callParameter li, 
		.info-callParameterInterfaces li,
		.info-contentEntryPointExtensions li {
		    border: 0;
		    margin: 0;
		    padding: 0;
		    list-style-type: disc;
		    background: none;
		}
		
		.pageletImage{
		
		 	float: left;
    	 	width: 80px;
    	 	margin-top:10px;
			margin-left: 20px;
    	}
    	
    	.pageletImage>img{
    		float: right;
    		width: 80px;
    		background: #ffffff;
    		border: 1px solid #bbbbbb;
    	}
    	
    	.infolist{
    		clear: left;
		}
		
		.error {
			color: #B30015;
		}
		
		</style>
		
	</head>
	<body>
	
	<h1><% {out.write(localizeISText("PageletDefinitionsOverview.AvailableComponentTypes",null,null,null,null,null,null,null,null,null,null,null,null));} %></h1>
	
	<div class="component-nav">
		<ul>
			<% {Object temp_obj = (""); getPipelineDictionary().put("group", temp_obj);} %>
			<% while (loop("PageletDefinitions","pd",null)) { %>
				<% {Object temp_obj = ((context.getFormattedValue(pad(context.getFormattedValue(getObject("PageletModelUtils:DisplayName(pd,CurrentRequest:Locale)"),null),((Number)(new Double(1))).intValue()),null).trim())); getPipelineDictionary().put("currentGroup", temp_obj);} %>
				<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("currentGroup"),null).equals(context.getFormattedValue(getObject("group"),null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",208,e);}if (_boolean_result) { %>
					<li class="group">
						<% {String value = null;try{value=context.getFormattedValue(getObject("currentGroup"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {210}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</li>
					<% {Object temp_obj = (getObject("currentGroup")); getPipelineDictionary().put("group", temp_obj);} %>
				<% } %>
				<li class="title">
					<a href="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("pd:PageletModel:Name"),null),null)),null)%>"><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(pd,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {215}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></a>
				</li>
			<% } %>
		</ul>
	</div>
	
	<div class="component-content">
		<% while (loop("PageletDefinitions","pd",null)) { %>
			<div class="component" id="<%=context.getFormattedValue(encodeString(context.getFormattedValue(getObject("pd:PageletModel:Name"),null)),null)%>">
				<div class="pageletImage">
					<img src="<%=context.getFormattedValue(url(true,(new URLPipelineAction(context.getFormattedValue("ViewPageletImage-Start",null))),(new URLParameterSet().addURLParameter(context.getFormattedValue("QualifiedName",null),context.getFormattedValue(getObject("pd:QualifiedName"),null)))),null)%>">
				</div>
				<div class="pageletDescription">
					<h2>
						<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(pd,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {229}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<span class="groupName">(<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayGroup(pd,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {230}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>)</span>
					</h2>
					<div class="info-description">
						<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:Description(pd,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {233}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</div>
				</div>
				
				<ul class="infolist">
					<li class="info-model">
						<b><% {out.write(localizeISText("PageletDefinitionsOverview.Model.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
						<% {String value = null;try{value=context.getFormattedValue(replace(context.getFormattedValue(getObject("pd:PageletModel:Name"),null),(String)(".pagelet2"),(String)("")),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {240}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
					</li>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pd:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",243,e);}if (_boolean_result) { %>
						<li class="info-configurationParameters">
							<b><% {out.write(localizeISText("PageletDefinitionsOverview.ConfigurationParameters.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<ul>
								<% while (loop("pd:ConfigurationParameterDefinitions","cpd",null)) { %>
									<li>
										<b><% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(cpd,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {249}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b><br/>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("PageletModelUtils:Description(cpd,CurrentRequest:Locale)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",250,e);}if (_boolean_result) { %>
											<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:Description(cpd,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {251}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
										<% } %>
										<br/>
										<div class="attribute">name="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("cpd:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>" typeReference="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("cpd:TypeReference"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {254}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>"</div>							
									</li>
								<% } %>
							</ul>
						</li>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pd:SlotInclusionDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",261,e);}if (_boolean_result) { %>
						<li class="info-slots">
							<b><% {out.write(localizeISText("PageletDefinitionsOverview.Slots.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<ul>
								<% while (loop("pd:SlotInclusionDefinitions","SlotInclusionDefinition",null)) { %>
									<% {Object temp_obj = (getObject("PageletModelUtils:SlotDefinition(SlotInclusionDefinition:SlotDefinition:ReferencedName,PageletModelRepository)")); getPipelineDictionary().put("SlotDefinition", temp_obj);} %>
									<li>
										<b class="title"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:DisplayName:get(CurrentRequest:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {268}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></b><br/>
										<% _boolean_result=false;try {_boolean_result=((Boolean)(((!(context.getFormattedValue(getObject("SlotDefinition:Description:get(CurrentRequest:Locale:LocaleID)"),null).equals(context.getFormattedValue("",null)))) ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",269,e);}if (_boolean_result) { %>
											<% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:Description:get(CurrentRequest:Locale:LocaleID)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {270}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %><br/>
										<% } %>
										<br/>
										<div class="attribute">referencedName="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:QualifiedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>" multiplicity="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:Multiplicity"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>" lowerBound="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:LowerBound"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>" upperBound="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("SlotDefinition:UpperBound"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {273}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>"</div>
										<br/>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SlotDefinition:ConfigurationParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",275,e);}if (_boolean_result) { %>
											<b><% {out.write(localizeISText("PageletDefinitionsOverview.ConfigurationParameters",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
											<ul>
												<% while (loop("SlotDefinition:ConfigurationParameterDefinitions","cpd",null)) { %>
													<li>
														<% {String value = null;try{value=context.getFormattedValue(getObject("cpd"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {280}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
													</li>
												<% } %>
											</ul>
										<% } %>
										<b><% {out.write(localizeISText("PageletDefinitionsOverview.AssignableComponents",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
										<% {Object temp_obj = (getObject("PageletModelUtils:ComponentTypes(SlotDefinition,PageletModelRepository)")); getPipelineDictionary().put("AllowedDefinitions", temp_obj);} %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("AllowedDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",287,e);}if (_boolean_result) { %>
											<ul>
												<% while (loop("AllowedDefinitions","ad",null)) { %>
													<li>
														<a href="<%=context.getFormattedValue(encodeString(context.getFormattedValue(context.getFormattedValue("#",null) + context.getFormattedValue(getObject("ad:PageletModel:Name"),null),null)),null)%>">
															<% {String value = null;try{value=context.getFormattedValue(getObject("PageletModelUtils:DisplayName(ad,CurrentRequest:Locale)"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {292}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
														</a>
													</li>
												<% } %>
											</ul>
										<% } else { %>
											<% {out.write(localizeISText("PageletDefinitionsOverview.None",null,null,null,null,null,null,null,null,null,null,null,null));} %>
										<% } %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SlotDefinition:CallParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",300,e);}if (_boolean_result) { %>
											<b><% {out.write(localizeISText("PageletDefinitionsOverview.CallParameter.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
											<ul>
												<% while (loop("SlotDefinition:CallParameterDefinitions","callpd",null)) { %>
													<li>
														<div class="attribute">name="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("callpd:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {305}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>" type="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("callpd:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {305}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>"</div>
													</li>
												<% } %>
											</ul>
										<% } %>
										<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("SlotDefinition:CallParameterInterfaces") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",310,e);}if (_boolean_result) { %>
											<b><% {out.write(localizeISText("PageletDefinitionsOverview.CallParameterInterfaces.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
											<ul class="callParameterInterfaces">
												<% while (loop("SlotDefinition:CallParameterInterfaces","cpi",null)) { %>
													<li>
														<% {String value = null;try{value=context.getFormattedValue(getObject("cpi:ReferencedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {315}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
													</li>
												<% } %>
											</ul>
										<% } %>
									</li>
								<% } %>
							</ul>
						</li>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pd:CallParameterDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",326,e);}if (_boolean_result) { %>
						<li class="info-callParameter">
							<b><% {out.write(localizeISText("PageletDefinitionsOverview.CallParameter.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<ul>
								<% while (loop("pd:CallParameterDefinitions","callpd",null)) { %>
									<li>
										<div class="attribute">name="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("callpd:Name"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {332}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>" type="<span class="attribute-value"><% {String value = null;try{value=context.getFormattedValue(getObject("callpd:Type"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {332}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %></span>"</div>
									</li>
								<% } %>
							</ul>
						</li>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pd:CallParameterInterfaces") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",339,e);}if (_boolean_result) { %>
						<li class="info-callParameterInterfaces">
							<b><% {out.write(localizeISText("PageletDefinitionsOverview.CallParameterInterfaces.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<ul class="callParameterInterfaces">
								<% while (loop("pd:CallParameterInterfaces","cpi",null)) { %>
									<li>
										<% {String value = null;try{value=context.getFormattedValue(getObject("cpi:ReferencedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {345}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</li>
								<% } %>
							</ul>
						</li>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((hasLoopElements("pd:ContentEntryPointExtensionDefinitions") ? Boolean.TRUE : Boolean.FALSE))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",352,e);}if (_boolean_result) { %>
						<li class="info-callParameterInterfaces">
							<b><% {out.write(localizeISText("PageletDefinitionsOverview.ContentEntryPointExtension.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<ul class="info-contentEntryPointExtensions">
								<% while (loop("pd:ContentEntryPointExtensionDefinitions","ceped",null)) { %>
									<li>
										<% {String value = null;try{value=context.getFormattedValue(getObject("ceped:ContentEntryPointDefinition:ReferencedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {358}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
									</li>
								<% } %>
							</ul>
						</li>
					<% } %>
					
					<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pd:RenderPipeline"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",365,e);}if (_boolean_result) { %>
						<li class="info-renderPipeline">
							<b><% {out.write(localizeISText("PageletDefinitionsOverview.RenderPipeline.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
							<% {String value = null;try{value=context.getFormattedValue(getObject("pd:RenderPipeline:ReferencedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {368}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						</li>
					<% } %>
					
					<li class="info-renderTemplate">
						<b><% {out.write(localizeISText("PageletDefinitionsOverview.RenderTemplate.info",null,null,null,null,null,null,null,null,null,null,null,null));} %></b><br/>
						<% _boolean_result=false;try {_boolean_result=((Boolean)((disableErrorMessages().isDefined(getObject("pd:RenderTemplate:ReferencedName"))))).booleanValue();} catch (Exception e) {Logger.debug(this,"Boolean expression in line {} could not be evaluated. False returned. Consider using the 'isDefined' ISML function.",374,e);}if (_boolean_result) { %>
							<% {String value = null;try{value=context.getFormattedValue(getObject("pd:RenderTemplate:ReferencedName"),null,null);}catch(Exception e){value=null;Logger.error(this,"ISPRINT has an invalid expression. Returning empty string. Line: {375}",e);}if (value==null) value="";value = encodeString(value);out.write(value);} %>
						<% } else { %>
							<span class="error"><% {out.write(localizeISText("PageletDefinitionsOverview.Missing",null,null,null,null,null,null,null,null,null,null,null,null));} %></span>
						<% } %>
					</li>
					
				</ul>
			</div>
		<% } %>
	</div>
	
	</body>
</html><% printFooter(out); %>