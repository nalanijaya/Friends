(function(app) {
    var friendsService = function ($http, friendsApiUrl) {
        var getAll = function() {
            return $http.get(friendsApiUrl);
        };

        var getById = function(id) {
            return $http.get(friendsApiUrl + id);
        };

        var create = function (friend) {
            console.log(JSON.stringify(friend));
            return $http.post(friendsApiUrl, friend);
        };

        var destroy = function(id) {
            return $http.delete(friendsApiUrl + id);
        };

        return {
            getAll: getAll,
            getById: getById,
            delete: destroy
        };
    };
    app.factory("friendsService", friendsService);
}(angular.module("theFriends")));