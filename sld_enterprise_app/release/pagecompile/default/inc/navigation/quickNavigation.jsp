<%@  page buffer="none" import="java.util.*,java.io.*,com.intershop.beehive.core.internal.template.*,com.intershop.beehive.core.internal.template.isml.*,com.intershop.beehive.core.capi.log.*,com.intershop.beehive.core.capi.resource.*,com.intershop.beehive.core.capi.util.UUIDMgr,com.intershop.beehive.core.capi.util.XMLHelper,com.intershop.beehive.foundation.util.*,com.intershop.beehive.core.internal.url.*,com.intershop.beehive.core.internal.resource.*,com.intershop.beehive.core.internal.wsrp.*,com.intershop.beehive.core.capi.pipeline.PipelineDictionary,com.intershop.beehive.core.capi.naming.NamingMgr,com.intershop.beehive.core.capi.pagecache.PageCacheMgr,com.intershop.beehive.core.capi.request.SessionMgr,com.intershop.beehive.core.internal.request.SessionMgrImpl,com.intershop.beehive.core.pipelet.PipelineConstants" extends="com.intershop.beehive.core.internal.template.AbstractTemplate" %><% 
boolean _boolean_result=false;
TemplateExecutionConfig context = getTemplateExecutionConfig();
createTemplatePageConfig(context.getServletRequest());
printHeader(out);
 %><% %><%@ page contentType="text/html;charset=utf-8" %><%setEncodingType("text/html"); %><% out.print(context.prepareWAPlacement("CSSWebLibraries")); %>navigation/quickNavigation.css<% out.print("</waplacement>"); %><% out.print(context.prepareWAPlacement("JSWebLibraries")); %>jquery/hotkeys/jquery.hotkeys.js<% out.print("</waplacement>"); %><script type="text/javascript">
