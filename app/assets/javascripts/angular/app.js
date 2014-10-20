angular
  .module('app', ['ngRoute', 'ngResource'])
  .config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/', {
      controller: 'HomeCtrl'
    }).when('/:status', {
      controller: 'HomeCtrl',
    }).when('/guests', {
      controller: 'HomeCtrl',
    }).otherwise({
      redirctTo: '/'
    });
}]);
