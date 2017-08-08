angular.module('tmsApp')
.controller('indexCtrl', ['$scope', ($scope) ->
    $scope.userEntity = {
        username: ''
        password: ''
    }

])