_  = require 'underscore'
Vector2 = require './vector2'

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
  @ctx.fillStyle = 'black'

board.drawSquare = (position)->
  @ctx.fillRect(position.x, position.y, 10, 10)


