<?php
/**
 * Homepage slider.
 *
 * @package Baltic
 */

namespace BalticKit;

$slides 		= Options::get_theme_mod( 'homepage_slider' );
$effect 		= Options::get_theme_mod( 'slider_effect' );
$autoplay 		= Options::get_theme_mod( 'slider_autoplay' );
$autoplay 		= ( $autoplay == true ) ? 'true' : 'false';
$autoplayspeed 	= Options::get_theme_mod( 'slider_autoplayspeed' );
$arrows 		= Options::get_theme_mod( 'slider_arrows' );
$arrows 		= ( $arrows == true ) ? 'true' : 'false';
$dots 			= Options::get_theme_mod( 'slider_dots' );
$dots 			= ( $dots == true ) ? 'true' : 'false';
$pauseonhover 	= Options::get_theme_mod( 'slider_pauseonhover' );
$pauseonhover 	= ( $pauseonhover == true ) ? 'true' : 'false';
$btn_rounded 	= ( true == Options::get_theme_mod( 'slider_btn_rounded' ) ) ? 'btn-cta__rounded' : '';

printf( '<div id="homepage__slider" class="homepage__slider %1$s" %2$s %3$s %4$s %5$s %6$s %7$s>',
	'fade-'. esc_attr( $effect ),
	'data-fade="'. esc_attr( $effect ) .'"',
	'data-autoplay="'. esc_attr( $autoplay ) .'"',
	'data-autoplayspeed="'. esc_attr( $autoplayspeed ) .'"',
	'data-arrows="'. esc_attr( $arrows ) .'"',
	'data-dots="'. esc_attr( $dots ) .'"',
	'data-pauseonhover="'. esc_attr( $pauseonhover ) .'"'
);

?>
<div class="homepage-overlay">
<?php if( Options::get_theme_mod( 'slider_layout' ) === 'boxed' ) : ?>
<div class="container">
<?php endif;?>

	<?php if( $slides ) : ?>

	<div class="homepage__slider-container fade-<?php echo esc_attr( $effect );?>">

		<?php
		foreach ( $slides as $slide ) :

			$image = $slide['image'];
			$image = wp_get_attachment_image_src( $image, 'post-thumbnail' );
			$image = ( ! empty( $image ) ) ? 'style="background-image:url('. esc_url( $image[0] ) .');"' : '';
		?>

		<div class="slide__item">
			<div class="slide__item-background" <?php echo $image;?>>

				<div class="slide__item-overlay">

					<div class="slide__item-content">

						<h2 class="slide__item-title"><?php echo esc_attr( $slide['title'] );?></h2>
						<div class="slide__item-description"><?php echo wpautop( esc_textarea( $slide['description'] ) );?></div>

						<div class="slide__item-button-area">
							<?php if( $slide['btn_text_1'] && $slide['btn_link_1'] ) :?>
								<a href="<?php echo esc_url( $slide['btn_link_1'] );?>" class="slide__item-btn1 btn-cta btn-cta__<?php echo esc_attr( $slide['btn_style_1'] ) ;?> <?php echo esc_attr( $btn_rounded );?>"><?php echo esc_attr( $slide['btn_text_1'] );?></a>
							<?php endif;?>
							<?php if( $slide['btn_text_2'] && $slide['btn_link_2'] ) :?>
								<a href="<?php echo esc_url( $slide['btn_link_2'] );?>" class="slide__item-btn2 btn-cta btn-cta__<?php echo esc_attr( $slide['btn_style_2'] ) ;?> <?php echo esc_attr( $btn_rounded );?>"><?php echo esc_attr( $slide['btn_text_2'] );?></a>
							<?php endif;?>
						</div>

					</div><!-- .slide-content -->

				</div><!-- .slide-inner -->

			</div><!-- .slide__item-background -->
		</div><!-- .slide__item -->

		<?php endforeach;?>

	</div><!-- .homepage__slider-container -->

	<?php endif;?>


<?php if( Options::get_theme_mod( 'slider_layout' ) === 'boxed' ) : ?>
</div><!-- .container -->
<?php endif;?>
</div><!-- .hoemepage-overlay -->
</div><!-- #homepage__slider -->
