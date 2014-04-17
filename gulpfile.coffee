gulp = require 'gulp'
jade = require 'gulp-jade'
less = require 'gulp-less'
imagemin = require 'gulp-imagemin'
rename = require 'gulp-rename'

gulp.task 'generateHtml', ()->
  return gulp.src 'src/immersive.jade'
    .pipe jade()
    .pipe rename('index.html')
    .pipe gulp.dest('./')

gulp.task 'generateCss', ()->
  return gulp.src ['src/style.less', 'src/immersive.less']
    .pipe less()
    .pipe gulp.dest('./')

gulp.task 'generateImages', () ->
  return gulp.src 'src/images/*.*'
    .pipe imagemin()
    .pipe gulp.dest('images/')

gulp.task 'watch', ()->
  gulp.watch 'src/*.jade', ['generateHtml']
  gulp.watch 'src/*.less', ['generateCss']
  gulp.watch 'src/images/*', ['generateImages']