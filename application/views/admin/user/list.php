<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1><?= $heading?></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active"><?= $heading?></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">

          <!-- /.card-header -->
          <div class="card-body">
             <a data-target="#uploadData" title="Upload Excel" data-backdrop="static" data-keyboard="false"
              data-toggle="modal" class="btn btn-primary"> Import Excel</a>
              <a href="<?= base_url('uploads/bulk_excel/user.xlsx'); ?>" class="btn btn-danger"> Download sample format</a>
            <a href="<?= admin_url('users/create')?>" class="btn btn-primary add-button ml-3"  style="float:right;">
            Add User
          </a> 
             <div class="table-responsive mt-3">
              <table id="table" class="table table-hover table-center mb-0 example_datatable table-sm" >
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Full Name</th>
                    <th>Email</th>
                     <th>Company Name</th>
                    <th width="120">Action</th>
                  </tr>
                </thead>
                <tbody>

                                  </tbody>
                                </table>
                              </div>

          </div>
          <!-- /.card-body -->

        </div>
        <!-- /.card -->



      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

    <!--IMport strart-->
<div class="modal inmodal" id="uploadData" data-modal-color="lightblue" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-md modal-dialog-centered">
        <div class="modal-content animated bounceInRight">
            <form  action="<?= admin_url('users/import_excel')?>" method="post" enctype="multipart/form-data">
                <div class="modal-header">
                    <span style="font-size:20px">Upload Sheet</span>
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body" style="padding-top: 3%">

                    <a download class="pull-right" href="<?= base_url('uploads/bulk_excel/user.xlsx'); ?>" style="font-size:10px">Download Sample Format</a>
                    <input type="file" name="excel_file" id="excel_file" class="form-control" accept=".xlsx,.xls" required>

                </div>
                <div class="modal-footer">
                    <button type="submit" id="dis_btn" class="btn btn-info">Ok</button>

                </div>
            </form>
        </div>
    </div>
</div>
<!-- end import modal -->

    <script>
    var url = '<?= admin_url('Users/ajax_manage_page')?>';
    var actioncolumn=3;
</script>

<script type="text/javascript" src="<?= base_url('dist/assets/custom_js/user.js')?>"></script>
