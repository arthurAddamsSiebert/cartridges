$(function(){
    $('body').on('click', '.flyOutButton', function(event){
        event.preventDefault();
        $(this).closest('.flyOutPanel').find('.flyOutDialog').toggle().one('mouseleave', function() {
            $(this).hide();
       });
    });
});