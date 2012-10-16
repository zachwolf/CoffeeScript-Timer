class Timer
  constructor : (@tick) ->
    @interval   =   1000
    @enable     =   false
    @timerId    =   0
    @tick

  start       : ->
    @enable     =   true
    fn = =>
      if @enable then @tick()
    @timerId    =   setInterval fn, @interval

  stop        : ->
    @enable     =   false
    clearInterval @timerId

timer = new Timer ->
  console.log "tick"