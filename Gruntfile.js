module.exports = function(grunt) {
  grunt.initConfig({
    log: {
      foo: [1, 2, 3],
      bar: 'hello world',
      baz: false
    }
  });

  grunt.registerTask('asyncme', 'My asynchronous task.', function() {
    var done = this.async();
    doSomethingAsync(done);
  });
};