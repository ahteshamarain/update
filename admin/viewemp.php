<?php 
include("include/header.php");
include("include/navbar.php");
include("include/sidebar.php");
include("config.php");




?>

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>products</h1>

    </div><!-- End Page Title -->
    <br><br>

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <br><br>
              <h3 class="card-title">Products data</h3>
              <br><br>
             

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                  <th>Id</th>
                    <th><b>First</b>name</th>
                    <th><b>Last</b>name</th>
                    <th>Email</th>
                    <th>Update</th>
                    <th>Delete</th>


                    
                  </tr>
                </thead>
                <tbody>
                <?php 
              
              $insert_data = "SELECT * from `employeedata`" ;
                          $result = mysqli_query($connection, $insert_data);
                          if($result){
                              if(mysqli_num_rows($result)> 0){
                                
                        
                                
                    while($row = mysqli_fetch_assoc($result)){
                      ?>
                                  <tr>
                    <td><?php echo $row['eid']?></td>
                    <td><?php echo $row['efname']?></td>
                    <td><?php echo $row['elname']?></td>                
                    <td><?php echo $row['eemail']?></td>      
                   <td ><a href="" class="btn btn-success">Update</a></td>
                   <td ><a href="udelete.php?eid=<?php echo $row['eid']?>" class="btn btn-danger">delete</a></td>


                
                </td>
             


                    
                </tr>
                <?php 
                      }
                    }
                }
                ?>
         
                 
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->
  <?php 

include("include/footer.php");


?>