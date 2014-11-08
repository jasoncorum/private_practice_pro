$( "#login").dialog({ autoOpen: false, width: 350, height: 300 });
   $( "#therapist" ).click(function() {
     $( "#login").dialog( "open" );
   });

 $( "#dialog" ).dialog({ autoOpen: false });
    $( "#patient" ).click(function() {
      $( "#dialog" ).dialog( "open" );
    });