'use strict'

angular.module('spacewarcliApp')
  .controller 'HomeCtrl', ($scope) ->
    $scope.ships = [0..3]
    "end"
