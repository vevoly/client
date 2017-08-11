angular.module('tmsApp')
.controller('registerCtrl', ['$scope', '$http', '$location', 'tmsUtil', ($scope, $http, $location, tmsUtil) ->
    $scope.registerEntity = {
        username: ''
        password: ''
        password2: ''
    }
    $scope.doRegister = ->
        alert('两次密码不一致！') if $scope.registerEntity.password isnt $scope.registerEntity.password2
        $http.post("#{Tms.apiAddress}/api/user/register", {
            username : $scope.registerEntity.username,
            password : $scope.registerEntity.password,
            password2: $scope.registerEntity.password2
        }).then((res) ->
            alert('注册成功')
            $location.path('/login')
        , tmsUtil.processHttpError
        )
        console.log($scope.registerEntity)
])