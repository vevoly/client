angular.module('tmsApp')
.controller('indexCtrl', ['$scope', '$location', '$http', 'tmsUtil', ($scope, $location, $http, tmsUtil) ->

    # 任务对象
    $scope.task = {
        taskName : ''
    }

    # 任务数组
    $scope.taskList = []

    # 初始化数据
    init = ->
        $http.get("#{Tms.apiAddress}/api/task")
        .then((res) ->
            task = res.data
            $scope.taskList = tasks
        , tmsUtil.processHttpError)

    # 改变任务状态
    $scope.changeTaskStatus = (task) ->
        task.status = task.checked ? 'Finish' : 'InProgress'


    # 退出系统
    $scope.exit = ->
        $location.path('/login')

    # 添加任务
    $scope.addTask = ->
        task = angular.copy($scope.task)
        $http.post("#{Tms.apiAddress}/api/task", {
            taskName : $scope.task.taskName
        })
        .then((res) ->
            $scope.taskList.push(task)
            $scope.task.taskName = ''
        , tmsUtil.processHttpError)
        init()


    # 修改任务
    $scope.edtTask = (task) ->
        console.log(task.checked)
        console.log(task.taskName)

])