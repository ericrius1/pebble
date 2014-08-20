Vector2 = require './vector2'
board = require './board'

player = {}
module.exports = player
player.position = new Vector2(board.WIDTH/2, board.HEIGHT/2)
board.drawSquare(player.position)
player.drawBlack = true

player.move = (offset)->
  board.ctx.fillStyle = 'black'
  board.drawSquare(player.position)
  player.position.add offset
  board.drawSquare(player.position)

#blink square where player is so they don't get confused
player.draw = ()->
  if player.drawBlack is true
    board.ctx.fillStyle = 'black'
  else
    board.ctx.fillStyle = 'white'
  player.drawBlack = !player.drawBlack
  board.drawSquare(player.position)

  setTimeout(=>
    @draw()
  ,1000)
