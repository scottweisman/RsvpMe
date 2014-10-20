angular
  .module('app')
  .factory('Rsvp', function($resource) {

    var Rsvp = $resource('http://averyrsvp.dev/api/v1/rsvps/:id.json', {id: '@id'});

    return Rsvp;
  });