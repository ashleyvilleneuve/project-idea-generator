<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/base.css">
</head>
<body>

	<header>
		<a href="http://ashleyvilleneuve.ca#main"><div class="logo"></div></a>
		<div class="headers"><a href="http://ashleyvilleneuve.ca#main"><h2> Ashley Villeneuve</h2></a></div>
	</header>


<main class="container">
	<h1>Project Idea Generator</h1>
	<p class="summary">Learning to code takes a lot of practice. These project ideas can help 
		you get started.</p>

		<hr>

		<!-- Category limiters for random query -->

		<input type="radio" name="lim" value="all">All skills<br>
		<input type="radio" name="lim" value="css">HTML/CSS
		<input type="radio" name="lim" value="javascript">Javascript/jQuery<br>
		<input type="radio" name="lim" value="php">PHP
		<input type="radio" name="lim" value="python">Python<br>

		<hr>

		<!-- Skill Level limiters for random query -->

		<input type="radio" name="com" value="all">All Levels
		<input type="radio" name="com" value="simple">Simple
		<input type="radio" name="com" value="moderate">Moderate
		<input type="radio" name="com" value="complex">Complex<br>

	<hr>
	<!-- Div where the query result will appear -->
	<div id="results">
	<?php include('data.php'); ?>
	</div>
	<hr>
	<button class="randomizerButton">Get Another Idea</button>

	
</main>
<footer>If you have a suggestion for a project I should include, please <a href="http://ashleyvilleneuve.ca#contact">drop me a line</a>.</footer>

<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){

		//When the button is clicked, check which Skill input is select (if any) and assign that value to cat 

        $('button.randomizerButton').click(function(){
        	if($('input[value=css]').prop("checked")){  
	        	var cat = "css";
	        }else if($('input[value=javascript]').prop("checked")){
	        	var cat = "javascript";
	        }else if($('input[value=php]').prop("checked")){
	        	var cat = "php";
	        }else if($('input[value=python]').prop("checked")){
	        	var cat = "python";
	        }else{
	        	var cat = "all";
	        };

	        //then check which Level input is checked (if any) and assign that value to com

	        if($('input[value=simple]').prop("checked")){  
	        	var com = "simple";
	        }else if($('input[value=moderate]').prop("checked")){
	        	var com = "moderate";
	        }else if($('input[value=complex]').prop("checked")){
	        	var com = "complex";
	        }else{
	        	var com = "all";
	        };

	        //now pass the variables to data.php (our handler script) and load the results into the "results" div

            $.post("data.php",
            {
			  cat:cat,
			  com:com
			},
			  function(response){
                $('#results').html(response);
            	});
			});

   		 });


    
</script>

</body>
</html>