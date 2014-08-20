class Vector2
  constructor: (@x, @y) ->

  set: (x, y)->
    @x = x
    @y = y

  add: (v)->
    @x += v.x
    @y += v.y
module.exports = Vector2