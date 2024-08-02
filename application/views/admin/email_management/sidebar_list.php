 <?php
 $seg1=$this->uri->segment(2);
 ?>
 <div class="col-md-3">
          <a href="<?= admin_url('mailer/composeemail')?>" class="btn btn-primary btn-block mb-3">Compose <i class="far fa-paper-plane ml-2"></i></a>

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Folders</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="nav nav-pills flex-column">

                <li class="nav-item">
                  <a href="<?= admin_url('email_template/index/existing-template')?>" class="nav-link <?= ($seg1=='add-use-template')?'active':'';?>">
                      <i class="far fa-file-alt mr-1"></i> Use Template
                    </a>
                </li>
                 <li class="nav-item">
                  <a href="<?= admin_url('sent-mail')?>" class="nav-link <?= (@$seg1=='sent-mail' || @$seg1=='resend')?'active':'';?>">
                    <i class="far fa-envelope  mr-1"></i> Sent
                  </a>
                </li>
                <li class="nav-item ">
                  <a href="<?= admin_url('mailer')?>" class="nav-link <?= ($seg1=='mailer')?'active':'';?>">
                    <i class="far fa-file-alt  mr-1"></i> List of Drafts
                  </a>
                </li>

              </ul>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->

        </div>
