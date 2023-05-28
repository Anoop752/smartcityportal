<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
.center {
  margin-top:30px;
  margin: auto;
  margin-top:100px;
  width: 50%;
  padding: 20px;
  background: rgb(204, 204, 204); /* Fallback for older browsers without RGBA-support */
  background: rgba(204, 204, 204, 0.5);
}
</style>
<jsp:include page="shared/head.jsp"/>
<body style="background-image:url('images/loginimg.jpg') ">
<div class="">
  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div> 
  <div class="">
      <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
          <marquee>  <h1 class="m-0" style="color:red">Registration</h1></marquee>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp" style="font-size:30px">Click Here To Login</a></li>              
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
  
    <!-- Main content -->
    <section  class="center">
      <!-- Default box -->
      <div class="card" style="width:100%">
        <div class="card-body row">
          <div class="col-5 text-center d-flex align-items-center justify-content-center">
            <div class="">
              <h2><strong>Welcome</strong></h2>
            </div>
          </div>
          <div class="col-7">
            <div class="form-group">
              <label for="inputname">Name</label>
              <input type="text" id="inputname" class="form-control" />
            </div>
            <div class="form-group">
              <label for="inputemail"> Email</label>
              <input type="email" id="inputemail" class="form-control" />
            </div>
             <div class="form-group">
                        <label>Select Gender</label>
                        <select class="form-control">
                          <option>Male</option>
                          <option>Female</option>
                          <option>other</option>
                          
                        </select>
                      </div>
            
            <div class="form-group">
              <label for="inputphoneNumber">Phone Number</label>
              <input type="text" id="inputphoneNumber" class="form-control" />
            </div>
            <div class="form-group">
              <label for="inputpass">Password</label>
              <input type="password" id="inputpass" class="form-control" />
            </div>
            
            <div class="form-group">
              <label for="inputpass">ConfirmPassword</label>
              <input type="ConfirmPassword" id="ConfirmPassword" class="form-control" />
            </div>
           
            <div class="form-group">
              <input type="submit" class="btn btn-primary" value="submit">
            </div>
          </div>
        </div>
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <!-- /.content-wrapper -->
</div>
<!-- ./wrapper -->
</body>
<jsp:include page="shared/script.jsp"/>

</html>