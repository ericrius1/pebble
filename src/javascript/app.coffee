
controls = require './controls'
board = require './board'
player = require './player'


board.initialize();
controls.initialize()
player.draw()
animate = ->
  requestAnimationFrame animate


animate();

