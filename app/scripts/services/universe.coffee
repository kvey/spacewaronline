'use strict'

angular.module('spacewarcliApp')
  .factory 'universe', () ->
    # Service logic
    # ...

    meaningOfLife = 42


    # Public API here
    {
      someMethod: () ->
        return meaningOfLife
    }
