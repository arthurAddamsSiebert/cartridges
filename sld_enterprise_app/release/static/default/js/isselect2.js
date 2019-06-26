(function($){
  $(document).ready(        
        function() {
        	//prevent cahcing
        	$.ajaxSetup ({
        	    cache: false
        	});
        	
        	var ajaxRequest=null;
        	
		    //initialize multi-select widget			
        	$("#labelselect").select2(
			{
			 minimumInputLength: 1,
			 placeholder:"Select labels...",
			 tags:[],
             ajax: {
                 url: ajaxURL,
                 dataType: "xml",
                 quietMillis: 200,
                 data: function (term, page) {                	 
                         return {
                                 prefix: term
                         };
                 },
                 results: function (data, page) {                	                 	    
                	    var formatedData = [];
                	    //add default                	    
                	    $xml = $(data);
                	    $($xml).find('label').each(function(){                	    	
                	    	   formatedData.push({id: $(this).text(), text:  $(this).text()});    
                	    });
                        
                	    return { results: formatedData };
                 }
             },
             initSelection : function (element, callback) {            	 
                 var data = [];
                 $(element.val().split(",")).each(function () {
                     data.push({id: this, text: this});
                 });
                 callback(data);
             },
			 //allowClear: false,
			 matcher:function(term, text) { return text.toUpperCase().indexOf(term.toUpperCase())==0; } 
			}			
			);
        	
			//set already assigned tags
			if(assignedtags.length>0)
        	  $("#labelselect").select2("val", assignedtags); 
						
			//set on submit
			$('form[name="formMask"]').submit(function( event ) {
                
				var selection=$("#labelselect").select2("val");
				var newlyassigned=[];
				
				//newly assigned tags
				if(selection.length!=0){
					  for(i=0;i<selection.length;i++){
						     if(!contains(assignedtags,selection[i])){				 
						    	 newlyassigned.push(selection[i]); 				 
						     }
					  }  
					  //newlyassigned [] holds both newly assigned ant created
					  $("#assignedlabels").val(newlyassigned);    					  
				}  
				
				var unassignedtags=[];
                //deleted tags
				if(assignedtags.length!=0){
					  for(i=0;i<assignedtags.length;i++){
						     if(!contains(selection,assignedtags[i])){				 
						    	 unassignedtags.push(assignedtags[i]); 				 
						     }
					  }  
					  //unassigned [] holds both newly assigned ant created
					  $("#unassignedlabels").val(unassignedtags);    					  
				} 				
				
				
			});
						
			
		});	
		
    function contains(array, item) {
	var i = 0, len = array.length;
		while( i < len && array[i] != item ) {
			i++;
		}
		return i != len;
	}	
  
})(jQuery);