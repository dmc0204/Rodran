<?php

$dbname = 'owldb';
$dbuser = 'root';
$dbpass = 'Te@mHorizon1!';
$dbhost = 'localhost';

$connect = mysqli_connect($dbhost, $dbuser, $dbpass) or die("Unable to Connect to '$dbhost'");

mysqli_select_db($connect, $dbname) or die("Could not open the db '$dbname'");

$teams_query = "SELECT * FROM TEAMS";

$teams_results = mysqli_query($connect, $teams_query);


echo <<<EOF1
<!DOCTYPE html>
<html lang="en">
<head>
  <title>OWL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="/owldb/bootstrap-4.3.1-dist/css/bootstrap-grid.css">
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
    <li class="nav-item active">
      <a class="nav-link" href="/owldb/teams.php"><h1 style="text-align:justify">Teams</h1></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/owldb/players.php"><h1>Players</h1></a>
    </li>
   <li class="nav-item">
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
                    <h1 style="text-align:center;color:white;">Teams Page</h1>

                </div>

        </div>

        <div class="container"><div class="row"><div class="col-lg-12"><div class="card bg-dark" style=height:40px;>

        </div>
        </div>
  

        </div>
    </div>

EOF1;

if ($teams_results->num_rows > 0) {
        // output data of each row
        echo "<div class=container container-fluid>";
        echo "<div class=row>";
    
        // setting count variable to 0. It is used to increment breaks between rows.
        $count = 0;
    
        while($rowt = $teams_results->fetch_assoc()) 
        {
           
            $logo = "/owldb/images/";
            $team = "{$rowt["TEAM_LOGO"]}";
            $team_id = "{$rowt["TEAM_ID"]}";
            $team_name = "{$rowt["TEAM_NAME"]}";
            $team_city = "{$rowt["TEAM_CITY"]}";
            $team_division = "{$rowt["TEAM_DIVISION"]}";
            $team_colors = "{$rowt["TEAM_COlORS"]}";
            
            //incrementing the count variable by +1.
            ++$count;
            
                echo "<div class=col-lg-4>";
                    echo "<div class=card>";
                        echo '<img class="card-img-top border border-dark" src="'.$logo.$team.'" alt="Logo" height="250">';
                            echo "<div class=card-body>";
                            echo '<h5 class="bg-success border border-dark card-title" style="text-align:center">'.$team_name.'</h5>';
                            echo "</div>";
                        echo "<ul class=list-group list-group-flush>";
                            echo '<li class="list-group-item bg-light"><h4><b>City:</b> '.$team_city.'</h4></li>';
                            echo '<li class="list-group-item"><h6><b>Division:</b> '.$team_division.'</h6></li>';
                            echo '<li class="list-group-item bg-light"><h6><b>Colors:</b> '.$team_colors.'</h6></li>';
                        echo "</ul>";
                            echo '<div class=card bg-warning card-body>';
           /* echo "<h2 class=bg-warning style=text-align:center>Roster</h2>";
            echo ""; */
            
                        $roster_query = "SELECT * FROM PLAYERS pp JOIN ROSTER rr on pp.PLAYER_ID = rr.PLAYER_ID JOIN TEAMS tt on rr.TEAM_ID = tt.TEAM_ID where tt.TEAM_ID = '{$rowt["TEAM_ID"]}'";
                        
                        $roster_results = mysqli_query($connect, $roster_query);
            
            echo '<div class="dropdown text-center">
  <button type="button" class="btn btn-warning btn-lg dropdown-toggle" data-toggle="dropdown" width="100%">
    Roster
  </button>
  <div class="dropdown-menu">
    ';
  
            
            if ($roster_results->num_rows > 0) {
            // output data of each row
            
                while($rowp = $roster_results->fetch_assoc()) 
                {
                    echo "<a class=dropdown-item href=/owldb/players.php>{$rowp["PLAYER_FIRSTNAME"]} {$rowp["PLAYER_LASTNAME"]}</a>";
                    /* echo "<div class=row><div class=card-body><div class=col-sm-6>{$rowp["PLAYER_FIRSTNAME"]}</div>";
                    echo "<div class=col-sm-6>{$rowp["PLAYER_LASTNAME"]}</div></div></div>";*/
                }
            }
            
                            echo "</div>";
                        echo "</div>"; 
                    echo "</div>";
            echo "</div></div>";
            
            $countt = $count / 3;
            
            if (is_int($countt)){
                
                echo '<div class="col-lg-12"><div class="card bg-dark"><hr size=20 style=visibility:hidden></hr></div></div>';
                
            }
        
        }
            echo "</div>";
        echo "</div>";
    
    }

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
