(function (app) {
    var FriendListController = function ($scope, friendsService) {

        friendsService
            .getAll().then(function (data) {
                $scope.friends = data.data;
            });

            $scope.delete = function (friend) {
                friendsService.delete(friend.id)
                .then(function () {
                    removeFriendById(friend.id);
                });
        };

        var removeFriendById = function (id) {
            for (var i = 0; i < $scope.friends.length; i++) {
                if ($scope.friends[i].id == id) {
                    $scope.friends.splice(i, 1);
                    break;
                }
            }
        };
    };
    app.controller("FriendListController", FriendListController);
}(angular.module("theFriends")));
