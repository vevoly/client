angular.module('tmsApp')
.controller('indexCtrl', ['$scope', '$location', '$rootScope', ($scope, $location, $rootScope) ->

    # 任务对象
    $scope.task = {
        description : ''
    }

    # 任务数组
    $scope.taskList = []

    # 添加任务
    $scope.addTask = ->
        task = angular.copy($scope.task)
        task.checked = false
        task.status = 'InProgress'
        $scope.taskList.push(task)
        $scope.task.description = ''

    # 修改任务
    $scope.edtTask = (task) ->
        console.log(task.checked)
        console.log(task.description)

])