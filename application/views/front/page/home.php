<!DOCTYPE html>
<html lang="en">

<head>
 <?php $this->load->view("front/layout/head");?>
</head>

<body>
  <div id="wrapper">
    <!-- start header -->
    <header>
      <?php $this->load->view("front/layout/header");?>
    </header>
    <!-- end header -->
    <section id="featured">
      <!-- start slider -->
      <!-- Slider -->
      <div id="nivo-slider">
        <div class="nivo-slider">
          <!-- Slide #1 image -->
          <img src="<?=base_url()?>/assets/template/front/img/slides/nivo/slider01.jpg" alt=""/>
          <!-- Slide #2 image -->
          <img src="<?=base_url()?>/assets/template/front/img/slides/nivo/slider02.jpg" alt=""/>
          <!-- Slide #3 image -->
          <img src="<?=base_url()?>/assets/template/front/img/slides/nivo/slider03.jpg" alt=""/>
        </div>
      </div>
      <!-- end slider -->
    </section>
    <section class="callaction">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="big-cta">
              <div class="cta-text">
                <h3>Semua Hal Mengenai <span class="highlight"><strong>COVID-19</strong></span></h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="row">
              <div class="span2">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i> <img src="<?=base_url()?>/assets/template/front/img/berita.jpg" alt=""/></i>
                  </div>
                  <div class="text">
                    <h6>Berita</h6>
                    <p>
                      Berita Terupdate Covid-19
                    </p>
                    <a href="<?= base_url()?>blog">Baca Selengkapnya</a>
                  </div>
                </div>
              </div>
              <div class="span2">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i> <img src="<?=base_url()?>/assets/template/front/img/tentang.jpg" alt=""/></i>
                  </div>
                  <div class="text">
                    <h6>Tentang Covid-19</h6>
                    <p>
                      Informasi Virus Covid-19
                    </p>
                    <a href="<?= base_url()?>tentang">Baca Selengkapnya</a>
                  </div>
                </div>
              </div>
              <div class="span2">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i> <img src="<?=base_url()?>/assets/template/front/img/pencegahan.jpg" alt=""/></i>
                  </div>
                  <div class="text">
                    <h6>Pencegahan Covid-19</h6>
                    <p>
                      Tata Cara Pencegahan Covid-19
                    </p>
                    <a href="<?= base_url()?>pencegahan">Baca Selengkapnya</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i> <img src="<?=base_url()?>/assets/template/front/img/edukasi.jpg" alt=""/></i>
                  </div>
                  <div class="text">
                    <h6>Edukasi Covid-19</h6>
                    <p>
                      Pengetahuan Lebih Lanjut Terkait Covid-19
                    </p>
                    <a href="<?= base_url()?>edukasi">Baca Selengkapnya</a>
                  </div>
                </div>
              </div>
              <div class="span3">
                <div class="box aligncenter">
                  <div class="aligncenter icon">
                    <i> <img src="<?=base_url()?>/assets/template/front/img/deteksi.jpg" alt=""/></i>
                  </div>
                  <div class="text">
                    <h6>Deteksi Mandiri</h6>
                    <p>
                      Deteksi Mandiri Dari Tejangkitnya Covid-19
                    </p>
                    <a href="<?= base_url()?>deteksi">Baca Selengkapnya</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <!-- Portfolio Projects -->
        <div class="row">
          <div class="span12">
            <h4 class="heading">Covid-<strong>19</strong></h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The City" href="img/works/full/korona1.jpg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/korona1.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-1" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Office" href="img/works/full/korona02.jpg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/korona02.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="img/works/full/corona03.jpeg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/corona03.jpeg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="img/works/full/corona04.png">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/corona04.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-4" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Sea" href="img/works/full/korona02.png">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/korona02.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-5" data-type="icon">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Clouds" href="img/works/full/koronaa.png">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/koronaa.png" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 photography" data-id="id-2" data-type="illustrator">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Mountains" href="img/works/full/kor.jpg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/kor.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="The Dark" href="img/works/full/coro.jpg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="<?=base_url()?>/assets/template/front/img/works/full/coro.jpg" alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
                  </li>
                  <!-- End Item Project -->
                </ul>
              </section>
            </div>
          </div>
        </div>
        <!-- End Portfolio Projects -->
        <!-- divider -->
        <div class="row">
          <div class="span12">
            <div class="solidline">
            </div>
          </div>
        </div>
        <!-- end divider -->
        <div class="row">
          <div class="span12">
            <h4>Crew <strong>Editor</strong></h4>
            <ul id="mycarousel" class="jcarousel-skin-tango recent-jcarousel clients">
              <li>
                <a href="#">
          <img src="<?=base_url()?>/assets/template/front/img/datadiri/ummi.jpg" class="client-logo" alt="" />
          </a>
              </li>
              <li>
                <a href="#">
          <img src="<?=base_url()?>/assets/template/front/img/datadiri/elyy.jpg" class="client-logo" alt="" />
          </a>
              </li>
              <li>
                <a href="#">
          <img src="<?=base_url()?>/assets/template/front/img/datadiri/fajar.jpeg" class="client-logo" alt="" />
          </a>
              </li>
              <li>
                <a href="#">
          <img src="<?=base_url()?>/assets/template/front/img/datadiri/monika.jpeg" class="client-logo" alt="" />
          </a>
              </li>
              <li>
                <a href="#">
          <img src="<?=base_url()?>/assets/template/front/img/datadiri/oscar.jpeg" class="client-logo" alt="" />
          </a>
              </li>
              <li>
                <a href="#">
          <img src="<?=base_url()?>/assets/template/front/img/datadiri/didi.jpg" class="client-logo" alt="" />
          </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="bottom">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div class="aligncenter">
              <div id="twitter-wrapper">
                <div id="twitter">
                </div>
              </div>
            </div>
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
