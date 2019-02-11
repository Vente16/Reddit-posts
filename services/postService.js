   angular
    .module('reditApp')
    .factory('postService', postService);

    postService.$inject = ['$http', '$q'];
    
    function postService($http, $q){

    	return {
       	  get_posts: get_posts,
       	  get_post: get_post 
        };

        function get_posts(){

       	    var defered = $q.defer();

	        var Values = {
	            method: 'GET',
	            url: "api/posts",
	            headers: {
	               'Content-Type': 'application/x-www-form-urlencoded'
	            }
	        };

	        $http(Values).then(function (response) {
	           defered.resolve(response);
	        }, function myError(err) {
	           defered.reject(err);
	        }).finally(function () {});

	        var promise = defered.promise;
	        return promise;  

	    } 

	    function get_post(id){

       	    var defered = $q.defer();

	        var Values = {
	            method: 'GET',
	            url: "api/post/"+id,
	            headers: {
	               'Content-Type': 'application/x-www-form-urlencoded'
	            }
	        };

	        $http(Values).then(function (response) {
	           defered.resolve(response);
	        }, function myError(err) {
	           defered.reject(err);
	        }).finally(function () {});

	        var promise = defered.promise;
	        return promise;  

	    } 



    }

       
