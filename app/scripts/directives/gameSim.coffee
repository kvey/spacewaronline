'use strict'

angular.module('spacewarcliApp')
  .directive('gameSim', () ->
    link: (scope, element, attrs) ->
      svg = d3.select(element[0]).append("svg")
          .attr("width", "200")
          .attr("height", "200")
        .append("g")

      for ship in attrs.gameSimShips
        svg.append("circle")
          .attr("class", "dot")
          .attr("r", 3.5)
          .attr("fill", "red")
  )
