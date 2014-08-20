_  = require 'underscore'
Vector2 = require './vector2'
player = require './player'


board =
  WIDTH: window.innerWidth
  HEIGHT: window.innerHeight
  canvas: document.createElement('canvas')
  
board.canvas.id= 'canvas'
board.canvas.width= board.WIDTH
board.canvas.height= board.HEIGHT
board.ctx= board.canvas.getContext('2d')
  
module.exports = board


board.initialize = ()->
  document.body.appendChild @canvas

board.drawSquare = (position, size)->
  @ctx.fillRect(position.x, position.y, size, size)

board.collision = (position) ->
  pixel = @ctx.getImageData(position.x, position.y, 1, 1).data
  console.log pixel
  if pixel[0] is 111
    console.log 'collision'
    return true
  return false

