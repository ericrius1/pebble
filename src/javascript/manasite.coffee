Vector2 = require './vector2'
board = require './board'
utils = require './utils'

class Manasite
  constructor: (@position)->
    @size = 10
    @velocity = new Vector2(1, 0)
    @prevPos = @position.clone()
    @tempNewPos = new Vector2(0,0)

  update: ()->
    @tempNewPos.set(@position.x + @size, @position.y)
    @position.add(@velocity)
    if board.collision(@tempNewPos) 
      console.log 'collision'
      @velocity.multiplyScalar(-1)
      return
    @draw()

  draw: ()->
    board.ctx.fillStyle = 'white'
    board.drawSquare(@prevPos, @size)
    board.ctx.fillStyle = utils.rgbToFillStyle(100, 100, 0)
    board.drawSquare(@position, @size)
    @prevPos = @position.clone()


module.exports = Manasite

