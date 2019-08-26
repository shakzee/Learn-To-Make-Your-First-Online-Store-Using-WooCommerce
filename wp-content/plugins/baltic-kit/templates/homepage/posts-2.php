<?php
/**
 * Post 2 section
 *
 * @package Baltic
 */
namespace BalticKit;

$title 			= Options::get_theme_mod( 'posts_2_title' );
$description 	= Options::get_theme_mod( 'posts_2_description' );
$cat 			= Options::get_theme_mod( 'posts_2_cat' );
$cat 			= implode( ',', $cat );
$cat 			= rtrim( $cat, ',' );
$orderby 		= Options::get_theme_mod( 'posts_2_orderby' );
$orderby 		= ( $orderby == 'id' ) ? strtoupper( $orderby ) : $orderby;
$order 			= Options::get_theme_mod( 'posts_2_order' );
$archive_link 	= Options::get_theme_mod( 'posts_2_archive_link' );
$archive_text 	= Options::get_theme_mod( 'posts_2_archive_text' );
$btn_style 	  	= Options::get_theme_mod( 'posts_2_btn_style' );
$btn_rounded  	= Options::get_theme_mod( 'posts_2_btn_rounded' );
$btn_rounded  	= ( $btn_rounded == true ) ? 'btn-cta__rounded' : '' ;
$display 		= Options::get_theme_mod( 'posts_2_display' );
$columns 		= Options::get_theme_mod( 'posts_2_columns' );
$limit 			= Options::get_theme_mod( 'posts_2_limit' );

$args = array(
	'cat'     			=> $cat,
	'posts_per_page' 	=> absint( $limit ),
	'post__not_in' 		=> get_option( 'sticky_posts' ),
	'no_found_rows'  	=> true,
	'orderby'			=> esc_attr( $orderby ),
	'order'				=> esc_attr( $order ),
);

if ( ! is_customize_preview() ) {

	if ( false === ( $featured = get_transient( 'baltic_kit_posts_2_query' ) ) ) {
		$featured = new \WP_Query( $args );

		set_transient( 'baltic_kit_posts_2_query', $featured, 12 * HOUR_IN_SECONDS );
	}

} elseif( is_customize_preview() ) {

	$featured = new \WP_Query( $args );

}

?>
<div id="homepage__posts-2" class="homepage__posts-2 homepage-section <?php echo esc_attr( $display );?>" data-columns="<?php echo absint( $columns );?>">
<div class="homepage-overlay">
<?php if( Options::get_theme_mod( 'posts_2_layout' ) === 'boxed' ) : ?>
<div class="container">
<?php endif;?>

	<?php if( ! empty( $title ) || ! empty( $description ) ) : ?>
		<div class="homepage__header">
			<?php if ( !empty( $title ) ) : ?>
				<h2 class="homepage__header-title"><?php echo esc_attr( $title );?></h2>
			<?php endif;?>
			<?php if ( ! empty( $description ) ) : ?>
				<div class="homepage__header-description"><?php echo wp_kses_post( wpautop( $description ) );?></div>
			<?php endif;?>
		</div><!-- .homepage__header -->
	<?php endif;?>

	<?php if ( $featured->have_posts() ) : ?>

		<div class="featured-posts columns columns-<?php echo absint( $columns );?>">

		<?php while ( $featured->have_posts() ) : $featured->the_post(); ?>

			<article id="featured-2-<?php the_ID(); ?>" <?php post_class( 'column-item' ); ?>>
				<div class="entry-inner">

					<?php get_template_part( 'components/entry/post', 'thumbnail' );?>

					<header class="entry-header">
						<?php the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' ); ?>
						<div class="entry-meta">
							<?php
							get_template_part( 'components/entry/meta', 'posted_on' );
							get_template_part( 'components/entry/meta', 'posted_by' );
							get_template_part( 'components/entry/meta', 'comments' );
							?>
						</div>
					</header>

					<div class="entry-summary">
						<?php the_excerpt();?>
					</div>

				</div>
			</article>

		<?php endwhile; ?>

		</div><!-- .columns -->

		<?php
		if ( $archive_link == true ) {
			printf( '<div class="homepage__footer"><a href="%1$s" class="btn-cta btn-cta__%2$s %3$s">%4$s</a></div>',
				get_permalink( get_option( 'page_for_posts' ) ),
				esc_attr( $btn_style ),
				esc_attr( $btn_rounded ),
				wp_kses( $archive_text, array( 'span' => array( 'class' => array() ) ) )
			);
		}
		?>

	<?php endif;?>

<?php if( Options::get_theme_mod( 'posts_2_layout' ) === 'boxed' ) : ?>
</div><!-- .container -->
<?php endif;?>

</div><!-- .homepage-overlay -->
</div><!-- .homepage__post-2 -->
<?php wp_reset_postdata();?>
