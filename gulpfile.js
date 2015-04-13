var gulp = require ('gulp')
var shell = require ('gulp-shell')

gulp.task('run', shell.task([
  'npm build --production',
  'npm start'
]))

gulp.task('deploy', shell.task([
  'npm build --production && npm start && /bin/bash deploy.sh'
]))

