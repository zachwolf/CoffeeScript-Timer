exports = {}

class Timer
  constructor : (@tick, context) ->
    @interval   =   1000
    @enable     =   false
    @timerId    =   0
    @context    =   context or @

  start       : ->
    @enable     =   true
    fn = =>
      if @enable then @tick.apply(@context)
    @timerId    =   setInterval fn, @interval

  stop        : ->
    @enable     =   false
    clearInterval @timerId

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

exports.slider = new Slider()