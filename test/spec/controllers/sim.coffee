'use strict'

describe 'Controller: SimCtrl', () ->

  # load the controller's module
  beforeEach module 'spacewarcliApp'

  SimCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    SimCtrl = $controller 'SimCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
