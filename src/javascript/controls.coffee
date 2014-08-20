controls = {}
$ = require 'jquery'
player = require './player'
Vector2 = require './Vector2'
module.exports = controls


controls.initialize = ()->
  $(document).on 'keydown', (event)->
    offset = new Vector2(0, 0)
    #up
    if event.keyCode is 87
      offset.set 0, -player.size

    if event.keyCode is 65
      offset.set -player.size, 0

    if event.keyCode is 68
      offset.set player.size, 0

    if event.keyCode is 83
      offset.set 0, player.size

    player.move(offset)
      




