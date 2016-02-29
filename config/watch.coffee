module.exports = (grunt, options) ->
  options:
    livereload: true
    dateFormat: (time) ->
      grunt.log.writeln('Grunt has finished in ' + time + 'ms!')
      grunt.log.writeln('Waiting...')
    event: ['all']
    interrupt: true
    spawn: false

  configFiles:
    options:
      # reload: true
      cwd:
        files: 'grunt'
        # spawn: 'grunt'
        # event: 'grunt'
    files: [
      'Gruntfile.coffee'
      'config/*.coffee'
    ]
    tasks: ['coffeelint']

  jade:
    files: ['<%= srcPath %>/**/*.jade']
    tasks: ['jade']

  sass:
    files: ['<%= srcPath %>/**/*.{scss,sass}']
    tasks: [
      'sass'
    ]

  coffee:
    files: [
      '<%= srcPath %>/**/*.coffee'
      '!**/config/**'
      '!Gruntfile.coffee'
    ]
    tasks: [
      'coffee'
      'coffeelint'
    ]

  img:
    files: ['<%= srcPathh %>/img/**/*']
    tasks: [
      'copy:img'
      'notify:img'
      'wakeup:complete'
    ]

  font:
    files: ['<%= srcPathh %>/font/**/*']
    tasks: [
      'copy:font'
      'notify:font'
      'wakeup:complete'
    ]