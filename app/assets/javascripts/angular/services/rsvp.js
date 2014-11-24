app.factory('Rsvp', ['$resource', function($resource) {
  function Rsvp() {
    this.service = $resource('/api/v1/rsvps/:rsvpId', {rsvpId: '@id'});
  };
  Rsvp.prototype.all = function() {
    return this.service.query();
  };
  Rsvp.prototype.create = function(attr) {
     return this.service.save(attr);
   }
  return new Rsvp;
}]);