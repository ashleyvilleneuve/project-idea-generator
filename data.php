
		<?php

		include("mysqlconnect.php");

		if(isset($_POST['cat']) || isset($_POST['com'])) //Check if we have any inputs selected
		{

			$cat = $_POST['cat'];  //if we do, assign them to variables
			$com = $_POST['com'];

			if($cat != "all" && $com != "all"){  //if the category and the complexity are both not equal to all, 
			
					$query = "SELECT * FROM ideas where category='$cat' AND complexity='$com' ORDER BY RAND() limit 1;"; //limit by both of these values then select a random record from results
			
			 }else if($cat !="all" && $com = "all"){ //if the category is limited but not complexity level

			 	$query = "SELECT * FROM ideas where category='$cat' ORDER BY RAND() limit 1;"; //limit by that category then randomly select a record

			 }else if($cat = "all" && $com != "all"){  //if the complexity is limited but not the category

			 	$query = "SELECT * FROM ideas where complexity='$com' ORDER BY RAND() limit 1;";  //limit by that complexity value then randomly select a record

			 }else{ //if both complexity and category are unlimited

			 	$query = "SELECT * FROM ideas ORDER BY RAND() limit 1;"; //randomly select any record

			 };

			}else{	 //if there is no input selected
 	
		 		$query = "SELECT * FROM ideas ORDER BY RAND() limit 1;"; //randomly select a record from all
		 	 
		 	 };

    	 $result = mysql_query($query) or die ("Error in query: $query. ".mysql_error()); //assign the result of the query above to a variable

    	 //see if any rows were returned

			if (mysql_num_rows($result) > 0) {

			 //if yes, print them into the following template 

			    while($row = mysql_fetch_row($result)) {
			    	
			        echo "<a href='" . $row[2] . "' alt='" . $row[1] . "' target='blank'><div class='content'><h2>" . $row[1] . "</h2>";
			        echo "<p>" . $row[3] . "</p></div></a>";

				}
			   
			}else{
			    //if no results
			    //print status message
			    echo "nothing to show";
			}; 

	
		?>
