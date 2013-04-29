'use strict'

angular.module('spacewarcliApp')
  .factory 'universe', () ->
    # Service logic
    # ...

    world = new CANNON.World()
    world.gravity.set(0,0,0)
    world.broadphase = new CANNON.NaiveBroadphase()






    # Public API here
    {
      someMethod: () ->
        return meaningOfLife
    }
