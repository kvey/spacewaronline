'use strict'

PTM = 32

initCanvas = (element, attrs) ->
  canvas = element[0]
  context = canvas.getContext("2d")
  canvasOffset.x = canvas.width/2
  canvasOffset.y = canvas.height/2

  for evtType in ["MouseMove", "MouseDown", "MouseUp", "MouseOut", "KeyDown", "KeyUp"]
    canvas.addEventListener(evtType.toLowerCase(), (evt) ->
      attrs["game"+evtType](canvas, evt) if attrs["game"+evtType]
    , false)


drawCanvas = (context) ->
  context.fillStyle = "rgb(0,0,0)"
  context.fillRect(0, 0, canvas.width, canvas.height)

  context.save()
  context.scale(1, -1)
  context.scale(PTM, PTM)
  context.lineWidth /= PRM

  context.restore()


angular.module('spacewarcliApp')
  .directive('gameSim', () ->
    template: "<canvas></canvas>"
    link: (scope, element, attrs) ->
      initCanvas(element, attrs)
  )
