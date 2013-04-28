world = new Box2D.b2World( new Box2D.b2Vec2(0.0, -10.0))

circleSd = new b2CircleDef()
circleSd.density = 1.0
circleSd.radius = 20
circleSd.restitution = 1.0
circleSd.friction = 0

circleBd = new b2BodyDef()
circleBd.AddShape(circleSd)
circleBd.position.Set(20, 20)
circleBody = world.createBody(circleBd)

