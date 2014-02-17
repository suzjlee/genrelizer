# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#song_rating_range').change ->
  $('#rating_value').text($(event.currentTarget).val()/100);
  