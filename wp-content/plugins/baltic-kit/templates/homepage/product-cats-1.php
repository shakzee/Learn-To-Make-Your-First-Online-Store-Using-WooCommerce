<?php
/**
 * Baltic product categories
 *
 * @package  Baltic
 */

namespace BalticKit;

$title 			= Options::get_theme_mod( 'product_cats_1_title' );
$description 	= Options::get_theme_mod( 'product_cats_1_description' );
$product_cats 	= Options::get_theme_mod( 'product_cats_1', array() );
?>
<div id="homepage__product-cats-1" class="homepage__product-cats-1 homepage-section">
<?php if( Utility::unsupported_blocks( 'woocommerce' ) ) return;?>
<div class="homepage-overlay">
<?php if( Options::get_theme_mod( 'products_1_layout' ) === 'boxed' ) : ?>
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

	<div class="product-cats total-items-<?php echo count( $product_cats );?>">

	<?php
	$count = 0;
	foreach ( $product_cats as $product_cat ) :

		$count++;
		$cat_id 	= $product_cat;
		$btn_text 	= Options::get_theme_mod( 'product_cats_1_btn_text' );

		if ( ! empty( $cat_id ) ) :

			$term 		= get_term( $cat_id, 'product_cat' );
	    	$image_id 	= get_woocommerce_term_meta( $term->term_id, 'thumbnail_id', true );
	    	$image 		= wp_get_attachment_image_src( $image_id, 'large' );

			?>

			<div class="product-cats__item item-<?php echo absint( $count );?>">

				<div class="product-cats__inner">

					<?php if( ! empty( $image_id ) ) : ?>
						<div class="product-cats__thumbnail" style="background-image:url('<?php echo $image[0];?>')"></div>
					<?php endif;?>
					<h3 class="product-cats__title"><?php echo esc_attr( $term->name );?></h3>
					<?php echo wpautop( wp_kses_post( $term->description ) );?>
					<?php if( !empty( $btn_text ) ) : ?>
						<a href="<?php echo get_term_link( $term );?>" class="button"><?php echo esc_attr( $btn_text );?></a>
					<?php endif;?>

				</div>

			</div>
			<?php

		endif;

		?>
	<?php endforeach;?>

	</div><!-- .product-cats -->

<?php if( Options::get_theme_mod( 'products_1_layout' ) === 'boxed' ) : ?>
</div><!-- .container -->
<?php endif;?>
</div><!-- .homepage-overlay -->
</div><!-- #homepage__product-cats-1 -->
