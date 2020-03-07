<?php   

 $connect = mysqli_connect("localhost", "root", "", "invoice");
 function fill_cust_list($connect)  
 {  
      $output = '';  
	  $sql = "SELECT * FROM customers";
      $result = mysqli_query($connect, $sql);  
      while($row = mysqli_fetch_array($result))  
      {  
		   $output .= '<option value="'.$row["id"].'">'.$row["company"].'</option>';  
      }  
      return $output;  
 }  
 function fill_invoice_page($connect) {} 
  
 ?>  
 <!DOCTYPE html>  
 <html>  
      <head>
			<!-- Link to a Content Delivery Network, in this case - Google API's library (so jQuery will run)-->
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
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
				</h3>
			</div> 
			<div class="container">
                     <div class="row" id="fill_inv">  
                         <?php echo fill_invoice_page($connect);?> 
                     </div>
                 
           </div>

      </body>  
 </html>  
 <script>  
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