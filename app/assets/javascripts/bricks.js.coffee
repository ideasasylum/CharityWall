# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  # how wide is the viewport?
  viewport_width = $('.wall').width()
  # how many bricks can we fit across?
  window.brick_width = $('.brick').width()
  window.brick_height = $('.brick').height()
  num_bricks = $('.brick').length
  window.num_columns = Math.floor((viewport_width - (brick_width / 2)) / brick_width)
  # how high will the wall be?
  min_wall_height = Math.ceil(num_bricks / num_columns) * brick_height
  wall_height = _.max([min_wall_height, $(window).height()-370])
  # set the height of the wall div
  $('.wall').height(wall_height)

  # for each .brick
  layout brick, i for brick, i in $('.brick')

  $('.wall').on 'click', '.brick', (event) ->
    $(this).toggleClass 'front'
    $(this).toggleClass 'active', 500

  $('.wall').on 'mouseleave', '.brick', (event) ->
    $(this).removeClass 'active', 700, 'swing', ->
      $(this).removeClass 'front'


layout = (brick, i) ->
  # set the relative position of the brick
  console.log('laying out ', brick)
  # $(brick).show()
  row = Math.floor(i / window.num_columns)
  column = i % window.num_columns
  # $(brick).prop 'hidden', false
  # $(brick).css {bottom: "#{$('.wall').height()}px"}
  width = window.brick_width
  height = window.brick_height
  offset = width / 2
  if is_even(row)
    if is_first(column)
      $(brick).css {bottom: "#{row*height}px", left: "#{(column*width)}px"}
      $(brick).css {'margin-left': offset}
    else
      $(brick).css {bottom: "#{row*height}px", left: "#{((column*width)+offset)}px"}

  else
    $(brick).css {bottom: "#{row*height}px", left: "#{(column*width)}px"}

is_even = (row) ->
  row % 2 == 0

is_first = (column) ->
  column == 0
