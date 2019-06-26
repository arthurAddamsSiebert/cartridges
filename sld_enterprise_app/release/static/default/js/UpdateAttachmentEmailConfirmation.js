


/**
 * Clicking on a checkbox updates product attachment confirmation email
 * @param url
 */
function updateAssignment(url)
{
    var form = $('.confirmOrderAttachment').closest('form');
    var formType = form.attr('name');
    var inemail = 'false';
    $('.confirmOrderAttachment').change(function() {               
        if($(this).is(":checked")) 
        {               
            inemail = 'true';
        }
        
        var params = '?' + form.serialize() + '&formType=' + formType + '&KeyPrefix=' + $(this).attr('data-prefix-id') + '&InEmail=' + inemail;
        var block = $(this).parent('div');
        var $el = $(this);
        
        block.load(url + params, function onLoad(data, status) {
            if(status == "success")
            {
                $(block).html(data);
            }
            if(status == "error")
            {
                $('.uknownErrorBlock').show();
            }
        });       
    });
}

