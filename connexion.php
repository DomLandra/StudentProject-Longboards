<?php
try{
$bdd = new PDO('mysql:host=localhost;dbname=snowboard', 'root', 'root', array( PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
}
catch(Exception $e)
{
    echo 'Erreur : '.$e->getMessage().'<br />';
    echo 'N° : '.$e->getCode();
}
// getDB
include ('getDB.php');

	// Insert DB champs connexion
	// $sql = "INSERT INTO `Users`(`email`, `emailControl`, `mot_de_passe`,`mot_de_passeControl`) VALUES (1,2,3,4,5)";
  
  	// Insert DB champs inscription
  	// $sql = "INSERT INTO `Users`(`PersonId`, `Nom`, `email`, `pwd`, 'role') VALUES (NULL, 'D','D','d@d.fr, 0)";
 
    // $sql= "SELECT email FROM Users WHERE email='studio.devisual@gmail.com'";
	// $bdd -> query($sql);
	// var_dump($bdd);
   
   foreach ($bdd->query($sql) as $row) {
		$result []=$row; 
	}
	var_dump($result);

   
  // $sql= "SELECT email FROM Users WHERE email='studio.devisual@gmail.com'";
//   $bdd -> query($sql);var_dump($bdd);

// Valeurs Array
  //foreach ($bdd->query($sql) as $row) {
//	$result []=$row; 
//	}
//var_dump($result);

	 
// SELECT email FROM Users WHERE email='studio.devisual@gmail.com' 
// if($result) {echo 'OK';}
		$email = $_GET['email'];
		  $emailControl = $_GET['emailControl']; 
		  $mdp = $_GET['mot_de_passe'];              
		  $mdpC = $_GET['mot_de_passeControl'];
	
	/* Formulaire connexion */
	if( isset($_GET) ){
      $email = $_GET['email'];
      $emailControl = $_GET['emailControl']; 
      $mdp = $_GET['mot_de_passe'];              
      $mdpC = $_GET['mot_de_passeControl'];
	} 	if(
		$mdp == $mdpC ){ 
			echo 'Bienvenue Capitaine Kirk ! Votre email' . $email;					
	}		
	else {echo 'Major Tom';}
		
	$query = $db->prepare( 'INSERT INTO Users ( PersonId,email,pwd, role ) VALUES (NULL, :email, :pwd, 0' );
        $query->bindValue('email', $_GET['email'], PDO::PARAM_STR);
        $query->bindValue('pwd', $_GET['mot_de_passe'], PDO::PARAM_STR);
        $query->execute();
		
	
