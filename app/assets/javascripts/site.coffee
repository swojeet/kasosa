# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  scroll_start = 0
  startchange = $('#startchange')
  offset = startchange.offset()
  if startchange.length
    $(document).scroll ->
      scroll_start = $(this).scrollTop()
      if scroll_start > offset.top
        $('.navbar-custom').css
          'background-color': '#f0f0f0'
        $('.navbar-brand').replaceWith "<img src='http://i.imgur.com/Md7NrM4.jpg' alt='KaSoSa!' class='img-responsive' id='navbrand_image' style='height: 100px; width: 50px;'/>"
      else
        $('.navbar-custom').css 'background-color', 'transparent'
        $('#navbrand_image').remove()
      return
  return
