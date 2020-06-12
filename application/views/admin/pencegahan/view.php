<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       <?php echo $judul;?>
        <small>Management</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="./dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"><?php echo $judul;?></li>
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
          <?php echo anchor('admin/pencegahan/add','<button class="btn btn-primary btn-flat btn-sm pull-right">Add Berita</button>');?>
        </div>
        <div class="box-body">
        <?php
        if (count($hasil)>0) {
          $i=1;
        ?>
         <table id="example1" class="table table-bordered table-striped" width="100%">
           <thead>
           <tr>
             <th width="5%">No</th>
             <th width="50%">Title</th>
             <th width="10%">Cateory</th>
             <th width="15%">Date</th>
             <th width="5%">Upload by</th>
             <th width="10%">Status</th>
             <th width="5%">Action</th>
             </tr>
           </thead>
           <tbody>
             <?php
             foreach($hasil as $key=>$list){
              ?>
              <tr>
                <td><?php echo $i;?></td>
                <td><?php echo $list['pencegahan_judul'];?></td>
                <td><?php echo $list['category_name'];?></td>
                <td><?php echo $list['pencegahan_posting_tgl'];?></td>
                <td><?php echo $list['name'];?></td>
                <td><?php echo $list['pencegahan_status'];?></td>
                <td>
                  <a href='<?php echo "./pencegahan/edit/$list[pencegahan_id]";?>' title="Edit"><i class="fa fa-edit"></i></a>
                  <a href='<?php echo "./pencegahan/delete/$list[pencegahan_id]";?>' title="Trash" onClick="return confirm('Delete?')"><i class="fa fa-trash"></i></a>
                </td>
              </tr>
              <?php
              $i++;
            }
              ?>
           </tbody>
         </table>
         <?php
        }else{
         ?>
         <p class="text-muted">Data Not Available..</p>
         <?php
        }
        ?>
        </div>
        </div>
        </div>
        </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->