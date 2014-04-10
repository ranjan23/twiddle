gulp = require 'gulp'
jade = require 'gulp-jade'
less = require 'gulp-less'

gulp.task 'generateHtml', ()->
  gulp.src 'src/index.jade'
    .pipe jade()
    .pipe gulp.dest('./')

gulp.task 'generateCss', ()->
  gulp.src 'src/style.less'
    .pipe less()
    .pipe gulp.dest('./')

gulp.task 'watch', ()->
  gulp.watch 'src/*.jade', ['generateHtml']
  gulp.watch 'src/*.less', ['generateCss']