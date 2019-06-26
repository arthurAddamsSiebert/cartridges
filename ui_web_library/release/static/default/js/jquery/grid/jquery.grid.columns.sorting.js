// This column type shouldn't be used outside of the product/category links.
// A standard column that can be used for sorting will be provided with the implementation of ENFINITY-34988.

(function ($) 
{
	'use strict';

	var columnTypes = $.fn.grid.columnTypes;

	columnTypes.add('sorting', 
	{
		sortedElementsCount: 1,
		allElementsCount: 1,
		pageSize: 1,
		pageNumber: 1,
		moveUpLinkButtonName: 'moveUpLink',
		moveDownLinkButtonName: 'moveDownLink',
		webRoot: '',
		datakey: '',
		sortable: false,
		render: function render(params) {
			var result = "";
			
			// The sorting buttons should appear only once for all sorted elements. The sorted elements are displayed before the unsorted ones.
			// If there is only one sorted element nothing can be sorted, so the buttons aren't displayed.
			if(params.rowIndex == 0 && this.getSortedPageElementsCount() > 0 && this.sortedElementsCount > 1) {
	            var upArrow = "<input type=\"image\" name=\"" + this.moveUpLinkButtonName + "\" src=\"" + this.webRoot + "/images/sort_up.gif\" alt=\"\" />";
	            var downArrow = "<input type=\"image\" name=\"" + this.moveDownLinkButtonName + "\" src=\"" + this.webRoot + "/images/sort_down.gif\" alt=\"\" />";
	            result = result + upArrow + "<br/>" + downArrow;
			}
			return result;
		}
		,
		postRender: function postRender(params) {
			
			var pageElementsCount;
			if(this.pageSize == -1){
				pageElementsCount = this.allElementsCount;
			}
			else{
				var lastPage = (this.pageNumber * this.pageSize) >= this.allElementsCount;
				pageElementsCount = (lastPage == true) ? (this.allElementsCount % this.pageSize) : this.pageSize;
			}
			
			var sortedPageElementsCount = this.getSortedPageElementsCount();
			var unsortedPageElementsCount = pageElementsCount - sortedPageElementsCount;
			
			// Always start with the sorted elements.
			if(params.rowIndex == 0 && sortedPageElementsCount > 0) {
				this.setRowspan(params.td, sortedPageElementsCount);
			}
			// If there are unsorted elements as well there should be a visible empty cell in the sorting column 
			else if(params.rowIndex == sortedPageElementsCount && unsortedPageElementsCount > 0) {
				this.setRowspan(params.td, unsortedPageElementsCount);
			}
			else
			{
				params.td.hide();
			}
			
			params.td.click(function(event){event.stopPropagation();});
		},
		
		getSortedPageElementsCount: function getSortedPageElementsCount() {
			
			if(this.pageSize == -1){
				return this.sortedElementsCount;
			}
			var sortedPageElementsCount = this.sortedElementsCount - (this.pageNumber * this.pageSize);
			
			if(sortedPageElementsCount <= 0) {
				return 0;
			}
			if(sortedPageElementsCount >= this.pageSize) {
				return this.pageSize;
			}
			
			$('body').on('mouseover', 'td.column-sorting', function () {
				$(this).parent().addClass('no-hover');	
			}).on('mouseout', 'td.column-sorting', function () {
				$(this).parent().removeClass('no-hover');
			});
			
			return sortedPageElementsCount;
		},
		
		setRowspan: function setRowspan(td, rowspan) {
			td.attr("rowspan", rowspan);
			td.addClass("no-highlight");
		}
	});
	
}(jQuery));