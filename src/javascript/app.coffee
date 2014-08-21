
controls = require './controls'
board = require './board'
Player = require './player'
Manasite = require './manasite'
Vector2 = require './vector2'
utils = require './utils'


board.initialize();
controls.initialize()
manasite = new Manasite(new Vector2(100, 400))



animate = ->
  board.ctx.fillStyle =  utils.rgbToFillStyle(10, 100, 10)
  manasite.update()
  requestAnimationFrame animate



animate();

