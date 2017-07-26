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
          'background-color': 'rgba(30, 29, 29, 0.5)'
          'z-index': 98
        if ($('#navbrand_image').length == 0)
          $("<a href='/' class='brand_link' style = 'display:inline-block; background-color: #000000'><img src='/assets/kasosa.png' alt='KaSoSa!' class='img-responsive' id='navbrand_image' style='width: 100%; height: 100%;'/></a>").insertAfter '.brand_logo'
          # $('.brand_logo').innerHTML = "<img src='http://i.imgur.com/Md7NrM4.jpg' alt='KaSoSa!' class='img-responsive' id='navbrand_image' style='height: 100px; width: 50px; z-index: -1;'/>"
      else
        $('.navbar-custom').css 'background-color', 'transparent'
        $('#navbrand_image').remove()
        $('.brand_link').remove()
      return
  return
