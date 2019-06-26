<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script language="JavaScript" type="text/javascript">
<!--
// CASE 2: Simple Delete List
// check if at least one item is selected, on the other hand it display an error message
function checkSelected(formName) {
var state = 0;
var cbTotal = document[formName].elements.length;
for (var i=0;i<cbTotal;i++) {
if (document[formName].elements[i].checked == true){
document.getElementById('nothing').style.display='none';
document.getElementById('confirm').style.display='block';
state = 1;
}
}
if(state==0){
document.getElementById('confirm').style.display='none';
document.getElementById('nothing').style.display='block';
}
}
// CASE 3: Advanced Delete List
// check if at least one item is selected, on the other hand it display an error message
function checkSelectedMulti(which,formName) {
var state = 0;
var cbTotal = document[formName].elements.length;
// hide all on click
document.getElementById('confirm_list1').style.display='none';
document.getElementById('nothing_list1').style.display='none';
document.getElementById('confirm_list2').style.display='none';
document.getElementById('nothing_list2').style.display='none';
for (var i=0;i<cbTotal;i++) {
if (document[formName].elements[i].checked == true){
if(which==1){
document.getElementById('confirm_list1').style.display='block';
}
else{
document.getElementById('confirm_list2').style.display='block';
}
state = 1;
}
}
if(state==0){
if(which==1){
document.getElementById('nothing_list1').style.display='block';
}
else{
document.getElementById('nothing_list2').style.display='block';
}
}
}
// remove selected items used for lists if action changes
function removeProduct(formName,formAction){
document[formName].action = formAction;
document[formName].submit();
}
-->
</script><% printFooter(out); %>