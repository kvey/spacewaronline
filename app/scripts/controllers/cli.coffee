'use strict'

angular.module('spacewarcliApp')
  .controller 'CliCtrl', ['$scope', 'angularFire', ($scope, angularFire) ->
    promiseCommands = angularFire('https://clispacewar.firebaseIO.com/user/commands', $scope, 'commands', [])
    promiseCommands.then ->
      $scope.newCommand = () ->
        cmdTokens = $scope.commandInput.split(" ")
        $scope.commands.push({
          text: $scope.commandInput
          user: $scope.user
          method: cmdTokens[0]
          args: _.tail(cmdTokens)
        })
        $scope.commandInput = ""
  ]

