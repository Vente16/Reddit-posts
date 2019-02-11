  angular
   .module('reditApp')
   .controller('postController', postController);

    postController.$inject = ['$scope', 'postService'];

    function postController($scope, postService){
    
      angular.element('.home-loader').show();
      angular.element('.alert-home').hide();

	  postService.get_posts().then(function(posts){

	    $scope.posts = posts.data; 
	    $scope.response = posts.data.response;
	    delete $scope.posts.response;
	    $scope.tam = $scope.posts.length;
	    angular.element('.home-loader').hide();

	    if ($scope.tam == 0) {
	      angular.element('.alert-home').show();
	    }

	   });

    }
