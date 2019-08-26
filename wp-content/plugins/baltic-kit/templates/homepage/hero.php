<?php
/**
 * Baltic hero section
 *
 * @package  Baltic
 */

namespace BalticKit;

$hero_prefix 		= Options::get_theme_mod( 'hero_prefix' );
$hero_rotator 		= Options::get_theme_mod( 'hero_rotator' );
$hero_suffix 		= Options::get_theme_mod( 'hero_suffix' );
$hero_description 	= Options::get_theme_mod( 'hero_description' );
$btn1_text 			= Options::get_theme_mod( 'hero_btn1_text' );
$btn1_link 			= Options::get_theme_mod( 'hero_btn1_link' );
$btn1_style 		= Options::get_theme_mod( 'hero_btn1_style' );
$btn2_text 			= Options::get_theme_mod( 'hero_btn2_text' );
$btn2_link 			= Options::get_theme_mod( 'hero_btn2_link' );
$btn2_style 		= Options::get_theme_mod( 'hero_btn2_style' );
$btn_rounded 		= ( true == Options::get_theme_mod( 'hero_btn_rounded' ) ) ? 'btn-cta__rounded' : '';
?>

<div id="homepage__hero" class="homepage__hero">
<div class="homepage-overlay">
<?php if( Options::get_theme_mod( 'hero_layout' ) === 'boxed' ) : ?>
<div class="container">
<?php endif;?>

	<div class="homepage__hero-wrap">
		<div class="homepage__hero-inner">

			<div class="homepage__hero-area">
				<h2 class="homepage__hero-title">
					<?php
					echo esc_attr( $hero_prefix ) . ' ';

					if ( ! empty( $hero_rotator ) ) {

						$first_rotator = explode( ',', $hero_rotator );
						$extract_rotator = explode( ',', $hero_rotator );
						foreach ( $extract_rotator as $key => $text ) {
							if ( $key === 0 ) {
								unset( $extract_rotator[$key] );
							}
						}

						$final_rotator = implode( ',', $extract_rotator );
						$final_rotator = rtrim( $final_rotator, ',' );

						printf( '<span id="homepage__hero-rotator" class="homepage__hero-rotator text__rotator" data-typist="%s">%s</span>',
							esc_attr( $final_rotator ),
							esc_attr( $first_rotator[0] )
						);

					}

					echo esc_attr( $hero_suffix );
					?>
				</h2>

				<?php if( ! empty( $hero_description ) ) : ?>
				<div class="homepage__hero-description">
					<?php echo wp_kses_post( wpautop( $hero_description ) ); ?>
				</div>
				<?php endif;?>

				<?php
				if( ! empty( $btn1_text ) || ! empty( $btn1_link ) ) :
					printf( '<a href="%1$s" class="homepage__hero-btn1 btn-cta btn-cta__%2$s %3$s">%4$s</a>',
						esc_url( $btn1_link ),
						esc_attr( $btn1_style ),
						esc_attr( $btn_rounded ),
						esc_attr( $btn1_text )
					);
				endif;

				if( ! empty( $btn2_text ) || ! empty( $btn2_link ) ) :
					printf( '<a href="%1$s" class="homepage__hero-btn2 btn-cta btn-cta__%2$s %3$s">%4$s</a>',
						esc_url( $btn2_link ),
						esc_attr( $btn2_style ),
						esc_attr( $btn_rounded ),
						esc_attr( $btn2_text )
					);
				endif;
				?>
			</div><!-- .homepage__hero-area -->

		</div><!-- .homepage__hero-inner -->
	</div><!-- .homepage__hero-wrap -->

<?php if( Options::get_theme_mod( 'hero_layout' ) === 'boxed' ) : ?>
</div><!-- .container -->
<?php endif;?>
</div><!-- .homepage-overlay -->
</div><!-- #homepage__hero -->
