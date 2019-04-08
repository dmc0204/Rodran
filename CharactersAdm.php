<?php

$dbname = 'owldb';
$dbuser = 'root';
$dbpass = 'Te@mHorizon1!';
$dbhost = 'localhost';

$connect = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");

mysqli_select_db($connect, $dbname) or die("Could not open the db '$dbname'");

$c_query = "SELECT * FROM CHARACTERS";

$c_results = mysqli_query($connect, $c_query);



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
                    <h1 style="text-align:justify">Teams</h1>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/owldb/PlayersAdm.php">
                    <h1>Players</h1>
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/owldb/CharactersAdm.php">
                    <h1>Characters</h1>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/owldb/MapsAdm.php">
                    <h1>Maps</h1>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/owldb/RosterAdm.php">
                    <h1>Roster</h1>
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
<h1 style="text-align:center;color:white;">Characters Page</h1>

</div>

</div>

<div class="container"><div class="row"><div class="col-lg-12"><div class="card bg-light" style=height:40px;>

</div></div></div></div>


</div>

EOF1;
 $str = <<<EOD
    <form action='insertCharacter.php' method='post'>
    <fieldset>
        <legend>Character Data Entry</legend>
        Character Name:
        <input type="text" name="CHARACTER_NAME" size="25">
        <br> Role:
        <input type="text" name="CHARACTER_ROLE" size="25">
        <br> Image:
        <input type="text" name="CHARACTER_IMG" size="25">
        <input type="submit" name="btnInsert" value="Insert"><br>
        
    </fieldset>
    </form>
EOD;
    /*<form action='searchPlayer.php' method='post'>
    <fieldset>
    <legend>Search for Entry</legend>
    <input type='text' name='txtSearchTerm'>
    <br>
    <input type='submit' name='btnSearch' value='Search by ID'>
    </fieldset>
    </form>*/

    echo $str;
//global $thisPHP
if ($c_results->num_rows > 0) {
           
    
                       
       echo "<h4>Characters</h4>";
        echo "<table>";
        echo "<thead><tr><td>Character ID</td> <td>Character Name ID</td> <td>Character Role</td><td>Character Image</td> ";
        echo "<td> Delete? </td></tr></thead>";   
        while($row = $c_results->fetch_assoc()) 
        {
            echo "<tbody><tr>";
            $CHARACTER_ID = $row["CHARACTER_ID"];
            echo  "<td>" . $CHARACTER_ID . "  </td> <td> " . $row["CHARACTER_NAME"] . 
                  " </td> <td> " . $row["CHARACTER_ROLE"] . 
    		      " </td> <td> " . $row["CHARACTER_IMG"] .
                  "</td>  <td> "; 
               
            echo "<form action='deleteCharacter.php' method='post' style='display:inline' >";
            echo "<input type='hidden' name='CHARACTER_ID' value='{$CHARACTER_ID}'>";
            echo "<input type='submit' name='btnDelete' value='Delete'></form>";
            echo "</td></tr></tbody>";
        }
        
                }
            
            
  
    

echo <<<EOF2



</body>
</html>
 
EOF2;
 
?>