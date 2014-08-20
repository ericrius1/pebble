controls = {}
$ = require 'jquery'
player = require './player'
Vector2 = require './Vector2'
module.exports = controls


controls.initialize = ()->
  offset = new Vector2(0, 0)
  $(document).on 'keydown', (event)->
    #up
    if event.keyCode is 87
      offset.set 0, -10

    if event.keyCode is 65
      offset.set -10, 0

    if event.keyCode is 68
      offset.set 10, 0

    if event.keyCode is 83
      offset.set 0, 10

    player.move(offset)
      




