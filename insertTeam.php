<?php

$dbname = 'owldb';
$dbuser = 'root';
$dbpass = 'Te@mHorizon1!';
$dbhost = 'localhost';

$connect = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");

mysqli_select_db($connect, $dbname) or die("Could not open the db '$dbname'");
$t_query = "SELECT * FROM TEAMS";

$t_results = mysqli_query($connect, $t_query);
global $connect;
echo <<<EOF1
<!DOCTYPE html>
<html lang="en">
<head>
  <title>OWL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap.css">
  <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap-grid.css">
  <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap-reboot.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="/owldb/bootstrap-4.3.1-dist//js/bootstrap.min.js"></script>
  <style>

     form{
     margin: 0 auto;
     width: 250px;
     }
     table{
     margin: 0 auto;
     }
      
  </style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-light navbar-light">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link"><img src="/owldb/images/overwatch_league_logo.png" alt="Logo" style="width:50px;"></a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="/owldb/TeamsAdm.php">
                    <h1>Back</h1>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/owldb/index.htm">
                    <h1>Logout</h1>
                </a>
            </li>
        </ul>
    </nav>

<div class="container bg-light">
<div class="row">
<div class="col-lg-12">
<div class="card card-body bg-success">
<h1 style="text-align:center;color:white;">Added Entry</h1>

</div>

</div>

<div class="container"><div class="row"><div class="col-lg-12"><div class="card bg-light" style=height:40px;>

</div></div></div></div>


</div>

EOF1;

    //$TEAM_ID = $_POST['TEAM_ID'];
    $TEAM_NAME = $_POST['TEAM_NAME'];
    $TEAM_CITY = $_POST['TEAM_CITY'];
    $TEAM_DIVISION = $_POST['TEAM_DIVISION'];
    $TEAM_COlORS = $_POST['TEAM_COlORS'];
    $TEAM_LOGO = $_POST['TEAM_LOGO'];
    

    /* if (!empty($TEAM_ID)){ */
        
        $sql = "insert into teams (TEAM_ID, TEAM_NAME, TEAM_CITY, TEAM_DIVISION, TEAM_COlORS, TEAM_LOGO)" .
                    " values (DEFAULT, '$TEAM_NAME', '$TEAM_CITY', '$TEAM_DIVISION', '$TEAM_COlORS', '$TEAM_LOGO')";
        
        if ($connect->query ($sql) == TRUE) {
           
        }
        else
        {
            echo "" . $connect->connect_error . "<br>";
            $action = 'TeamsAdm.php';
        }
    /*} 
    else
    {
        echo "Must provide a Team ID to enter a record <br>";
        $action = 'TeamsAdm.php';
    } */
        
  

?>
