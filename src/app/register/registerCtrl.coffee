angular.module('tmsApp')
.controller('registerCtrl', ['$scope', ($scope) ->
    $scope.registerEntity = {
        username: ''
        password: ''
        password2: ''
    }
    $scope.doRegister = ->
        console.log($scope.registerEntity)
])