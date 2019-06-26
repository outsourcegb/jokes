# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('#joke_tag_list').chosen
    allow_single_deselect: true
    width: '100%'

  $('.chosen-container').on 'keyup', (event) ->
    if event.which == 13
      $('#joke_tag_list').append '<option value="' + $(event.target).val() + '" selected="selected">' + $(event.target).val() + '</option>'
      $('#joke_tag_list').trigger 'chosen:updated'
    return
