<html>

    <body>
		<form action="inv.php">
			<button type="submit">Invoice</button>
		</form>
		<div class="maindiv">
			<div class="form_div">
				<div class="title" width="800px">
				<div style="class:row; width: 800px; padding: 5px; text-align: center;"><h2>New Customer Entry</h2></div>
					<div class:container;>
						<div style="class:row; width: 800px; display: flex; border:1px solid #ccc; background-color: #c8cbe461; padding: 5px;">
							<form action="addcust.php" method="post">    
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Company:</label>
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input color="ff0099" border="0" class="input" type="text" name="company" value="" />
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Phone:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="phone" value="">
							</div>
							<br />
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Contact:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">	
								<input class="input" type="text" name="contact" value="" />
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Vendor:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="vendor" value="">
							</div>
							<br />
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Address:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="address" value="" />
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Display Box Number:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="dispBox" value="">
							</div>
							<br />
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>City:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="city" value="">
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Price:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">							
								<input class="input" type="text" name="price" value="">
							</div>
							<br />
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>State:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="state" value="">
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Retail Price:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="retail" value="">
							</div>
							<br />
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
								<label>Zip:</label>
							</div>
							<div  style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;">
								<input class="input" type="text" name="zip" value="">
							</div>
							<br />
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right">
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 200px; class:col; display:inline-block;" align="right">
							</div>
							<div style="padding:5px; margin-bottom:2px; width: 150px; class:col; display:inline-block;" align="right;">
							<input class="submit" type="submit" name="submit" value="Save To Database" />
							</div>
						</div>
						</div>
					</div>
					<br />

<?php

$ser="localhost";
$user="root";
$pass="";

$conn = mysqli_connect('localhost','root','');
$querydb = "SELECT * FROM customers";

$db="invoice";
$con=mysqli_connect($ser, $user, $pass, $db) or die("Connection Failed");

	if(isset($_POST['submit'])){
   
	//Fetching variables from the form
    
	$company = $con->real_escape_string($_POST['company']); // added the real escape string in case of an apostrophe or other character that needs to be escaped
    $contact = $con->real_escape_string($_POST['contact']);
    $address = $con->real_escape_string($_POST['address']);
    $city = $con->real_escape_string($_POST['city']);
	$state = $con->real_escape_string($_POST['state']);
	$zip = ($_POST['zip']);
	$phone = $_POST['phone'];
	$vendor = $_POST['vendor'];
	$dispBox = $_POST['dispBox'];
	$price = $_POST['price'];
    $retail = $_POST['retail'];		
					
    if($company !=''){ //Only checks to ensure a Company is entered - all other field's don't care... Not sure which fields I want to mandate at this point....
	//Insert values into customers table.
    $query = mysqli_query($con, "insert into `customers`(`company`, `contact`, `address`, `city`, `state`, `zip`, `phone`, `vendor`, `dispBox`, `price`, `retail`) values ('$company', '$contact', '$address', '$city', '$state', '$zip', '$phone', '$vendor', '$dispBox', '$price', '$retail')");
	echo "<br/><br/><span>Data Inserted successfully...!!</span>";
    }
    else{
    echo "<p>Insertion Failed <br/> Some Fields are Blank....!!</p>";   
    }
 
	}
	//Closing Connection with Server
	mysqli_close($con);

?>					
				</form>
			</div>
			
    </body>
</html>




