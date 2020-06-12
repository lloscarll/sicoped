<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       <?php echo $judul;?>
        <small>Management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="./dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Add</li>
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
          echo form_open_multipart("admin/post/add",$attributes);
          ?>
        <div class="box-body">
        <div class="form-group">
        <label for="post_title" class="control-lable">Title</label>
          <input name="post_title" type="text" class="form-control" id="post-title" placeholder="judul" value="<?php echo set_value("post_title");?>">
        </div>
        <div class="form-group">
        <label for="post_title" class="control-lable">Category</label></br>
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
        <label for="post_title" class="control-lable">Status</label></br>
          <select name="post_status">
            <option value="Publish">Publish</option>
            <option value="Hidden">Hidden</option>
          </select>
        </div>
        <div class="form-group">
        <label for="post_description" class="control-lable">Content</label>
            <textarea  name="post_description" id="editor1"  placeholder="Place some text here"
                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
        </div>
        </div>
        <div class="box-footer clearfix">
          <button type="submit" class="btn btn-primary btn-sm btn-flat pull-right" style="margin-right: 5px;">Save</button>
          <?php
          echo form_close();
          ?>
          <button class="btn btn-default btn-sm btn-flat pull-right" style="margin-right: 5px;" value="cancel" onClick="self.history.back()">Cancel</button>
        </div>
        </div>
        </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->