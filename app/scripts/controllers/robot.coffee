'use strict'

angular.module('clickoticApp').controller 'RobotCtrl', ($scope, $http) ->

  $scope.runProgram = ->
    data   = {}
    config = {}
    $http.put('http://f5882bcd.ngrok.io/robots/1/programs/aghacks', data, config).then (result) ->
      console.log result

