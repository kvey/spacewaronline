'use strict'

angular.module('spacewarcliApp')
  .controller 'CliCtrl', ['$scope', 'angularFire', ($scope, angularFire) ->
    promise = angularFire('https://clispacewar.firebaseIO.com/commands', $scope, 'commands', [])
    promise.then ->
      $scope.newCommand = () ->
        $scope.commands.push($scope.commandInput)
  ]
