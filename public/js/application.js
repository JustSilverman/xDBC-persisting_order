$(document).ready(function() {

  $( ".sortable-list" ).sortable({
    update: function( event, ui ) {
      var sortedIDs = $( ".sortable-list" ).sortable( "toArray");
      $.post('/update_order', { 'ids[]': sortedIDs });
    }
  });

});