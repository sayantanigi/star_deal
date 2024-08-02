<?php
defined('BASEPATH') OR exit('No direct script access allowed');
error_reporting(0);
class Users extends MY_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Users_model');
  }

  function index()
  {

    $header = array('title' => 'users');
    $data = array(
      'heading' => 'List of users',
    );
    $this->load->view('admin/common/header', $header);
    $this->load->view('admin/common/sidebar');
    $this->load->view('admin/user/list',$data);
    $this->load->view('admin/common/footer');
  }

  function ajax_manage_page()
  {
    $GetData = $this->Users_model->get_datatables();
    
    if(empty($_POST['start']))
    {

      $no=0;
    }else{
      $no =$_POST['start'];
    }
    $data = array();

    foreach ($GetData as $row)
    {

      $btn = ''.anchor(admin_url('users/update/'.base64_encode($row->userId)),'<span class="btn btn-sm bg-secondary mr-2"><i class="far fa-edit mr-1"></i>Edit</span>');
      $btn .= '  '.'<span data-placement="right" class="btn btn-sm btn-danger mr-2"  onclick="Delete(this,'.$row->userId.')"><i class="fas fa-trash-alt"></i></span>';

      $no++;
      $nestedData = array();
      $nestedData[] = $no;
      $nestedData[] = $row->firstname.' '.$row->lastname;
      $nestedData[] = $row->email;
      $nestedData[] = $row->companyName;
      $nestedData[] = $btn;
      $data[] = $nestedData;
    }

    $output = array(
      "draw" => $_POST['draw'],
      "recordsTotal" => $this->Users_model->count_all(),
      "recordsFiltered" => $this->Users_model->count_filtered(),
      "data" => $data,
    );

    echo json_encode($output);
  }

  function create()
  {
    $header = array('title' => 'User Create');
    $data = array(
      'heading' => 'Create',
      'button' => 'submit',
      'firstname'=>set_value('firstname'),
      'lastname'=>set_value('lastname'),

      'email'=>set_value('email'),

      'id'=>set_value('id'),
    );
    $this->load->view('admin/common/header', $header);
    $this->load->view('admin/common/sidebar');
    $this->load->view('admin/user/form',$data);
    $this->load->view('admin/common/footer');  
  }

  function create_action()
  {

    $validate=$this->Crud_model->get_single('users',"email='".$_POST['email']."'");
    if(!empty($validate))
    {
      $data=array(
        'result'=>0,
        'data'=>'email',
      );
    }

    if(empty($validate))
    {
      $fullname = $this->input->post('firstname',TRUE).$this->input->post('lastname',TRUE);
      if (empty($fullname) || $fullname == '') {
        $fullname =$this->input->post('firstname',TRUE).$this->input->post('lastname',TRUE);
      }
    
      $slug = strtolower(url_title($fullname));
      $slug_url =$this->Users_model->get_unique_url($slug);
      
      $data=array(
        'firstname'=> $_POST['firstname'],
        'lastname'=> $_POST['lastname'],
        'email'=> $_POST['email'],
        'slug_url' =>$slug_url,
        'companyName'=> $_POST['companyName'],
        'created_date'=> date('Y-m-d H:i:s'),
      );
      $this->Crud_model->SaveData('users',$data);
      $this->session->set_flashdata('message', 'user added successfully');
      $data=array(
        'result'=>1,
        'data'=>1,
      );
    }
    echo json_encode($data); exit;
  }

  function update($id)
  {
    $con="userId ='".base64_decode($id)."'";
    $get_userdata=$this->Crud_model->get_single('users',$con);

    $header = array('title' => 'user update');
    $data = array(
      'heading' => 'Update',
      'button' => 'Update',
      'firstname'=>set_value('firstname',$get_userdata->firstname),
      'lastname'=>set_value('lastname',$get_userdata->lastname),
      'email'=>set_value('email',$get_userdata->email),
      'companyName'=> set_value('companyName',$get_userdata->companyName),
      'id'=>$get_userdata->userId,
    );
    $this->load->view('admin/common/header', $header);
    $this->load->view('admin/common/sidebar');
    $this->load->view('admin/user/form',$data);
    $this->load->view('admin/common/footer');
  }

  function update_action()
  {

    $validate=$this->Crud_model->get_single_record('users',"email='".$_POST['email']."' and userId!='".$_POST['id']."'");
    if(!empty($validate))
    {
      $data=array(
        'result'=>0,
        'data'=>'email',
      );
    }

    if(empty($validate))
    {
      $fullname = $this->input->post('firstname',TRUE).$this->input->post('lastname',TRUE);
      if (empty($fullname) || $fullname == '') {
        $fullname =$this->input->post('firstname',TRUE).$this->input->post('lastname',TRUE);
      }
      $slug = strtolower(url_title($fullname));
      $slug_url =$this->Users_model->get_unique_url($slug);
      $data=array(
        'firstname'=> $_POST['firstname'],
        'lastname'=> $_POST['lastname'],
        'companyName'=> $_POST['companyName'],
        'email'=> $_POST['email'],
        'slug_url' =>$slug_url,
      );
      $this->Crud_model->SaveData('users',$data,"userId='".$_POST['id']."'");
      $this->session->set_flashdata('message', 'user updated successfully');
      $data=array(
        'result'=>1,
        'data'=>1,
      );
    }
    echo json_encode($data); exit;
  }

  function view($id)
  {
    $con="userId ='".base64_decode($id)."'";
    $get_userdata=$this->Crud_model->get_single('users',$con);

    $header = array('title' => 'user view');
    $data = array(
      'heading' => 'User',
      'get_userdata' => $get_userdata,
    );
    $this->load->view('admin/common/header', $header);
    $this->load->view('admin/common/sidebar');
    $this->load->view('admin/users/view',$data);
    $this->load->view('admin/common/footer');
  }

  public function change_status()
  {
    if($_POST['status']=='1')
    {
      $statuss='0';

    }else if($_POST['status']=='0'){
      $statuss='1';

    }
      $data=array(
        'status'=>$statuss,
      );

    $this->Crud_model->SaveData("users",$data,"userId='".$_POST['id']."'");

  }

  public function delete()
  {
    
    if(isset($_POST['cid']))
    {
      $get_user=$this->Crud_model->get_single('users',"userId='".$_POST['cid']."'");
      if(!empty($get_user->profilePic) && file_exists('uploads/users/'.$get_user->profilePic))
      {
        @unlink('uploads/users/'.$get_user->profilePic);
      }
      $this->Crud_model->DeleteData('users',"userId='".$_POST['cid']."'");

    }
  }

  public function import_excel()
  {

    $file = $_FILES['excel_file']['tmp_name'];
    $this->load->library('Excel');

    $objPHPExcel = PHPExcel_IOFactory::load($file);
    $allDataInSheet = $objPHPExcel->getActiveSheet()->toArray(null,true);

    $arrayCount = count($allDataInSheet);
    $i = 1;
    $fields_fun=array();
    foreach ($allDataInSheet as $key)
    {

      if($i>0)
      {
        $fields_fun[] = $key;
      }


      $i++;
    }

    $removed = array_shift($fields_fun);

    if(!isset($fields_fun))
    {
      $this->session->set_flashdata('message', 'Excel sheet is blank');
      redirect(admin_url('users'));
    }


    $data = $fields_fun;

    if(!empty($data))
    {
      foreach ($data as $val)
      {
        if($val[0] !='Firstname' || $val[1] !='Lastname')
        {
          if($val[0]!='')
          {
            if($val[1]!='')
            {

              if(!empty($val[2]))
              {
                $email=$val[2];
              }
              else
              {
                $email="";
              }


              if(!empty($val[1]))
              {
                $lastname=$val[1];
              }
              else
              {
                $lastname="";
              }


              if(!empty($val[0]))
              {
                $firstname=$val[0];
              }
              else
              {
                $firstname="";
              }

              if(!empty($val[3]))
              {
                $companyName=$val[3];
              }
              else
              {
                $companyName="";
              }


              $fullname =$firstname.$lastname;


              if (empty($fullname) || $fullname == '') {
                $fullname =$firstname.$lastname;
              }


              $slug = strtolower(url_title($fullname));
              $slug_url =$this->Users_model->get_unique_url($slug);


              $chekEmail= $this->Crud_model->get_single('users', "email='".$email."'");
             
              if(empty($chekEmail))
              {
                  $data = array(
                  'firstname' => $firstname,
                  'lastname' => $lastname,
                  'email' =>$email,
                  'companyName' => $companyName,
                  'slug_url' =>$slug_url,
                  'created_date'=> date('Y-m-d H:i:s'),
                );

                $this->Crud_model->SaveData('users',$data);
              }
              
            }

          }
        }
      }

      $this->session->set_flashdata('message', 'Import file upload successfully');
    }
    else{
      $this->session->set_flashdata('message', 'Error');
    }
    redirect(admin_url('users'));
  }


}