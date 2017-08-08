angular.module('tmsApp')
.controller('loginCtrl', ['$scope', '$location', ($scope, $location) ->
    $scope.userEntity = {
        username: ''
        password: ''
    }
    $scope.rememberMe = false
    $scope.doLogin = ->
        console.log($scope.userEntity)
        $location.path('/').replace()
])