<?php  
 //load_data.php  

$connect = mysqli_connect("localhost", "root", "", "invoice"); //Connect to mysql with localhost as root with no password and using the database called invoice.
 $output = '';  
 $outcont = '';
 $outdscr = '';
 $outblnk = '';
 $outtail = '';
 $invnum = '';
 $rows = 20; //Number of rows for my invoice sheet for products

function fill_description_menu($connect)  
 {  
      $output = '';  
	  $sql = "SELECT * FROM products order by product asc";//Query the products table.
      $result = mysqli_query($connect, $sql);  
      while($row = mysqli_fetch_array($result))  //Loop to populate pulldown menu
      {  
		   $output .= '<option value="'.$row["id"].'">'.$row["product"].'</option>';  
      }  
      return $output;  
 }  
 
 //function inv_number($connect)
 //{
//	 $invnum = '';
//	 $sql = "SELECT invnumber from counter";
//	 $result = mysqli_query($connect, $sql);
//	 while($row = mysqli_fetch_array($result))
//	 {
//		 $invnum .= $row[0];
//	 }
//	 return $invnum;
 //}
 
 function printinv($connect)
 {
	$invnum = '';
	$newinvnum = '';
	$conn = mysqli_connect('localhost','root','','invoice') or die ("Connection Failed");
	$sql = "SELECT invnumber from counter";
	$sqlwrite = "update counter set invnumber = invnumber + 1 where id = 1";
	$result = mysqli_query($connect, $sql);
	while($row = mysqli_fetch_array($result))
	{
		$invnum .= $row[0];
	}
	 
	 $newinvnum = $invnum + 1;
	 
	 echo $newinvnum;
	 
	 if(isset($_POST['submit']))
	 {
		 $query = mysqli_query($conn,"UPDATE counter SET invnumber = invnumber + 1 WHERE id = '1'");
	 }
	 
 }
 
 function inv_number($connect)
 {
	 $invnum = '';
	 $newinvnum = '';
	 $sql = "SELECT invnumber from counter";
	 $result = mysqli_query($connect, $sql);
	 while($row = mysqli_fetch_array($result))
	 {
		 $invnum .= $row[0];
	 }
	 $newinvnum .= $invnum + 1;
	 $query = mysqli_query($connect,"UPDATE `counter` SET `invnumber` = '$newinvnum' WHERE `id` = '1'");
	 return $invnum;
 }
 
 //function increment($connect)
 //{
	// $invnum = '';
	// $newinvnum = '';
	// $sql =  "SELECT invnumber from counter";
	// $result = mysqli_query($connect, $sql);
	// while($row = mysqli_fetch_array($result))
	// {
	//	 $invnum .= $row[0];
	// }
	// $newinvnum .= $invnum + 1;
	// $query = mysqli_query($connect,"UPDATE `counter` SET `invnumber` = '$newinvnum' WHERE `id` = '1'");
	// return $newinvnum; 
// }
 if(isset($_POST["id"]))  
 {  
	  $sql = "SELECT * FROM customer WHERE id = '".$_POST["id"]."'";
  
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
				<div style="border:0px solid #ff0102; class:row; width: 1300px; margin-bottom: 0px;">
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
		<table border=0>
			<div style="class:row; width: 1300px; margin-bottom: 1px;">
				<tr>
					<td>
						<div style="border:1px solid #000; padding:0px; margin-bottom:1px; width: 50px; height: 25px; class:col; background-color:lightblue; display:inline-block;" align="center" >
							<input size="2.5" type="text" class="row'.$i.'"/>
						</div>
					</td>
					<td>
						<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 85px; height: 25px; class:col; background-color:lightblue; display:inline-block;" align="center">
							<input size="4" type="text" class="row'.$i.'"/>
						</div>
					</td>
					<td>
						<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 800px; height: 25px; class:col; background-color:lightblue; display:inline-block;" align="center" id="fill">
							<select name="fill_description" id="fill_description" background-color="lightblue" style="width: 780px" margin-bottom="2px">
								<option value="">'.fill_description_menu($connect).'</option>
							</select>
						</div>
					</td>
					<td>
						<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 50px; height: 25px; class:col; background-color:lightblue; display:inline-block;" align="center" id="fill">
							<input size="2.5" type="text" class=""/>
						</div>
					</td>
					<td>
						<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 25px; class:col; background-color:lightblue; display:inline-block;" align="center" id="orphan">
							<input size="2" type="number" class="row'.$i.'"/>
						</div>
					</td>
				</tr>
			</div>
			';

			$i++;
	}
	echo $outblnk; //echo above formatting to screen
	
	
	//This is for the last part of the invoice - subtotal, previous amount due, shipping, and total - I could use a loop here...
	$outtail .= '
			</table><div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="center">
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Subtotal
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>
			
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="right">
					<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 200px; height: 20px; vertical-align: top; display:inline-block; background-color:lightblue;" align="left">Date: '.date("m-d-Y").'
					</div><div style="padding:0px; margin-bottom:0px; width: 150px; height: 20px; vertical-align: top; display:inline-block;">
					</div>
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Previous amount due
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>
			
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="right">
					<div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 200px; height: 20px; vertical-align: top; display:inline-block; background-color:lightblue;" align="left">Invoice #: '.inv_number($connect).'
					</div><div style="padding:0px; margin-bottom:0px; width: 150px; height: 20px; vertical-align: top; display:inline-block;">
					</div>
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Shipping
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>
			
			<div style="class:row; width: 1300px; margin-bottom: 0px;">
				<div style="padding:0px; margin-bottom:0px; width: 781px; height: 20px; vertical-align: top; class:col; display:inline-block;" align="right">
					<div style="padding:0px; margin-bottom:0px; width: 200px; height: 20px; vertical-align: top; display:inline-block;" align="center">
						<form action="about:blank"><button class="submit" type="submit" name="submit" >Print Invoice</button></form>
					</div><div style="padding:0px; margin-bottom:0px; width: 150px; height: 20px; vertical-align: top; display:inline-block;">
					</div>
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; padding-right: 10px; width: 200px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="right">Total
				</div><div style="border:1px solid #000; padding:0px; margin-bottom:0px; width: 60px; height: 20px; vertical-align: top; class:col; background-color:lightblue; display:inline-block;" align="center">
				</div>
			</div>';
			$i++;
			echo $outtail; //Send last invoice format details to screen
 }  
 ?>  
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <script>
//AJAX jQuery for function to multiply qty * price
	$('#input2,#input1').keyup(function(){
		var textValue1 =$('#input1').val();
		var textValue2 =$('#input2').val();
		$('#output').val(textValue1 * textValue2);
	});
</script>

<script>
$('table input').on('input', function() {
  var $tr = $(this).closest('tr'); // get tr which contains the input
  var tot = 1; // variable to store sum
  $('input', $tr).each(function() { // iterate over inputs
    tot *= Number($(this).val()) || 1; // parse and add value, if NaN then add 0
  });

  //$('td:last', $tr).text(tot); // update last column value
$('div:last', $tr).text(tot);
}).trigger('input'); // trigger input to set initial value in column
</script>
 
 


