<!-- Content Header (Page header) -->
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
          echo form_open_multipart("admin/post_category/edit/".$old_value['post_category_id'],$attributes);
          ?>
        <div class="box-body">
        <div class="form-group">
        <label for="category_name" class="control-lable">Category Name</label>
          <input name="category_name" type="text" class="form-control" id="post-title" value="<?php echo $old_value["category_name"];?>">
        </div>
        <div class="form-group">
        <label for="category_description" class="control-lable">Content</label>
            <textarea  name="category_description" id="editor1" 
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo $old_value["category_description"];?></textarea>
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
  <!-- /.content-wrapper -->