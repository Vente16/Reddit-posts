  angular
   .module('reditApp')
   .controller('detailsController', detailsController);

  detailsController.$inject = ['$scope', '$routeParams' ,'postService'];

  function detailsController($scope, $routeParams, postService){

    var id_post = $routeParams.id;
    angular.element('.alert-detail').hide();
    angular.element('.detail-news').hide();

    postService.get_post(id_post).then(function(post){
      $scope.details = post.data[0];
      angular.element('.loader').show();
      setTimeout(function(){
        $scope.show = post.data.response;
        angular.element('.loader').hide();
        if (!$scope.show) {
          angular.element('.alert-detail').show();
        }else{
          angular.element('.detail-news').show();  
        }
          //console.log($scope.show);
      }, 500);
      
    }); 

   }
