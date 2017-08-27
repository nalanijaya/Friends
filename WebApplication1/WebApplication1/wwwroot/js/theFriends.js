(function () {
    var app = angular.module("theFriends", ["ngRoute"]);
    var config = function ($routeProvider, $locationProvider) {
            $routeProvider
            .when("/list",
                { templateUrl: "/html/list.html", controller: "FriendListController" })
            .when("/details/:id",
                { templateUrl: "/html/details.html", controller: "DetailsController" })
            .otherwise(
                { redirectTo: "/list", controller: "FriendListController" });
           };
   
    app.config(config);
    app.constant("friendsApiUrl", "/api/friends/");
}());


