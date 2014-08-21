_  = require 'underscore'
Vector2 = require './vector2'
utils = require './utils'
Manasite = require './manasite'


board =
  WIDTH: window.innerWidth
  HEIGHT: window.innerHeight
  canvas: document.createElement('canvas')
  numManasites: 10
  manasites: []
  
board.canvas.id= 'canvas'
board.canvas.width= board.WIDTH
board.canvas.height= board.HEIGHT
board.ctx= board.canvas.getContext('2d')
board.ctx.strokeStyle = utils.rgbToFillStyle(100, 0, 100)
  
module.exports = board


board.initialize = ()->
  document.body.appendChild @canvas
  for i in [0..@numManasites]
    manasite = new Manasite()
    @manasites.push manasite
    manasite.draw()



board.collision = (position) ->
  pixel = board.ctx.getImageData(position.x, position.y, 1,1).data
  if pixel[0] is 111
    console.log 'COLLISION'
    return true
  else
    return false

