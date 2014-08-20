class Vector2
  constructor: (@x, @y) ->

  set: (x, y)->
    @x = x
    @y = y

  add: (v)->
    @x += v.x
    @y += v.y

  addVectors: (a, b) ->
    @x = a.x + b.x
    @y = a.y + b.y
    @
module.exports = Vector2