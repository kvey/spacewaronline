'use strict'

describe 'Controller: UnivCtrl', () ->

  # load the controller's module
  beforeEach module 'spacewarcliApp'

  UnivCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    UnivCtrl = $controller 'UnivCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
