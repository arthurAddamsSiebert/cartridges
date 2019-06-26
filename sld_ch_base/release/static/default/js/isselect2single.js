(function($){
$(document).ready(function(){        		    
        	//initialize multi-select widget			
        	$("#labelselect").select2(
			{
			  //tweak the drop down
	          showDropDown:false,	
			  tags:[]
			}			
			);	
        	        	

        	//works select assigned
        	//$("#labelselect").select2("val", [red, green, blue]); 
        	
        	
        	$("#labelselect").on("change", function(e) { 
        		$("#ProductCustomAttributesValidationRuleConfigurationForm_CustomAttributes").val(e.val);
        	   }
        	);	
        	
        	// simulate "Enter", when input field loses focus IS-9347
            $("#labelselect").on("select2-blur", function(e) { 
                $('#s2id_autogen1').trigger(jQuery.Event( 'keydown', { which: 13 } ));
               }
            );

         });
})(jQuery);
