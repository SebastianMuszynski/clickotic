'use strict'

angular.module('clickoticApp').controller 'DiagramCtrl', ($scope) ->
  paper = Raphael(0, 0, 1000, 500)
  paper.canvas.style.backgroundColor = "#051E32"

  rect = paper.rect(150, 200, 200, 100)
  rect.attr "fill",   "#0D4D80"
  rect.attr "stroke", "#1166AA"

  start = ->
    @ox = @attr "cx"
    @oy = @attr "cy"
    params =
      opacity: .75
    @animate params, 100, ">"
  move = (dx, dy) ->
    console.log @ox
    console.log @oy
    @attr
      cx: @ox + dx
      cy: @oy + dy
  up = ->
    params =
      opacity: 1
    @animate params, 100, ">"

  paper.set(rect).drag(move, start, up)

  $scope.paper = paper
