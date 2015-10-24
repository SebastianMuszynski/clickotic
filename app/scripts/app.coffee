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
        controllerAs: 'main'
      .otherwise
        redirectTo: '/'

    $locationProvider.html5Mode true
