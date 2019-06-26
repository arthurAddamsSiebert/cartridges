<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><script language="JavaScript" type="text/javascript">
<!--
//Selects or deselects all elements of a specific form with a specific name
//(or part of the name), as well as enables and disables a layer with specified
//id's. It depends on the visibility of the select layer whether the form
//elements are selected or not.
//formName: name of the form to handle
//partOfFormElementName: part of the name of the form elements
//selectLayerID: the layer that contains the 'Select All' link
//clearLayerID: the layer that contains the 'Clear All' link
function selectAllWithName(formName, partOfFormElementName, selectLayerID, clearLayerID)
{
//alert(formName + ", " + partOfFormElementName + ", " + selectLayerID + ", " + clearLayerID);
var formElements = document.forms[formName].elements;
var select = true;
if (document.getElementById(selectLayerID).style.display == "none") 
{
select = false;
}
for (var i=0; i<formElements.length; i++) 
{
if ( ( -1 != formElements[i].name.indexOf(partOfFormElementName) ) &&
( formElements[i].disabled == false ) &&
( ( formElements[i].type == "checkbox" ) ||
( formElements[i].type == "radio" ) ) ) 
{
formElements[i].checked = select;
}
}
if ( select ) 
{
document.getElementById(selectLayerID).style.display="none";
document.getElementById(clearLayerID).style.display="block";
}
else 
{
document.getElementById(selectLayerID).style.display="block";
document.getElementById(clearLayerID).style.display="none";
}
}
function selectAllServer(formName)
{
var state = (document.getElementById('C').style.display == "none") ? 1 : 0; 
var cbTotal = document[formName].elements.length;
for (var i = 0; i < cbTotal; i++)
{
if (state == 0)
{
selectElement(document[formName].elements[i], true);
}
else
{
selectElement(document[formName].elements[i], false);
}
}
if (state == 0)
{
state = 1;
document.getElementById('C').style.display = "none";
document.getElementById('D').style.display = "block";
}
else
{
state = 0;
document.getElementById('C').style.display = "block";
document.getElementById('D').style.display = "none";
}
}
function selectAllFiles(formName, elementName)
{
var state = (document.getElementById('A').style.display == "none") ? 1 : 0; 
var cbTotal = document[formName].elements.length;
for (var i = 0; i < cbTotal; i++)
{
if (document[formName].elements[i].name == elementName)
{
if (state == 0)
{
selectElement(document[formName].elements[i], true);
}
else
{
selectElement(document[formName].elements[i], false);
}
}
}
if (state == 0)
{
state = 1;
document.getElementById('A').style.display = "none";
document.getElementById('B').style.display = "block";
}
else
{
state = 0;
document.getElementById('A').style.display = "block";
document.getElementById('B').style.display = "none";
}
}
function selectElement(element, value) 
{
if (element.disabled != true)
{
element.checked = value;
}
}
function changeElementState(id)
{
var element = document.getElementById(id);
if (element.disabled == true)
{
element.disabled = false;
}
else
{
if (element.value == "")
{
element.disabled = true;
}
}
}
function selectAll(formName)
{
var state = (document.getElementById('A').style.display == "none") ? 1 : 0; 
var cbTotal = document[formName].elements.length;
for (var i = 0; i < cbTotal; i++) 
{
if (state == 0)
{
selectElement(document[formName].elements[i], true);
}
else
{
selectElement(document[formName].elements[i], false);
}
}
if (state == 0)
{
state = 1;
document.getElementById('A').style.display = "none";
document.getElementById('B').style.display = "block";
}
else
{
state = 0;
document.getElementById('A').style.display = "block";
document.getElementById('B').style.display = "none";
}
}
// -->
</script><% printFooter(out); %>