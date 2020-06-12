Content Header (Page header) -->
    <section class="content-header">
      <h1>
       <?php echo $judul;?>
        <small>Management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="./dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Edit</li>
      </ol>
    </section>
    <!-- buat nampung pesan (validasi) kalau error -->
    <?php// echo validation_errors(); ?> 
    <?php echo $this->session->flashdata("message");?>
    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="row">
        <div class="col-xs-12">
        <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title"><?php echo $sub_judul;?></h3>
        </div>
          <?php
          $attributes = array('autocomplete' =>'off', 'role' =>'form');
          echo form_open_multipart("admin/edukasi/edit/".$old_value['edukasi_id'],$attributes);
          ?>
        <div class="box-body">
        <div class="form-group">
        <label for="edukasi_judul" class="control-lable">Title</label>
          <input name="edukasi_judul" type="text" class="form-control" id="edukasi_judul" placeholder="judul" value="<?php echo $old_value["edukasi_judul"];?>">
          <div style="color:red"><?=form_error('edukasi_judul')?></div>
        </div>
        <div class="form-group">
        <label for="edukasi_judul" class="control-lable">Category</label></br>
          <select name="post_category">
          <?php
             foreach($hasil as $key=>$list){
              ?>
            <option value="<?php echo $list['post_category_id'];?>"><?php echo $list['category_name'];?></option>
            <?php
            }
              ?>
          </select>
        </div>
        <div class="form-group">
        <label for="edukasi_judul" class="control-lable">Status</label></br>
          <select name="edukasi_status">
            <option value="Publish">Publish</option>
            <option value="Hidden">Hidden</option>
          </select>
        </div>
        <div class="form-group">
        <label for="edukasi_deskripsi" class="control-lable">Content</label>
            <textarea  name="edukasi_deskripsi" id="editor1"  placeholder="Place some text here"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $old_value["edukasi_deskripsi"];?></textarea>
            <div style="color:red"><?=form_error('edukasi_deskripsi')?></div>
        </div>
        </div>
        <div class="box-footer clearfix">
          <button type="submit" class="btn btn-primary btn-sm btn-flat pull-right" style="margin-right: 5px;">Update</button>
          <?php
          echo form_close();
          ?>
          <button type="submit" class="btn btn-primary btn-sm btn-flat pull-right" style="margin-right: 5px;" onClick="self.history.back()">Cancel</button>
        </div>
        </div>
        </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper