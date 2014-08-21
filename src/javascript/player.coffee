Vector2 = require './vector2'
board = require './board'
utils = require './utils'

player =
  size: 10
  position: new Vector2(Math.floor(board.WIDTH/2), Math.floor(board.HEIGHT/2))
module.exports = player

board.drawSquare(player.position)
player.drawBlack = true

player.move = (offset)->
  tempNewPos = new Vector2().addVectors offset, player.position
  board.ctx.fillStyle = utils.rgbToFillStyle(111, 0, 100)
  board.drawSquare(player.position, player.size)
  player.position = tempNewPos
  board.drawSquare(player.position, player.size)




