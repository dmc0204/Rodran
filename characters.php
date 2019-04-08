<?php

$dbname = 'owldb';
$dbuser = 'root';
$dbpass = 'Te@mHorizon1!';
$dbhost = 'localhost';

$connect = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");

mysqli_select_db($connect, $dbname) or die("Could not open the db '$dbname'");

$char_query = "SELECT * FROM CHARACTERS";

$char_results = mysqli_query($connect, $char_query);


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

      /* custom style script
      
  </style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/owldb/index.htm"><img src="/owldb/images/overwatch_league_logo.png" alt="Logo" style="width:50px;"></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/owldb/teams.php"><h1 style="text-align:justify">Teams</h1></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/owldb/players.php"><h1>Players</h1></a>
    </li>
   <li class="nav-item active">
      <a class="nav-link" href="/owldb/characters.php"><h1>Characters</h1></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/owldb/maps.php"><h1>Maps</h1></a>
    </li>
    <li class="nav-item">
                <a class="nav-link" href="/owldb/login.html">
                    <h1>Admin</h1>
                </a>
            </li>
  </ul>
</nav>

<div class="container bg-dark">
<div class="row">
<div class="col-lg-12">
<div class="card card-body bg-success">
<h1 style="text-align:center;color:white;">Characters Page</h1>

</div>

</div>

<div class="container"><div class="row"><div class="col-lg-12"><div class="card bg-dark" style=height:40px;>

</div></div></div></div>


</div>

EOF1;

if ($char_results->num_rows > 0) {
        // output data of each row
        echo "<div class=container container-fluid>";
            echo "<div class=row>";
    
        // setting count variable to 0. It is used to increment breaks between rows.
        $count = 0;
    
        while($rowc = $char_results->fetch_assoc()) 
        {
           
            $char_name = "{$rowc["CHARACTER_NAME"]}";
            $char_type = "{$rowc["CHARACTER_ROLE"]}";
            $char_img = "{$rowc["CHARACTER_IMG"]}";
            $logo = "/owldb/images/";
                       
            //incrementing the count variable by +1.
            ++$count;
            
                echo "<div class=col-lg-3>";
                    echo "<div class=card>";
                    echo '<img class="card-img-top border border-dark" src="'.$logo.$char_img.'" alt="Logo" height="320" width="50">';
                        echo "<div class=card-body>";
                        echo '<h5 class="bg-success border border-dark card-title" style="text-align:center">'.$char_name.'</h5>';
                        
                    echo "<ul class=list-group list-group-flush>";
                    echo '<li class="list-group-item bg-light"><h4><b>Type:</b> '.$char_type.'</h4></li>';
                    echo "</ul>";
            echo "</div>";
                echo "</div>";
            echo "</div>";
                       
            $countt = $count / 4;
            
            if (is_int($countt)){
                
                echo '<div class="col-lg-12"><div class="card bg-dark"><hr size=20 style="border:transparent;visibility:hidden";></hr></div></div>';
            
                }           
                
            }
    
            }
            
        echo "</div>";
    echo "</div>"; 
                 
                 
           
        
        
    


echo <<<EOF2

<footer class="container-fluid text-center">
<div class="row bg-light" style="height:5px">
<div class="col-xsm-12">
<hr size="5px" style="visibility:hidden"></hr>
    </div>
  </div>
<div class="row bg-light">
<div class="col-lg-12">
  <p><h4>Powered By <b>Rodran</b> (Adrian Pekala, Donovan Cummins and Earl Maudrie)</h4></p>
  </div>
  </div>
</footer>

</body>
</html>
 
EOF2;
 
?>