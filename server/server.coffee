Firebase = require("firebase")

commandStream = new Firebase("https://clispacewar.firebaseIO.com/all/commands")
events        = new Firebase("https://clispacewar.firebaseIO.com/events")
world         = new Firebase("https://clispacewar.firebaseIO.com/world")


commandStream.on("child_added", (data) ->

)



commandParse = (command) ->
  commands[command.method](user, args...)

commands = {

  burn: () ->
    return "none"

}
