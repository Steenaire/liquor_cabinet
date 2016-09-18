(function() {
    'use strict';
    angular.module("app").controller("recipesCtrl", function($scope, $http) {
        $scope.setup = function() {
            $http.get("/api/v1/recipes.json").then(function(response) {
                $scope.recipes = response.data;
            }, function(error) {
                console.log("sad path");
            });

            $http.get("/api/v1/ingredients.json").then(function(response) {
                $scope.ingredients = response.data;
            }, function(error) {
                console.log("sad path");
            });
        }

    });
})();