<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="shared/head.jsp"/>
<body>
   <jsp:include page="shared/colnavbar.jsp"/>
   <jsp:include page="shared/sidebar.jsp"/>
    <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>ABES Engineering College</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
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
          <div class="col-md-3" id="clg_overview">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="dist/img/ABESLogo.jpg"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center">Abes Engineering College</h3>

                <p class="text-muted text-center">Estd.2000</p>

                <ul class="list-group list-group-unbordered mb-3">
                <li class="list-group-item">
                    <b>College Code</b> <a class="float-right">032</a>
                  </li>
                  <li class="list-group-item">
                    <b>Followers</b> <a class="float-right">1,322</a>
                  </li>
                  <li class="list-group-item">
                    <b>Rating</b> <a class="float-right">4.5 </a>
                  </li>
                  
                </ul>

                <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <!-- About Me Box -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">About College</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <strong><i class="fas fa-book mr-1"></i>Courses</strong>

                <p class="text-muted">
                  B.Tech(CS,ME,EC,EE).
                </p>

                <hr>

                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>

                <p class="text-muted">Ghaziabad, Uttar Pradesh</p>

                <hr>

                <strong><i class="fas fa-pencil-alt mr-1"></i> Affiliated TO</strong>

                <p class="text-muted">
                  <span class="tag tag-danger">AICTE Approved and AKTU Affiliated College</span>
                  
                </p>

                <hr>

                <strong><i class="far fa-file-alt mr-1"></i> Notes</strong>

                <p class="text-muted">Rank 1 in AKTU last 9 samesters</p>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <div id="external-events">
                    <div class="external-event bg-success">Hostel(BOYS&Girls)</div>
                    <div class="external-event bg-warning">Wi-fi 24 hour</div>
                    <div class="external-event bg-info">Library</div>
                    <div class="external-event bg-primary">Skill development</div>
                    <div class="external-event bg-danger">Sports</div>
                     <div class="external-event bg-success">Culture Events</div>
                    <div class="external-event bg-warning">Healthy campus</div>
                    
                  </div>
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card">
              <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Activity</a></li>
                  <li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">Fee Structure</a></li>
                  <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Contact</a></li>
                   
                
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                  <div class="active tab-pane" id="activity">
                    <!-- Post -->
                    <div class="post">
                       <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Courses Offered</h3>

                <div class="card-tools">
                  
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class=""></i>
                  </button>
                </div>
              </div>
              </div>
              <div class="card-body">
                <canvas id="pieChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
              <!-- /.card-body -->
            </div>
                    <!-- /.post -->

                    <!-- Post -->
              <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Branches Offered </h3>                 
                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                 <span>
                 <select onchange="getBranchDtls(0)" class="form-control col-3" id ="crs_opt">                 
                 </select>
                 </span>
                <canvas id="donutChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
              <!-- /.card-body -->
            </div>
                    <!-- /.post -->

                    <!-- Post -->
                    <div class="post">
                      <div class="card">
              <div class="card-header">
                <h3 class="card-title">Placement statistics</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              <span>
                 <select onchange="getPlacedDetails(0)" class="form-control col-3" id ="pls_std">                 
                 </select>
                 </span>
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Branch Name</th>
                      <th>Placed</th>
                      <th style="width: 40px">Label</th>
                    </tr>
                  </thead>
                  <tbody id ="tbl_plc">
                    <tr>
                      <td>1.</td>
                      <td>CS</td>
                      <td>
                        <div class="progress progress-xs">
                          <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-danger">55%</span></td>
                    </tr>
                    <tr>
                      <td>2.</td>
                      <td>CSE</td>
                      <td>
                        <div class="progress progress-xs">
                          <div class="progress-bar bg-warning" style="width: 70%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-warning">70%</span></td>
                    </tr>
                    <tr>
                      <td>3.</td>
                      <td>IT</td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar bg-primary" style="width: 30%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-primary">30%</span></td>
                    </tr>
                    <tr>
                      <td>4.</td>
                      <td>ECE</td>
                      <td>
                        <div class="progress progress-xs progress-striped active">
                          <div class="progress-bar bg-success" style="width: 90%"></div>
                        </div>
                      </td>
                      <td><span class="badge bg-success">90%</span></td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            </div>
                    <!-- /.post -->
                  </div>
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="timeline">
                    <!-- The timeline -->
                    <div class="timeline timeline-inverse">
                      <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title"> Academic Fees (To be paid to College)</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>S.NO</th>
                    <th>Fee Heads</th>
                    <th>Amount</th>
                    
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>1</td>
                    <td>TUITION FEE
                    </td>
                    <td>110000.00*#</td>
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>ACADEMIC & BOOK BANK SECURITY (Refundable)
                    </td>
                    <td>5000.00</td>
                    
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>CAREER PLANNING & DEVELOPMENT
                    </td>
                    <td>15000.00</td>
                    
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>REGISTRATION
                    </td>
                    <td>15000.00</td>
                    
                  </tr>
                  
                  </tbody>
                  <tfoot>
                  
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
</div>
</div>
</div>
</section>
<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">University Fees ( To be paid online directly to the University as & when demanded)</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>S.NO</th>
                    <th>Fee Heads</th>
                    <th>B.Tech/B.Tech(LE)/MCA
(Amount i            n Rs.)</th>
                    
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>1</td>
                    <td>University Examination Fees(Both Sem.)
                    </td>
                    <td>1100.00*#</td>
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>E-Resources Consortium
                    </td>
                    <td>5000.00</td>
                    
                  </tr>
                  
                  
                  </tbody>
                  <tfoot>
                  
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
</div>
</div>
</div>
</section>
<section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Pre Enrollment Registration Charges* (To be paid online directly to the University as & when demanded- Applicable only for direct admission)</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                  <tr>
                    <th>S.NO</th>
                    <th>Fee Heads</th>
                    <th>Amount</th>
                    
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>1</td>
                    <td>TUITION FEE
                    </td>
                    <td>110000.00*#</td>
                    
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>ACADEMIC & BOOK BANK SECURITY (Refundable)
                    </td>
                    <td>5000.00</td>
                    
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>CAREER PLANNING & DEVELOPMENT
                    </td>
                    <td>15000.00</td>
                    
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>REGISTRATION
                    </td>
                    <td>15000.00</td>
                    
                  </tr>
                  
                  </tbody>
                  <tfoot>
                  
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
</div>
</div>
</div>
</section>
                    </div>
                  </div>
                  <!-- /.tab-pane -->

                  <div class="tab-pane" id="settings">
                    <form class="form-horizontal">
                      <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputName" placeholder="Name">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputName2" placeholder="Name">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-2 col-form-label">Purpose</label>
                        <div class="col-sm-10">
                          <textarea class="form-control" id="inputExperience" placeholder="Purpose"></textarea>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">Query</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="WriteQuery">
                        </div>
                      </div>
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <div class="checkbox">
                            <label>
                              <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                            </label>
                          </div>
                        </div>
                      </div>
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</body>
<jsp:include page="shared/script.jsp"/>
<script src="plugins/chart.js/coldetailschart.js"></script>
<script src="plugins/chart.js/Chart.min.js"></script>
<script src="js/enggpagedeatils.js"></script>
<jsp:include page="shared/footer.jsp"/>

</html>