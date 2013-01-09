# Timer.coffee

A handy little snippet for OOJS timed events.

## Parameters

    # coffeescript
    timer = new Timer fn, scope

`fn` is any function you wish to be called at the end of every interval

`scope` is used to apply the function

Imagine it like this:

    fn.apply scope