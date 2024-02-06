<?php
    get_header();
?>
        
        <h1>Desde index.php</h1>
        <main>
        <?php
            while (have_posts()): the_post();

            the_title();
            the_content();

            endwhile;
        ?>
         </main>
         <?php
         get_footer();
         ?>
