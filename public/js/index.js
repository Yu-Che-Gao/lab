var myApp = angular.module('myApp', ['ngRoute']);

myApp.config(function ($routeProvider) {
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
myApp.controller('headerController', ['$scope', '$route', function ($scope, $route) {
    $scope.headerObject = [
        { text: '首頁', href: '#/' },
        { text: '期刊論文', href: '#/periodical_article' },
        { text: '研討會論文', href: '#/conference_paper' },
        { text: '研發成果智財權', href: '#/result' },
        { text: '大專生專題成果', href: '#/university_study' },
        { text: '研究生論文', href: '#/thesis' },
        { text: '成員榮譽事項', href: '#/honor_deeds' }
    ];

    $scope.setActive = function (page) {
        var currentRoute = '';
        if (window.location.hash !== '') currentRoute = window.location.hash;
        else currentRoute = '#/';
        return (page === currentRoute ? 'active' : '');
    };
}]);

//首頁
myApp.controller('mainController', ['$scope', function ($scope) {
    $scope.title = '智慧醫療暨大數據分析實驗室';
    $scope.subTitle = 'Intelligent Healthcare and Big Data Analysis Laboratory';
}]);

//期刊論文
myApp.controller('periodicalArticleController', ['$scope', function ($scope) {
    $scope.title = '期刊論文';
    $scope.subTitle = 'Periodical Article';
}]);

//研討會論文
myApp.controller('conferecePapersController', ['$scope', function ($scope) {
    $scope.title = '研討會論文';
    $scope.subTitle = 'Conference Papers';
}]);

//研發成果智慧財產權
myApp.controller('resultController', ['$scope', function ($scope) {
    $scope.title = '研發成果智慧財產權';
    $scope.subTitle = 'Intellectual Property Rights';
}]);

//大專生專題成果
myApp.controller('universityStudyController', ['$scope', function ($scope) {
    $scope.title = '大專生專題成果';
    $scope.subTitle = 'The Project Of University Graduating Students';
}]);

//研究生論文
myApp.controller('thesisController', ['$scope', function ($scope) {
    $scope.title = '研究生論文';
    $scope.subTitle = 'Thesis';
}]);

//成員榮譽事項
myApp.controller('honorDeedsController', ['$scope', function ($scope) {
    $scope.title = '成員榮譽事項';
    $scope.subTitle = 'Honor Deeds';
}]);