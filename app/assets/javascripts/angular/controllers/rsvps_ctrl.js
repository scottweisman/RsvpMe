app.controller('RsvpsCtrl', ['$scope', 'Rsvp', function($scope, Rsvp) {
  $scope.rsvps = Rsvp.all();

  $scope.createRsvp = function() {
    var attr = {};
    attr.name = $scope.rsvp.name;
    attr.attending = $scope.rsvp.attending;
    attr.number = $scope.rsvp.number;
    var newRsvp = Rsvp.create(attr);
    $scope.rsvps.push(newRsvp);
    $scope.newRsvp = "";
  };

}]);