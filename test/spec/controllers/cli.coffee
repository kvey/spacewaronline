'use strict'

describe 'Controller: CliCtrl', () ->

  # load the controller's module
  beforeEach module 'spacewarcliApp'

  CliCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    CliCtrl = $controller 'CliCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
