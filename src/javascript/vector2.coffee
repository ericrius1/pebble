class Vector2
  constructor: (@x, @y) ->

  set: (x, y)->
    @x = x
    @y = y
    @
  add: (v)->
    @x += v.x
    @y += v.y
    @
  addVectors: (a, b) ->
    @x = a.x + b.x
    @y = a.y + b.y
    @ 
  clone: ()->
    return new Vector2(@x, @y)

  multiply: (v)->
    @x *= v.x
    @y *= v.y
    @
  multiplyScalar: (s)->
    @x *= s
    @y *= s
    @
module.exports = Vector2