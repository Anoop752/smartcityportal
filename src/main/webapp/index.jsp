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
<body style="background-image:url('images/saksham.jpg')">
<div class="">
  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/sakshamlogo.jpg" alt="AdminLTELogo" height="60" width="60">
  </div> 
  <div class="">
      <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
         <h1 class="m-0" style="color:blue">Login</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="register.jsp" style="font-size:30px">Register Yourself</a></li>              
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
             <h2><strong>Welcome<br> To <br>Saksham </strong></h2>
            </div>
          </div>
          <div class="col-7">
            <div class="form-group">
              <label for="inputuser">UserId</label>
              <input type="text" id="inputuser" class="form-control" />
            </div>
            <div class="form-group">
              <label for="inputpass">Password</label>
              <input type="password" id="inputpass" class="form-control" />
            </div>
            <div class="form-group">
             <a href="javascript:void(0)"> <input onclick="userLogin()" type="button" class="btn btn-primary" value="submit"></a>
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
<script src="js/register.js"></script>

</html>