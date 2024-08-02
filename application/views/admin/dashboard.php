<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 h3">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-7">
            <div class="row">
              <div class="col-lg-6 col-md-6">
                <div class="small-box bg-one">
                  <div class="inner">
                    <p>Total Users</p>
                    <h3><?= count($total_user)?></h3>
                    <a href="<?= admin_url('users')?>" class="linkview text-white text-uppercase">More info <i class="fas fa-arrow-right"></i></a>
                  </div>
                </div>
              </div>
             
              <div class="col-lg-6 col-md-6">
                <!-- small box -->
                <div class="small-box bg-two">
                  <div class="inner">
                    <p>Total Templates</p>
                    <h3><?= count($totalTemplates)?></h3>
                    <a href="<?= admin_url('template')?>" class="linkview text-white text-uppercase">More info <i class="fas fa-arrow-right"></i></a>
                  </div>
                </div>
              </div>
               <div class="col-lg-6 col-md-6">
                <!-- small box -->
                <div class="small-box bg-three">
                  <div class="inner">
                    <p>Sent Emails</p>
                    <h3><?= count($totalsentemail)?></h3>
                    <a href="<?= admin_url('sent-mail')?>" class="linkview text-white text-uppercase">More info <i class="fas fa-arrow-right"></i></a>
                  </div>
                </div>
              </div>
               <div class="col-lg-6 col-md-6">
                <!-- small box -->
                <div class="small-box bg-four">
                  <div class="inner">
                    <p>Draft Emails</p>
                    <h3><?= count($totaldraftemail)?></h3>
                    <a href="<?= admin_url('mailer')?>" class="linkview text-white text-uppercase">More info <i class="fas fa-arrow-right"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5">
            <div class="card bg-gradient-success">
              <div class="card-header border-0">

                <h3 class="card-title mb-2">
                  <i class="far fa-calendar-alt"></i>
                  Calendar
                </h3>
                <!-- tools card -->
                <div class="card-tools">
                  <!-- button with a dropdown -->
                  <div class="btn-group">
                    <!-- <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52">
                      <i class="fas fa-bars"></i>
                    </button>
                    <div class="dropdown-menu" role="menu">
                      <a href="#" cljavascript:void(0)ss="dropdown-item">Add new event</a>
                      <a href="#" cljavascript:void(0)ss="dropdown-item">Clear events</a>
                      <div class="dropdown-divider"></div>
                      <a href="#" cljavascript:void(0)ss="dropdown-item">View calendar</a>
                    </div>
                  </div> 
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>-->
                </div>
                <!-- /. tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body pt-0">
                <!--The calendar -->
                <div id="calendar" style="width: 100%"></div>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
        
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          <section class="col-lg-12 connectedSortable">

            <!-- Map card -->



            <!-- Calendar -->
            
            <!-- /.card -->
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php $this->load->view('admin/common/footer'); ?>
 