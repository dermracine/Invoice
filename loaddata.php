<?php  
 //load_data.php  

$connect = mysqli_connect("localhost", "root", "", "invoice"); //Connect to mysql with localhost as root with no password and using the database called invoice.
 $output = '';  
 $outcont = '';
 $outdscr = '';
 $outblnk = '';
 $outtail = '';
 $rows = 20; //Number of rows for my invoice sheet for products
 
 if(isset($_POST["id"]))  
 {  
	  $sql = "SELECT * FROM customers WHERE id = '".$_POST["id"]."'";
  
	  $details = array("company","contact","address","city","state","zip","phone"); //Array for customer details when 
      $result = mysqli_query($connect, $sql);  //Connect to the customers database
	  $j = 0;
	  
	  $size = count($details); //Count the number of items in the array $details.
	  $new_details = array_map('ucfirst', $details); //Change array to first character uppercase.
	  
	  //This is the container for the Customer details
	  $outcont .= '<div class:container;><div style="width: 655px; display:inline-block;"></div><div style="border:1px solid #000; display:inline-block; width: 400px; background-color:lightgrey;">';
	  echo $outcont;
	  
	  //Use $details array to populate the customer details by using the following loops
	  //The $new_details variable is used to name each field with an upper case letter - this way I can re-use my array without creating another one.
	  while($row = mysqli_fetch_array($result))  
      {  
			while($j < $size)
			{	
				$output .= '
						<div class:container;>
							<div style="class:row; width: 600px; display: flex;">
								<div style="padding:5px; margin-bottom:2px; width: 100px; class:col; display:inline-block;" align="right"><b>'.$new_details[$j].': </b></div>
								<div style="padding:5px; margin-bottom:2px; width: 400px; class:col; display:inline-block;">'.$row["$details[$j]"].'</div>
							</div>
						</div>'; 
				$j++;
			}
          					
      }  

      echo $output; 
	  echo "</div></div>";"";//echo closing div tags to screen - had to escape semicolon
	  echo "<br />";
	  
	 $i=0;
	 while ($i < $rows){ //Loop through 20 times to give invoice format 20 rows
		 if($i==0){ //Setup div tags for header columns for invoice format - Qty, Unit Cost, Description, SSP, Total
			$outdscr .= ' 
			<div class:container;>
				<div style="border:0px solid #ff0102; class:row; width: 1300px; margin-bottom: -5px;">
					<div style="border:1px solid #000; padding:0px; margin-bottom:5px; width: 50px; class:col; height: 25px; background-color:lightblue; display:inline-block;" align="center">Qty
					</div><div style="border:1px solid #000; padding:0px; margin-bottom:5px; width: 85px; class:col; height: 25px; background-color:lightblue; display:inline-block;" align="center">Unit Cost
					</div><div style="border:1px solid #000; padding:0px; margin-bottom:5px; width: 800px; class:col; height: 25px; background-color:lightblue; display:inline-block;" align="center">Description
					</div><div style="border:1px solid #000; padding:0px; margin-bottom:5px; width: 50px; class:col; height: 25px; background-color:lightblue; display:inline-block;" align="center">SSP
					</div><div style="border:1px solid #000; padding:0px; margin-bottom:5px; width: 60px; class:col; height: 25px; background-color:lightblue; display:inline-block;" align="center">Total
					</div>
				</div>
			</div>';	
			echo $outdscr; //echo above formatting to screen 
		 }
	
		//Setup div tags for columns for invoice format - Quantity, Unit Cost, Description of product, Suggested Sale Price, and Total
		$outblnk .= '
			<div style="class:row; width: 1300px; margin-bottom: -4px;">
				<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 50px; height: 20px; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 85px; height: 20px; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 800px; height: 20px; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 50px; height: 20px; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>';
			$i++;
	}
	echo $outblnk; //echo above formatting to screen
	
	//This is for the last part of the invoice - subtotal, previous amount due, shipping, and total - I could use a loop here...
	$outtail .= '
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Subtotal
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>
			
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Previous amount due
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>
			
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Shipping
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>
			
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Total
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>';
			$i++;
			echo $outtail; //Send last invoice format details to screen
 }  
 

 ?>  