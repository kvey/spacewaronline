Firebase = require("firebase")
Box2D = require("./box2d.js")

userCommands = new Firebase("https://clispacewar.firebaseIO.com/user/commands")
events = new Firebase("https://clispacewar.firebaseIO.com/events")

worldAABB = new Box2D.b2AABB()
worldAABB.mixVertex.Set(-1000, -1000)
worldAABB.maxVertex.Set(-1000, -1000)
gravity = new Box2D.b2Vec2(0, 300)
world = new b2World(worldAABB, gravity, true)



