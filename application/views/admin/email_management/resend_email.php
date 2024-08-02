
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
        <div class="row">
       <?php $this->load->view('admin/email_management/sidebar_list')?>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card card-primary card-outline">
              <div class="card-header">
                <h3 class="card-title">Resend Email</h3>
              </div>
              <!-- /.card-header -->
            
               <form action="<?= admin_url('mailer/resendemail_action')?>" method="post" enctype="multipart/form-data">
           
              <div class="card-body">
                
                <div class="form-group">
                  <label>Subject <span class="text-danger">*</span></label>
                  <input class="form-control" placeholder="Subject:" name="subject" value="<?= @$subject?>" required autocomplete="off">
                </div>
                <div class="form-group">
                   <label>Body <span class="text-danger">*</span></label>
                    <textarea id="description" class="form-control summernote" name="body" required><?= @$body?></textarea>
                </div>
                <div class="form-group">
                   <label>Attachment </label>
                  <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="exampleInputFile" name="attachment">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text">Attachment</span>
                      </div>
                    </div>
                     <?php if(!empty($attachment)){?>
                 <p><i class="fas fa-paperclip"></i><a href="<?= base_url('uploads/email/'.@$attachment)?>"><?= @$attachment?></a></p>
                 <?php }?>
                  <input type="hidden" name="old_attachment" value="<?= @$attachment?>">
                </div>
                <input type="hidden" name="id" value="<?= @$id?>">
                <br>
                <hr style="border:1px solid #007bff;">
                <!-- listing -->
                   <div class="row">
             <div class="col-md-12">
               <label>Users</label>
                <input type="text" name="" class="form-control" onclick="myFunction()" placeholder="Select Users">
               <div class="close-drop"><i class="fas fa-times"></i></div>
             
  <div id="myDropdown" class="mydropdown_data dropdown-content" style="overflow-y:scroll;height:200px;">
    <input type="text"  placeholder="Search.." id="myInput" class="myInput" onkeyup="filterFunction()">
     <a href="javascript:void(0)"><label style="margin-bottom: 0; font-weight: 400;"><input type="checkbox" id="selectAll"> Select All</label></a>
       <?php if(!empty($list_employers)){ foreach($list_employers as $key){
        if(in_array($key->userId, $employerid))
                                   {
                                    $checked= "checked";
                                   }
                                   else{
                                    $checked='';
                                   }
                       ?>
               <a href="javascript:void(0)"><label style="margin-bottom: 0; font-weight: 400;"><input type="checkbox" name="employerid[]" class="sub_childitem" value="<?= $key->userId.'_'.$key->email.'_'.$key->firstname.'_'.$key->lastname?>" onclick="return check_data();" <?= $checked?>> <?= $key->email. ' ('.ucwords($key->firstname.' '.$key->lastname).')'?></label></a>
               <?php } }?>
    
  </div>
             </div>
             
            
             
           </div>   <!-- end row -->
              <br>
              <div class="col-md-12" style="border: 1px solid black;">
                <h1 class="text-center">Recipient List</h1>
                <div class="col-md-12">
                  <input type="hidden" name="employer_id" id="employer_id" value="<?= @$employer_id?>">
                  <label>Users : </label>
                  <p id="employer_list">
                 
                     <?php if(!empty($get_employer)){ foreach($get_employer as $key){
                      echo $key->email.' ('.ucwords($key->firstname.' '.$key->lastname).') '; echo ", ";
                    }} ?>
                      
                 
                  </p>
                </div>
               
              </div>
               
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <div class="float-right">
                 
                  <button type="submit" name="send" class="btn btn-primary" value="send"><i class="far fa-envelope"></i> Send</button>
                </div>
                <button type="submit" name="save_and_draft" class="btn btn-default" value="save_and_draft"><i class="fas fa-pencil-alt"></i> Save & Draft</button>
              </div>
              <!-- /.card-footer -->
              </form>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script>
    var url = '';
    var actioncolumn='';

</script>

<style>
  .close-drop{
    position: absolute;
    bottom: 7px;
    right: 17px;
    z-index: 99;
    cursor: pointer;
  }
.dropbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #3e8e41;
}

.myInput {
  box-sizing: border-box;
  background-image: url('searchicon.png');
  background-position: 14px 12px;
  background-repeat: no-repeat;
  font-size: 16px;
  padding: 14px 40px 12px 45px;
  border: none;
  border-bottom: 1px solid #ddd;
}

.myInput:focus {outline: 3px solid #ddd;}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f6f6f6;
  min-width: 95%;
  overflow: auto;
  border: 1px solid #ddd;
  z-index: 1;
  width: 100%;
}
.dropdown-content .myInput{
  width: 100%;
  font-size: 14px;
    padding: 6px;
}
.dropdown-content a {
  color: black;
  padding: 6px;
  text-decoration: none;
  display: block;
  font-size: 14px;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
 
 <script>

$('.close-drop').click(function(){
  $('#myDropdown').removeClass('show');
 
})

function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
 
}


 $("#selectAll").click(function(){
    $(".sub_childitem").prop('checked', $(this).prop('checked'));
     var employer_email=[];
     var employer_id=[];
   
    $('.sub_childitem:checked').each(function() {
        var arr = $(this).val().split('_');
         employer_email.push(arr[1]+ ' ('+arr[2]+' '+arr[3]+') ');
         employer_id.push(arr[0]);
    });
 
    // if(ticketid.length>0){

      $('#employer_list').html(employer_email.join(" , "));
      $('#employer_id').val(employer_id.join(","));

});

 
 

function filterFunction() {
  var input, filter, ul, li, a, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  div = document.getElementById("myDropdown");
  a = div.getElementsByTagName("a");
  for (i = 0; i < a.length; i++) {
    txtValue = a[i].textContent || a[i].innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      a[i].style.display = "";
    } else {
      a[i].style.display = "none";
    }
  }
}


</script>

<script type="text/javascript">
  function check_data(){

     var employer_email=[];
     var employer_id=[];
   
    $('.sub_childitem:checked').each(function() {
        var arr = $(this).val().split('_');
         employer_email.push(arr[1]+ ' ('+arr[2]+' '+arr[3]+') ');
         employer_id.push(arr[0]);
    });
 
    // if(ticketid.length>0){

      $('#employer_list').html(employer_email.join(" , "));
      $('#employer_id').val(employer_id.join(","));

  
  }
   
  
</script>