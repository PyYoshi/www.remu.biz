module.exports = (grunt)->
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    coffee: {
      # https://github.com/gruntjs/grunt-contrib-coffee
      dist: {
        files: {

        }
        options: {
          bare: true
        }
      }
    }
    watch: {
      # https://github.com/gruntjs/grunt-contrib-watch

    }
    clean: {
      # https://github.com/gruntjs/grunt-contrib-clean

    }
  })

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-clean')

  grunt.registerTask('default', [])
