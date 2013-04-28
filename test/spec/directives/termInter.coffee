'use strict'

describe 'Directive: termInter', () ->
  beforeEach module 'spacewarcliApp'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<term-inter></term-inter>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the termInter directive'
