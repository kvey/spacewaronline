'use strict';

angular.module('spacewarcliApp', ['firebase'])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'CliCtrl'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
