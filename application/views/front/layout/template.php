<!DOCTYPE html>
<html lang="en">

<head>
  <?php $this->load->view("front/layout/head");?>
</head>

<body>
  <div id="wrapper">
    <!-- toggle top area -->
    <!-- end toggle top area -->
    <!-- start header -->
    <header>
    <?php $this->load->view("front/layout/header");?>
    </header>
    <!-- end header -->
    <section id="inner-headline">
     <?php $this->load->view("front/layout/title");?>
    </section>
    <section id="content">
    <div class="container">
        <div class="row">
          <div class="span8">
    <?php $this->load->view($contents);?>
          </div>
          <div class="span4">
     <?php $this->load->view("front/layout/aside");?>
          </div>
        </div>
      </div>
	</section>

	<footer>
			<?php $this->load->view("front/layout/footer");?>
		</footer>
</div>
<a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<?=base_url()?>/assets/template/front/js/jquery.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.easing.1.3.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/bootstrap.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jcarousel/jquery.jcarousel.min.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.fancybox.pack.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.fancybox-media.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/google-code-prettify/prettify.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/portfolio/jquery.quicksand.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/portfolio/setting.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/tweet/jquery.tweet.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.flexslider.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.nivo.slider.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/modernizr.custom.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.ba-cond.min.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/jquery.slitslider.js"></script>
<script src="<?=base_url()?>/assets/template/front/js/animate.js"></script>

	<!-- Template Custom JavaScript File -->
	<script src="<?=base_url()?>/assets/template/front/js/custom.js"></script>

</body>
</html>
