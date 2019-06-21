<?php
     session_start();
     require_once("adodb.inc.php");
     require_once("Smarty.class.php");
     require_once("service_mappings.php");
     //require_once("connection.php"); 

     $service=register("service","LOGIN");
     $params=getParameters();

     $smarty=new Smarty;

     if(array_key_exists($service, $service_mappings))
     {
         include_once($service_mappings[$service].".php");
         $obj=new $service_mappings[$service]($params,$smarty);   
     }
     else
     {
          include_once("Error.php");
          $obj=new Error($params,$smarty);

     }

	 function register($serviceIdentifier,$defaultService)
     {
         $parameters=getParameters();
         if(isset($parameters[$serviceIdentifier]))
            return $parameters[$serviceIdentifier];
         else
            return $defaultService;

     }

     function getParameters()
     {
         global $_POST,$_GET;
         $params=array();
         
         foreach($_GET as $key=>$value)
         {       $params[$key]=$value;  }
         
         foreach($_POST as $key=>$value)
         {      $params[$key]=$value;   }       
	return $params;

     }
?>
