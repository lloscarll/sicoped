<?php
 if (count($hasil)>0) {
    foreach ($hasil as $key => $list) {
 ?>
            <article>
              <div class="row">
                <div class="span8">
                  <div class="post-image">
                    <div class="post-heading">
                      <h3><a href="#"><?php echo $list['post_title'];?></a></h3>
                  <p>
                    <?php echo $list['post_description'];?>
                  </p>
                  <div class="bottom-article">
                    <ul class="meta-post">
                      <li><i class="icon-calendar"></i><a href="#"> <?php echo $list['post_posting_date'];?></a></li>
                      <li><i class="icon-user"></i><a href="#"> <?php echo $list['name'];?></a></li>
                      <li><i class="icon-folder-open"></i><a href="#"> <?php echo $list['category_name'];?></a></li>
                      <li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
                    </ul>
                    <a href="<?php echo base_url().'blog/'.$list['post_slug'];?>" class="pull-right">Baca Selengkapnya <i class="icon-angle-right"></i></a>
                  </div>
                </div>
              </div>
            </article>
            <?php
    }

 }else{
    echo "<p>Data Not Available..</p>";
 }
                ?>
            <div id="pagination">
                <?php 
  echo $this->pagination->create_links();
  ?>
            </div>