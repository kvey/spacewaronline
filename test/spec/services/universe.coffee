'use strict'

describe 'Service: universe', () ->

  # load the service's module
  beforeEach module 'spacewarcliApp'

  # instantiate service
  universe = {}
  beforeEach inject (_universe_) ->
    universe = _universe_

  it 'should do something', () ->
    expect(!!universe).toBe true;
