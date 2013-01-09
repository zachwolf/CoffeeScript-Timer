// Generated by CoffeeScript 1.4.0

/*
 #
*/


(function() {
  var Timer;

  Timer = (function() {

    function Timer(tick, context) {
      this.tick = tick;
      this.interval = 1000;
      this.enable = false;
      this.timerId = 0;
      this.context = context || this;
    }

    Timer.prototype.start = function() {
      var fn,
        _this = this;
      this.enable = true;
      fn = function() {
        if (_this.enable) {
          return _this.tick.apply(_this.context);
        }
      };
      return this.timerId = setInterval(fn, this.interval);
    };

    Timer.prototype.stop = function() {
      this.enable = false;
      return clearInterval(this.timerId);
    };

    return Timer;

  })();

}).call(this);