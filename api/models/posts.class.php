<?php 
  
  require_once "conexion.class.php";
 
  class posts{
  
		public $con;

		public function __construct(){
			  
		  $conexion = new conexion();
		  $this->con = $conexion->getConexion();
	  }

	  public function get_posts(){

	    $sql = "SELECT * FROM posts";
      $query = $this->con->prepare($sql);
      $query->execute();

      $json = array();
       
      foreach ($query as $post) {
        $json[] = $post;
      }

      return $json;

	  }

	  public function get_post($id){

	    $sql = "SELECT * FROM posts WHERE id=:id";
      $query = $this->con->prepare($sql);
      $query->bindParam(":id", $id);
      $query->execute();

      $json = array();
       
      foreach ($query as $post) {
     	$json[] = $post;

      }

      return $json;

	  }

  }




 ?>