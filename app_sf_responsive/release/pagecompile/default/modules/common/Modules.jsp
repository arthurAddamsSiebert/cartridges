<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%! protected Boolean printTemplateMarker() { return Boolean.FALSE; } %><%%><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% context.setCustomTagTemplateName("garblestring","modules/common/GarbleString.isml",false,new String[]{"text","direction","length","character","output"},null); %><% context.setCustomTagTemplateName("moneycalculator","modules/common/MoneyCalculator.isml",false,new String[]{"method","operand1","operand2","result"},null); %><% context.setCustomTagTemplateName("moneycomparator","modules/common/MoneyComparator.isml",false,new String[]{"method","operand1","operand2","comparisonresult"},null); %><% context.setCustomTagTemplateName("getcurrentdomain","modules/common/GetCurrentDomain.isml",true,null,new String[]{"CurrentDomain"}); %><% context.setCustomTagTemplateName("getpreference","modules/common/GetPreference.isml",false,new String[]{"preferencekey","domainname","type","return"},null); %><% context.setCustomTagTemplateName("href","modules/common/Link.isml",false,new String[]{"link","linkparameters","forcesecure","forceinsecure"},null); %><% context.setCustomTagTemplateName("link","modules/common/LinkURL.isml",false,new String[]{"link","linkparameters","forcesecure","forceinsecure","encoding"},null); %><% context.setCustomTagTemplateName("metadatasetup","modules/common/MetaDataSetup.isml",false,new String[]{"custommetadatamap","defaulttitle","defaultdescription","defaultkeywords"},null); %><% context.setCustomTagTemplateName("breadcrumb","modules/common/Breadcrumb",true,new String[]{"separator","showhomelink","categorybo","categoryoffset","product","searchresult","searchterm","link0","text0","link1","text1","link2","text2","link3","text3","link4","text4","separatetrailtext","trailtext0","trailtext1","trailtext2","trailtext3","trailtext4","class"},null); %><% context.setCustomTagTemplateName("customattribute","modules/common/CustomAttribute",false,new String[]{"attributelabel","attributevalue","attributeseparator","twolined"},null); %><% context.setCustomTagTemplateName("image","modules/common/Image.isml",false,new String[]{"imagecontainer","imagetypeid","imageview","class","alttext","richsnippetsenabled","datatestingid"},null); %><% context.setCustomTagTemplateName("tooltip","modules/common/Tooltip.isml",true,new String[]{"linkclass","linktext","linktextkey","headline","headlinekey","content","contentkey","contenttype","placement"},null); %><% context.setCustomTagTemplateName("getindirectvalue","modules/common/GetIndirectValue.isml",false,new String[]{"key","entry"},null); %><% context.setCustomTagTemplateName("fielderrormessageplaceholder","modules/common/FieldErrorMessagePlaceholder.isml",false,new String[]{"class","fieldname","ext_string_prefix","error_message_override","name_override","is_error"},null); %><% context.setCustomTagTemplateName("fielderrorlist","modules/common/FieldErrorList.isml",false,new String[]{"fieldname","ext_string_prefix","error_message_override"},null); %><% context.setCustomTagTemplateName("seq-init","modules/common/isseq-init.isml",false,new String[]{"name","modulo"},null); %><% context.setCustomTagTemplateName("seq-next","modules/common/isseq-next.isml",false,new String[]{"name"},null); %><% context.setCustomTagTemplateName("datepicker","modules/common/DatePicker.isml",false,new String[]{"locale","input_id","dates_disabled","start_date","end_date","select_month","days_of_week_disabled"},null); %><% context.setCustomTagTemplateName("createmap","modules/common/CreateMap",false,new String[]{"mapname","mode","key0","value0","key1","value1","key2","value2","key3","value3","key4","value4","key5","value5","key6","value6","key7","value7","key8","value8","key9","name"},null); %><% printFooter(out); %>