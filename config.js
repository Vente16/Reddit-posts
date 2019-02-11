  angular
    .module('reditApp', ['ngRoute'])
    .config(config)
    .run(start);

    config.$inject = ['$routeProvider'];
    start.$inject  = ['$rootScope', '$route'];
    
    // rutas
    function config($routeProvider){
      $routeProvider
        .when('/', {
          title: 'RedditApp - Home',
          templateUrl: 'post/list.html',
          controller:'postController'
        })
        .when('/post/:id', {
          title: 'RedditApp - Detail',
          templateUrl: 'post/details.html',
          controller:'detailsController'
        })
        .otherwise({
          redirectTo: '/'
        });

    }
    
    // cambio de title
    function start($rootScope, $route){
      $rootScope.$on('$routeChangeSuccess', function() {
        document.title = $route.current.title;
       });
    }

    
