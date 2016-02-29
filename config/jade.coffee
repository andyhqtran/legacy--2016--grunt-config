module.exports = (options) ->
  options:
    pretty: true
    data: (dest, src) ->
      require('../../src/jade/config.json')

  dev:
    expand: true
    cwd: '<%= srcPath %>/jade/views'
    src: ['**/*.jade']
    dest: '<%= buildPath %>'
    ext: '.html'