$(function() {
var 
searchDialogSelector = '<%=context.getFormattedValue("#",null)%>quickNavigation',
searchFieldSelector = "[name='quickNavigationField']",
searchResultSelector = '<%=context.getFormattedValue("#",null)%>quickNavigationResult';
// open search panel - global shortcut: ctrl+space
$(document).bind('keydown', 'ctrl+space', function(event) {
$(searchDialogSelector).on( "dialogopen", function( event, ui ) {
// stop bubbling key events to higher levels (e.g. prevent main page from scrolling, ...)
$(event.target).on('keydown', function(e) {
// escape key (this is handled by the modal panel itself)
if (e.which !== 27) {
e.stopPropagation();
}
});
// click outside the dialog will close the dialog. bind each time the dialog is opened 
$('.ui-widget-overlay').bind( 'click', function() {
$(searchDialogSelector).dialog('close');
$('.ui-widget-overlay').unbind();
}); 
});
$(searchDialogSelector).dialog('open');
// select search input field
$(searchDialogSelector).find('[name="quickNavigationField"]').select();
return false;
});
// pressing the cursor down key within the search field will select the first search result (if available) 
$(searchFieldSelector).bind('keydown', 'down', function(e){
$(searchResultSelector).find('[data-keyboard-focus]').eq(0).focus();
return false;
});
// pressing return within the search field will also select the first search result (if available)
$(searchFieldSelector).bind('keyup', 'return', function(e){
$(searchResultSelector).find('[data-keyboard-focus]').eq(0).focus();
return false;
});
// pressing return within the search field will also select the first search result (if available)
$(searchFieldSelector).bind('keydown', 'tab', function(e){
$(searchResultSelector).find('[data-keyboard-focus]').eq(0).focus();
return false;
});
// run search after each key stroke within the search field
$(searchFieldSelector).keyup(function(e) {
// ignore cursor keys and the return key
if ($.inArray(e.which, [37, 38, 39, 40, 13]) < 0) {
e.stopPropagation();
var resultList = $(searchResultSelector);
// clear results
resultList.find('*').remove();
var searchString = $(this).val().toLowerCase();
// search words are separated by spaces (allow multiple matches)
var searchWords = searchString.split(" ");
// for avoiding dublicate links utilize this blacklist
var blackList = [];
// search all anchor references in the current page and match with the search term
$("a").each(function(i, link) {
var linkName = $(link).text().toLowerCase();
var linkText = $.trim($(link).text());
// validate if all search words are in the link
for(var index=0; index < searchWords.length; index++) {
if ( linkName.indexOf(searchWords[index]) < 0 ) {
return; 
}
}
if (!linkText || !$(link).attr('href')) {
// do nothing (link has no name or no href to display)
} else if ($.inArray($(link).attr('href'), blackList) >= 0) {
// do nothing (link is in blacklist)
} else {
// update blacklist (dublicate links)
blackList.push($(link).attr('href'));
// add link
var item = $('<div/>').attr('data-keyboard-focus', '').attr('tabindex', '-1').attr('class','search_result_item')
.append('<img src="<%=context.getFormattedValue(context.webRoot(),null)%>/images/arrow_right_down.gif" width="9" height="9" alt="" border="0" class="search_result_link"/> ')
.append('<a href="'+$(link).attr('href')+'" class="search_result_link" data-keyboard-focus-action="">'+linkText+'</a>');
// add description
if ($(link).attr('title')) {
item.append( $('<div/>').html( $(link).attr('title') ).addClass('search_result_description') );
} else {
item.append( $('<div/>').html('').addClass('search_result_description') );
}
item.appendTo(resultList);
}
});
}
});
// Result list 
$(searchResultSelector).bind('keydown', 'down', function(e){
quickNavigationSelectNextItem();
return false;
});
// using tab key for navigation
$(searchResultSelector).bind('keydown', 'tab', function(e) {
quickNavigationSelectNextItem();
return false;
});
$(searchResultSelector).bind('keydown', 'up', function(e){
quickNavigationSelectPreviousItem();
});
// using tab key for navigation
$(searchResultSelector).bind('keydown', 'shift+tab', function(e) {
quickNavigationSelectPreviousItem();
return false;
});
// pressing 'return' within the result list will open the selected link
$(searchResultSelector).bind('keyup', 'return', function(e) {
var destination = $(':focus [data-keyboard-focus-action]').attr('href');
if (!destination) {
// do nothing
} else if (destination.indexOf('<%=context.getFormattedValue("#",null)%>') === 0) {
// Exception to the Rule (e.g. dashboard link is only clickable to work right)
// Check if first character is an anchor tag
// then: click the element
$("[href='"+destination+"']").click();
} else {
window.location = destination; 
}
return false;
});
// Naviation down
function quickNavigationSelectNextItem() {
var currentFocusElement = $(':focus');
var currentFocusGroupItems = currentFocusElement.closest('[data-keyboard-focus-group]').find('[data-keyboard-focus]');
var nextIndex = ( currentFocusGroupItems.index(currentFocusElement) + 1);
$(currentFocusGroupItems).eq(nextIndex).focus();
return false;
}
// Navigation up
function quickNavigationSelectPreviousItem() {
var currentFocusElement = $(':focus');
var currentFocusGroupItems = currentFocusElement.closest('[data-keyboard-focus-group]').find('[data-keyboard-focus]');
var prevIndex = ( currentFocusGroupItems.index(currentFocusElement) - 1);
if (prevIndex < 0) {
prevIndex = 0;
// jump back into the search field
$(searchDialogSelector).find(searchFieldSelector).focus();
} else {
$(currentFocusGroupItems).eq(prevIndex).focus();
}
return false;
}
});
</script>
<div id="quickNavigation" class="js-dialog" data-title="<% {out.write(localizeISText("QuickNavigation.dialog.title","",null,null,null,null,null,null,null,null,null,null,null));} %>" width="550" height="350">
<div class="dialog-content-header">
<input type="text" name="quickNavigationField" value="" class="inputfield_en" placeholder="<% {out.write(localizeISText("QuickNavigation.dialog.search.placeholder","",null,null,null,null,null,null,null,null,null,null,null));} %>" />
</div>
<div class="dialog-content">
<div id="quickNavigationResult" data-keyboard-focus-group=""></div>
</div>
<div class="dialog-buttons">
<input type="button" class="button" value="<% {out.write(localizeISText("QuickNavigation.button.close","",null,null,null,null,null,null,null,null,null,null,null));} %>" data-focus data-action="dialog-close" />
</div>
</div><% printFooter(out); %>