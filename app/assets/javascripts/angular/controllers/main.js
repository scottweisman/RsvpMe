angular
  .module('app')
  .controller('MainCtrl', ['Rsvp', '$scope', '$routeParams',
    function(Rsvp, $scope, $routeParams) {

    $scope.rsvps = Rsvp.query();

  }]);