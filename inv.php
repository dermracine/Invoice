<?php   

 $connect = mysqli_connect("localhost", "root", "", "invoice");
 function fill_cust_list($connect)  
 {  
      $output = '';  
	  $sql = "SELECT * FROM customer order by company asc";//Query the customers table.
      $result = mysqli_query($connect, $sql);  
      while($row = mysqli_fetch_array($result))  //Loop to populate pulldown menu
      {  
		   $output .= '<option value="'.$row["id"].'">'.$row["company"].'</option>';  
      }  
      return $output;  
 }  
 function fill_invoice_page($connect) {}

 
 function multiplyBy(){
	 $num1 = document.getElementByID("firstNumber").value;
	 $num2 = document.getElementByID("secondNumber").value;
	 $result = $num1 * $num2;
	 //$document.getElementByID("result").innerHTML = num1 * num2;
	 return $result;
 }
  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>
			<!-- Link to a Content Delivery Network, in this case - Google API's library (so jQuery will run)-->
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      </head>  
	  <body>  
	  	<form action="addcust.php">
			<button type="submit">Add Customer</button>
		</form>
           <div class="container">  
                <h3>  
					<div style="padding:5px; margin-bottom:2px; width: 800px; class:col; display:inline-block;" align="right">
                     <select name="cust" id="cust">  
                          <option value="">Choose a customer</option>  
                          <?php echo fill_cust_list($connect); ?>  
                     </select>
					</div> 

                     <div class="row" id="fill_inv">  
                         <?php echo fill_invoice_page($connect);?> 
                     </div>					 
                 </h3>
           </div>

      </body>  
 </html>  
 <script>  
 //AJAX jQuery for function to fill pulldown menu with the company name
 $(document).ready(function(){  
  		$('#cust').change(function(){	  
           var id = $(this).val();  
           $.ajax({  
                url:"loaddata.php",  
                method:"POST",  
                data:{id:id},  
                success:function(data){  
                     $('#fill_inv').html(data);  
                }  
           });  
      });  
 });  
 </script> 


<script>
  //AJAX jQuery for function to fill pulldown menu with the company name
 $(document).ready(function(){  
  		$('#fill_description_menu').change(function(){	  
           var id = $(this).val();  
           $.ajax({  
                url:"loaddata.php",  
                method:"POST",  
                data:{id:id},  
                success:function(data){  
                     $('#fill').html(data);
                }  
           });  
      });  
 });  
 
 
 </script>