'use strict'

describe 'Directive: gameSim', () ->
  beforeEach module 'spacewarcliApp'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<game-sim></game-sim>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the gameSim directive'
