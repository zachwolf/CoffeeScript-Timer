# Timer.coffee

A handy little snippet for OOJS timed events.

## Parameters

    # coffeescript
    timer = new Timer fn, scope

`fn` is any function you wish to be called at the end of every interval

`scope` is used to apply the function

Imagine it like this:

    fn.apply scope

This is useful for when you're using the timer inside of another class and want access to it's data.

Example:

    class Slider
		  constructor : ->
		    @localVar = "hey ya'll"
		    @tick = new Timer ->
		                console.log @localVar # "hey ya'll"
		              , @
		    @tock = new Timer ->
		                console.log @localVar # undefined

		    @tick.start()
		    @tock.start()
