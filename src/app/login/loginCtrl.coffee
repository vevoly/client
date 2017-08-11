angular.module('tmsApp')
.controller('loginCtrl', ['$scope', '$location', '$http', 'tmsUtil', ($scope, $location, $http, tmsUtil) ->
    $scope.userEntity = {
        username: ''
        password: ''
        rememberMe: false
    }
    $scope.doLogin = ->
        $http.post("#{Tms.apiAddress}/api/user/login", {
            username : $scope.userEntity.username
            password : $scope.userEntity.password
        })
            .then((res) ->
                $location.path('/').replace()
            , tmsUtil.processHttpError)

])