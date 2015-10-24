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
      .when '/robot',
        templateUrl: 'views/robot.html'
        controller: 'RobotCtrl'
        controllerAs: 'robotCtrl'
      .otherwise
        redirectTo: '/'
