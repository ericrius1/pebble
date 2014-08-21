Vector2 = require './vector2'
utils = require './utils'
_ = require 'underscore'

class Manasite
  constructor: ()->
    @board = require './board'
    @position = new Vector2(_.random(0, @board.WIDTH), _.random(0,@board.HEIGHT))
    @size = 10
    @velocity = new Vector2(1, 0)

  draw: ()->
    @board.ctx.fillStyle = utils.rgbToFillStyle(111, 100, 0)
    @board.ctx.fillRect @position.x, @position.y, @size, @size


module.exports = Manasite

