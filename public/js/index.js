var myApp = angular.module('myApp', ['ngRoute']);
var apiURI = '/lab_api/v1';

myApp.config(function($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: 'pages/main.html'
    }).when('/periodical_article', {
        templateUrl: 'pages/periodical_article.html'
    }).when('/conference_paper', {
        templateUrl: 'pages/conference_papers.html'
    }).when('/result', {
        templateUrl: 'pages/result.html'
    }).when('/university_study', {
        templateUrl: 'pages/university_study.html'
    }).when('/thesis', {
        templateUrl: 'pages/thesis.html'
    }).when('/honor_deeds', {
        templateUrl: 'pages/honor_deeds.html'
    }).otherwise({
        redirectTo: '/'
    });
});

//置頂選單
myApp.controller('headerController', ['$scope', function($scope) {
    $scope.headerObject = [
        { text: '首頁', href: '#/' },
        { text: '期刊論文', href: '#/periodical_article' },
        { text: '研討會論文', href: '#/conference_paper' },
        { text: '研發成果智財權', href: '#/result' },
        { text: '大專生專題成果', href: '#/university_study' },
        { text: '研究生論文', href: '#/thesis' },
        { text: '成員榮譽事項', href: '#/honor_deeds' }
    ];

    $scope.setActive = function(page) {
        var currentRoute = '';
        if (window.location.hash !== '') currentRoute = window.location.hash;
        else currentRoute = '#/';
        return (page === currentRoute ? 'active' : '');
    };
}]);

//首頁
myApp.controller('mainController', ['$scope', function($scope) {
    $scope.title = '智慧醫療暨大數據分析實驗室';
    $scope.subTitle = 'Intelligent Healthcare and Big Data Analysis Laboratory';
}]);

//期刊論文
myApp.controller('periodicalArticleController', ['$scope', '$http', function($scope, $http) {
    $scope.title = '期刊論文';
    $scope.subTitle = 'Periodical Article';
    $http.get(apiURI + '/periodical_article/select').then(function(response) {
        $scope.allPeriodicalArticles = response.data;
    });
}]);

//研討會論文
myApp.controller('conferecePapersController', ['$scope', '$http', function($scope, $http) {
    $scope.title = '研討會論文';
    $scope.subTitle = 'Conference Papers';
    $http.get(apiURI + '/conference_paper/select').then(function(response) {
        $scope.allConferencePapers = response.data;
    });
}]);

//研發成果智慧財產權
myApp.controller('resultController', ['$scope', '$http', function($scope, $http) {
    $scope.title = '研發成果智慧財產權';
    $scope.subTitle = 'Intellectual Property Rights';
    $http.get(apiURI + '/intellectual_property_rights/select').then(function(response) {
        $scope.allResults = response.data;
    });
}]);

//大專生專題成果
myApp.controller('universityStudyController', ['$scope', '$http', function($scope, $http) {
    $scope.title = '大專生專題成果';
    $scope.subTitle = 'The Project Of University Graduating Students';
    $http.get(apiURI + '/university_study/select').then(function(response) {
        $scope.allStudys = response.data;
    });
}]);

//研究生論文
myApp.controller('thesisController', ['$scope', '$http', function($scope, $http) {
    $scope.title = '研究生論文';
    $scope.subTitle = 'Thesis';
    $http.get(apiURI + '/thesis/select').then(function(response) {
        $scope.allThesis = response.data;
    });
}]);

//成員榮譽事項
myApp.controller('honorDeedsController', ['$scope', '$http', function($scope, $http) {
    $scope.title = '成員榮譽事項';
    $scope.subTitle = 'Honor Deeds';
    $http.get(apiURI + '/honor_deeds/select').then(function(response) {
        $scope.allHonor = response.data;
    });
}]);