###引入package###

# 引入gulp
gulp = require('gulp')
# 引入任务执行序列插件
runSequence = require('run-sequence')
# 引入删除插件
del = require('del')
# 引入js压缩插件
uglify = require('gulp-uglify')
# 引入css压缩插件
minifyCss = require('gulp-minify-css')
# 引入删除无用css插件
#unCss = require('gulp-uncss')
# 引入浏览器同步插件
browserSync = require('browser-sync').create()
# 引入连接插件
concat = require('gulp-concat')

# 默认任务
gulp.task('default', (callback) ->
    ###
        1. 清理
        2. 构建
        3. 监控
    ###
    runSequence(['clean'], ['build'], ['serve', 'watch'], callback)
)

# 任务分组 --> 构建
gulp.task('build', (callback) ->
    runSequence(['copy', 'miniJs', 'miniCss'], callback)
)

# 清空目录
gulp.task('clean', (callback) ->
    del(['./dist/'], callback)
)

# 复制文件
gulp.task('copy', ->
    gulp.src('./src/**/*.*')
    .pipe(gulp.dest('./dist/'))
)

# 压缩js
gulp.task('miniJs', ->
    gulp.src('./src/**/*.js')
    .pipe(uglify())
    .pipe(gulp.dest('./dist/'))
)

# 压缩css
gulp.task('miniCss', ->
    gulp.src('./src/**/*.css')
    .pipe(minifyCss())
    .pipe(concat('app.css', {newLine: '\n\n'}))
    .pipe(gulp.dest('./dist/assets/css/'))
)

# 合并文件
gulp.task('concat', ->
    gulp.src('./src/*.js')
    .pipe(concat('all.js', {newLine: ';\n'}))
    .pipe(gulp.dest('./dist/'))
)

# 同步浏览器
gulp.task('serve', ->
    browserSync.init({
        server: {
            baseDir: './dist/'
        }
        port:7411
    })
)

# 监视所有文件
gulp.task('watch', ->
    gulp.watch('./src/**/*.*', ['reload'])
)

# 重载
gulp.task('reload', (callback)->
    runSequence(['build'], ['reload-browser'], callback)
)

# 重载浏览器
gulp.task('reload-browser', ->
    browserSync.reload();
)