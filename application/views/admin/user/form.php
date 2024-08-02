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
         
             <form  action="#" method="post" enctype="multipart/form-data" id="userform">
           
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
               <div class="form-group">
          <label>First Name <span style="color:red;">*</span></label>
      <input type="text" class="form-control"  name="firstname" value="<?= @$firstname?>" required onkeypress="only_alphabets(event)">
        </div>

              </div>
               <div class="col-md-6">

               <div class="form-group">
                        <label>Last Name <span style="color:red;">*</span></label>
                        <input type="text" class="form-control" name="lastname" value="<?= @$lastname?>" required onkeypress="only_alphabets(event)">
                      </div>
              </div>

                     <div class="col-md-6">
                      <div class="form-group">
                        <label>Email <span style="color:red">*</span><span id="err_email"></span></label>
                        <input type="email" class="form-control"  name="email" id="email_address" value="<?= @$email?>">
                      </div>
                    </div>

                    <div class="col-md-6">
                      <div class="form-group">
                        <label>Company Name  <span style="color:red">*</span><span id="err_email"></span></label>
                        <input type="text" class="form-control"  name="companyName" id="companyName" value="<?= @$companyName?>">
                      </div>
                    </div>
                   
                      <input type="hidden" name="id" value="<?= @$id?>">
                      <input type="hidden" id="button" value="<?= $button?>">

              <div class="col-md-12">
                    <button type="submit" class="btn btn-info" style="float: right">Submit</button>
          <a href="<?php echo admin_url('users') ?>" class="btn btn-secondary">Cancel</a>
          </div>
              <!-- /.col -->

            </div>
            <!-- /.row -->



          </div>
          <!-- /.card-body -->
        </form>
        </div>
        <!-- /.card -->



      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 <script>
    var url = '';
    var actioncolumn='';
</script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$("#userform").submit(function(e) {
e.preventDefault();

var button=$('#button').val();

if(button=='submit')
{
    var adminurl="<?php echo admin_url('users/create_action'); ?>";
}
else{
    var adminurl="<?php echo admin_url('users/update_action'); ?>";
}
var formData = new FormData(this);
$.ajax({
        type: "POST",
        url: adminurl,
        data: formData,
         cache: false,
          contentType: false,
         processData: false,
         dataType:'json',
        success:function(returndata)
            {
              //console.log(returndata.data); return false;
                if(returndata.result==1)
                    {
                     window.location.href='<?= admin_url('users')?>';
                    }
                   if(returndata.result==0)
         {
                if(returndata.data=='email'){ 

                    $('#err_email').fadeIn().html('This email already exists').css('color','red');
                     setTimeout(function(){$("#err_email").html("&nbsp;");},3000);
                     $("#email_address").focus();
                     return false;
                    }
          
                 }
            }
        });
});
});

</script>