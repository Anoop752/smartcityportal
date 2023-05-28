<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="shared/head.jsp"/>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <jsp:include page="shared/colnavbar.jsp"/>
   
  
   <jsp:include page="shared/sidebar.jsp"/>
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Top College In Ghaziabad</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">College</a></li>
              <li class="breadcrumb-item active">Engineering</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
               <img border="0" class="img-responsive" alt="Abes Engineering College" src="dist/img/ABESLogo.jpg" />
                
                <h3 class="card-title"></h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
              <ol class="breadcrumb float-sm-right">
                 <li class="breadcrumb-item"><a href="engpagedetails.jsp">For More Information</a></li>
                 </ol>
                <h3>Abes Engineering College,Ghaziabad</h3>
                <p>ABES Engineering College is one of the top engineering Colleges of UPTU in Delhi,NCR. AICTE Approved and AKTU Affiliated college, offers B.Tech, M.Tech, ..</p>
                 <p><span class="fa fa-phone"></span>Phone: 0120 713 5112</p>
              
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
               <p> <span class="fa fa-map-marker"></span> 19th KM Stone, NH-09, Ghaziabad, Uttar Pradesh 201009<p>
              </div>
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <!-- Default box -->
            <div class="card">
              <div class="card-header">
               <img border="0" class="img-responsive" alt="Adhunik College Of Engineering" src="dist/img/Adhunik.jpg" />
                <h3 class="card-title"></h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
              <ol class="breadcrumb float-sm-right">
                 <li class="breadcrumb-item"><a href="engpagedetails.jsp">For More Information</a></li>
                 </ol>
                <h3>Adhunik College Of Engineering, Ghaziabad</h3>
                <p>Adhunik Engineering College is one of the top engineering Colleges of UPTU in Delhi,NCR. AICTE Approved and AKTU Affiliated college, offers B.Tech, M.Tech, ..</p>
                 <p><span class="fa fa-phone"></span>Phone: 0120 713 5112</p>
              
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
               <p> <span class="fa fa-map-marker"></span>9th Mile Stone, Delhi-Meerut Road, (NH-58) Duhai,
				Ghaziabad,Ghaziabad
				Uttar Pradesh
				201206<p>
				              </div>
              <!-- /.card-footer-->
            </div>
            <!-- /.card -->
          </div>
        </div>
      </div>
    </section>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
   
   
    <jsp:include page="shared/footer.jsp"/>
   
</body>
<jsp:include page="shared/script.jsp"/>

</html>