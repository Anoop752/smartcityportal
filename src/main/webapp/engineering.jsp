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
    <section class="content-header" id="m_section" name="m_section">
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
        
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
   
   
    <jsp:include page="shared/footer.jsp"/>
   
</body>
<jsp:include page="shared/script.jsp"/>
<script src="js/engineering_pages.js"></script>
<script>
getCollegeDetails();
</script>
</html>