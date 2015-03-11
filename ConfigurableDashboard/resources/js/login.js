angular.module('app', []).controller('loginController', function loginController($scope,$http) {
	$scope.myData = {};
    $scope.myData.doClick = function(item, event) {

        var responsePromise = $http.get("loadData.json");

        responsePromise.success(function(data, status, headers, config) {
            $scope.myData.fromServer = data;
        });
        responsePromise.error(function(data, status, headers, config) {
            alert("AJAX failed!");
        });
    };
});