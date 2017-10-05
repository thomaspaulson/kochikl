$(document).ready(function() {

    $(document).foundation();
    
    /* removes text from search form on focus and replaces it on unfocus - if text is entered then it does not get replaced with default on unfocus */
    $('#SearchForm_SearchForm_action_results').val('');
    var searchField = $('#SearchForm_SearchForm_Search');
    var default_value = searchField.val();
    searchField.focus(function() {
            $(this).addClass('active');
            if(searchField.val() == default_value) {
                    searchField.val('');
            }
    });
    searchField.blur(function() {
              if(searchField.val() == '') {
                            searchField.val(default_value);
              }
    });

    // show enquiry_form at PageContent
    $(".contact_enquiry").click(function(event) {
              //event.preventDefault();
          $("#enquiry_form").toggle();	  
    }); //$(".contact_enquiry").click(function(event) {

    //redirect to listing page where on parent div, 'click' event
    $('.text-holder').click(function(){	  
          url = $(this).find('h3 a:first').attr('href');      
          window.location.href = url;
    });

    // hide/show expandable searchform
    $('.search-title').click(function(){
            if($(this).find('i').attr( 'class' ) == 'down'){
                    $(this).find('i').removeClass('down');
                    $(this).find('i').addClass('up');
                    $('.searchform-expandable').show();	
                    //$(".searchform-expandable").slideDown("slow");	
            }	
            else{
                    $(this).find('i').removeClass('up');
                    $(this).find('i').addClass('down');
                    $('.searchform-expandable').hide();		
                    //$(".searchform-expandable").slideUp("slow");	
            }
    });

    // hide/show expandable filterform
    $('.mobile-filter-title').click(function(){
            if($(this).find('i').attr( 'class' ) == 'down'){
                    $(this).find('i').removeClass('down');
                    $(this).find('i').addClass('up');
                    $('.filter-form-expandable').show();	
                    //$(".searchform-expandable").slideDown("slow");	
            }	
            else{
                    $(this).find('i').removeClass('up');
                    $(this).find('i').addClass('down');
                    $('.filter-form-expandable').hide();		
                    //$(".searchform-expandable").slideUp("slow");	
            }
    });

	
}); //$(document).ready(function() {
