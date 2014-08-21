controls = {}
$ = require 'jquery'
player = require './player'
Vector2 = require './Vector2'
module.exports = controls


controls.initialize = ()->
  $(document).on 'mousemove', (event)->
    player.move(event)
      




