# @codekit-prepend "../Timer.coffee";

class Slider
  constructor : ->
    @localVar = "hey ya'll"
    @tick = new Timer ->
                console.log @localVar
              , @
    @tock = new Timer ->
                console.log @localVar

    @tick.start()
    @tock.start()

new Slider()