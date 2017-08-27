(function (app) {
    var DetailsController = function ($scope, $routeParams, friendsService) {
        var id = $routeParams.id;
        friendsService
            .getById(id)
            .then(function(data) {
                $scope.friend = data.data;
            });
    };
    app.controller("DetailsController", DetailsController);
}(angular.module("theFriends")));