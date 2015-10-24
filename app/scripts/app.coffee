'use strict'

angular
  .module 'clickoticApp', [
    'ngResource'
    'ngRoute'
  ]
  .config ($routeProvider, $locationProvider) ->
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

    $locationProvider.html5Mode true
