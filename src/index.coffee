angular.module('tmsApp', ['ngRoute'])
.config(['$routeProvider', ($routeProvider) ->
    $routeProvider.when('/login', {
        templateUrl: '/app/login/index.html'
        controller: 'loginCtrl'
    }).when('/register', {
        templateUrl: '/app/register/index.html'
        controller: 'registerCtrl'
    }).when('/', {
        templateUrl: '/app/index/index.html'
        controller: 'indexCtrl'
    })
])
.run(['$location', ($location) ->
    $location.path('/login').replace()
])