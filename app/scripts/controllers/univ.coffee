'use strict'

angular.module('spacewarcliApp')
  .controller 'UnivCtrl', ['$scope', 'angularFire', ($scope, angularFire) ->
    promiseEvents = angularFire('https://clispacewar.firebaseIO.com/events', $scope, 'events', [])
    promiseEvents.then ->
      $scope.newEvent = () ->
        $scope.events.push($scope.commandInput)
  ]
