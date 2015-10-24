'use strict'

angular
  .module 'clickoticApp', [
    'ngResource'
    'ngRoute'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'mainCtrl'
      .when '/diagram',
        templateUrl: 'views/diagram.html'
        controller: 'DiagramCtrl'
        controllerAs: 'diagramCtrl'
      .otherwise
        redirectTo: '/'
