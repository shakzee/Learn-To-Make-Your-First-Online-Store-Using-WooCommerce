<?php
/**
 * Baltic products #3
 *
 * @package  Baltic
 */

namespace BalticKit;

$display 	= Options::get_theme_mod( 'products_3_display' );
$display 	= ( ! empty( $display ) ) ? $display : '';
$title 		= Options::get_theme_mod( 'products_3_title' );
$description = Options::get_theme_mod( 'products_3_description' );
$limit 		= Options::get_theme_mod( 'products_3_limit' );
$columns 	= Options::get_theme_mod( 'products_3_columns' );
$orderby 	= Options::get_theme_mod( 'products_3_orderby' );
$order 		= Options::get_theme_mod( 'products_3_order' );
$visibility = Options::get_theme_mod( 'products_3_visibility' );
$status 	= Options::get_theme_mod( 'products_3_status' );
$status 	= ( !empty( $status ) ) ? ' ' . $status . '="true"' : '';
$category 	= (array) Options::get_theme_mod( 'products_3_categories' );
$category 	= implode(',', $category);
$categories = !empty( $category ) ? ' category="'. $category . '"' : '';

?>
<div id="homepage__products-3" class="homepage__products-3 homepage-products homepage-section <?php echo esc_attr( $display );?>" data-columns="<?php echo absint( $columns );?>">
<?php if( Utility::unsupported_blocks( 'woocommerce' ) ) return;?>
<div class="homepage-overlay">
<?php if( Options::get_theme_mod( 'products_3_layout' ) === 'boxed' ) : ?>
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

	<?php
	$shortcode = sprintf( '[products limit="%1$s" columns="%2$s" orderby="%3$s" order="%4$s" visibility="%5$s"%6$s%7$s]',
		$limit,
		$columns,
		$orderby,
		$order,
		$visibility,
		$status,
		$categories );
	echo do_shortcode( $shortcode );
	?>

<?php if( Options::get_theme_mod( 'products_3_layout' ) === 'boxed' ) : ?>
</div><!-- .container -->
<?php endif;?>
</div><!-- .homepage-overlay -->
</div><!-- #homepage__products-3 -->
