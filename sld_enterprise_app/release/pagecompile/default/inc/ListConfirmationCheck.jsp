<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script language="JavaScript" type="text/javascript">
<!--
// check if at least one item is selected and submits the form, on the other hand it shows the passed error layer
// formName - name of the formular
// namePrefix - prefix of checkBox names
// errorLayerName - name of the layer to show as error
// formAction (optional) - action url for form, only assigned if set and not empty
function checkCB(formName, namePrefix, errorLayerName) {
checkCB(formName, namePrefix, errorLayerName, '');
}
function checkCB(formName, namePrefix, errorLayerName, formAction) {
self.scrollBy(0, -1000);
checkElements('checkbox', formName, namePrefix, errorLayerName, formAction);
}
// check if at least one radio item is selected and submits the form, on the other hand it shows the passed error layer
// formName - name of the formular
// namePrefix - prefix of radio groups items names
// errorLayerName - name of the layer to show as error
// formAction (optional) - action url for form, only assigned if set and not empty
function checkRG(formName, namePrefix, errorLayerName) {
checkRG(formName, namePrefix, errorLayerName, '');
}
function checkRG(formName, namePrefix, errorLayerName, formAction) {
self.scrollBy(0, -1000);
checkElements('radio', formName, namePrefix, errorLayerName, formAction);
}
// check if at least one item is selected and submits the form, on the other hand it shows the passed error layer
// type - 'radio' to handle radio buttons, 'checkbox' to handle checkboxes
// formName - name of the formular
// namePrefix - prefix of checkBox names
// errorLayerName - name of the layer to show as error
// formAction (optional) - action url for form, only assigned if set and not empty
function checkElements(type, formName, namePrefix, errorLayerName, formAction) {
var formRef = document.forms[formName];
for (var i = 0; i < formRef.elements.length; i++) {
if ( ( formRef.elements[i].name.indexOf(namePrefix) == 0) &&
( formRef.elements[i].type == type ) &&
( formRef.elements[i].disabled == false ) &&
( formRef.elements[i].checked == true) ) {
if ( formAction &&
(formAction != '' ) ) {
formRef.action=formAction;
}
formRef.submit();
return;
}
}
document.getElementById(errorLayerName).style.display='block';
}
// -->
</script><% printFooter(out); %>