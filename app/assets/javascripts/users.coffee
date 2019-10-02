# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


#CORREGIR CODIGO, TIENE BUGS
jQuery ->
  $('#state_country_id').parent().hide()
  $('#user_city_id').parent().hide()
  states = $('#state_country_id').html()
  $('#country_country_id').change ->
    country = $('#country_country_id :selected').text()
    options = $(states).filter("optgroup[label='#{country}']").html()
    if options
      $('#state_country_id').html(options)
      $('#state_country_id').parent().show()
    else
      $('#state_country_id').empty()
      $('#state_country_id').parent().hide()
      $('#user_city_id').parent().hide()

  cities = $('#user_city_id').html()
  $('#state_country_id').change ->
    state = $('#state_country_id :selected').text()
    options = $(cities).filter("optgroup[label='#{state}']").html()
    if options
      $('#user_city_id').html(options)
      $('#user_city_id').parent().show()
    else
      $('#user_city_id').empty()
      $('#user_city_id').parent().hide()
