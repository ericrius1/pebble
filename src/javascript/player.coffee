Vector2 = require './vector2'
board = require './board'
utils = require './utils'

player =
  size: 10
  position: new Vector2(Math.floor(board.WIDTH/2), Math.floor(board.HEIGHT/2))
player.prevPos = player.position.clone()
module.exports = player

player.drawBlack = true

player.move = (event)->
  player.position.set event.clientX, event.clientY
  if board.collision(player.position) 
    console.log 'ARRRR'
  player.draw()
  player.prevPos = player.position.clone()

player.draw = ()->
  board.ctx.beginPath()
  board.ctx.moveTo(@prevPos.x, @prevPos.y)
  board.ctx.lineTo(@position.x, @position.y)
  board.ctx.stroke()





