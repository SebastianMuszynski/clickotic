'use strict'

###*
 # @ngdoc overview
 # @name clickoticApp
 # @description
 # # clickoticApp
 #
 # Main module of the application.
###
angular
  .module 'clickoticApp', [
    'ngResource',
    'ngRoute'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
        controllerAs: 'main'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
        controllerAs: 'about'
      .otherwise
        redirectTo: '/'

