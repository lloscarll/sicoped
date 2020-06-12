<!DOCTYPE html>
<html>
<head>
  <?php $this->load->view("admin/layout/header");?>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
   <?php $this->load->view("admin/layout/main_header");?>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
  <?php $this->load->view("admin/layout/main_sidebar");?>
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
   <?php $this->load->view($contents);?>
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <?php $this->load->view("admin/layout/footer");?>
  </footer>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<?= base_url()?>/assets/template/admin/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?= base_url()?>/assets/template/admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?= base_url()?>/assets/template/admin/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url()?>/assets/template/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?= base_url()?>/assets/template/admin/dist/js/demo.js"></script>
<!-- DataTables -->
<script src="<?= base_url()?>/assets/template/admin/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<!-- CK Editor -->
<script src="<?= base_url()?>/assets/template/admin/bower_components/ckeditor/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="<?= base_url()?>/assets/template/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace( 'editor1',
                {
                    width:"100%",
                    filebrowserBrowseUrl : '<?php echo base_url();?>js/ckfinder/ckfinder.html',
                    filebrowserImageBrowseUrl : '<?php echo base_url();?>js/ckfinder/ckfinder.html?type=Images',
                    filebrowserFlashBrowseUrl : '<?php echo base_url();?>js/ckfinder/ckfinder.html?type=Flash',
                })
    //bootstrap WYSIHTML5 - text editor
    $('.textarea').wysihtml5()

  })
  

  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>
