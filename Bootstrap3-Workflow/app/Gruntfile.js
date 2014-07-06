module.exports = function(grunt) {
  grunt.initConfig({
    watch: {
      styles: {
        // Which files to watch (all .less files recursively in the less directory)
        files: ['assets/stylesheets/less/*.less'],
        tasks: ['less'],
        options: {
          nospawn: true
        },
      }
    },
    less: {
      development: {
        options: {
          compress: true,
          yuicompress: true
        },
        files: {
          // target.css file: source.less file
          "../public/stylesheets/main.css": "assets/stylesheets/less/main.less"
        }
      }
    },
    browserSync: {
      dev: {
        bsFiles: {
          src : [
          '../public/**/*.css',
          '../public/**/*.jpg',
          '../public/**/*.png',
          '../public/**/*.gif',
          '../public/**/*.svg',
          '../public/**/*.js',
          '../**/*.php',
          '../**/*.html'
          ]
        },
          options: {
              watchTask: true,
              //I am hosting my projects using apache virtual hosts, I define ServerName and /etc/hosts
              host : "test.local",
              ghostMode: {
                clicks: true,
                scroll: true,
                links: true,
                forms: true
              }
          }
      }
    }
  });
  // load npm tasks
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-browser-sync');

   // create custom task-list
  grunt.registerTask('default', ["browserSync", "watch"]);  
  };