var app = angular.module("AveryRsvp", ['ngResource', 'ngRoute']);

app.config(['$httpProvider', function ($httpProvider) {
  // CSRF
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
}]);
