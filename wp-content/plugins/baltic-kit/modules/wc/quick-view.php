<?php
/**
 * WooCommerce quick view products
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Modules\WC;

if ( ! defined( 'ABSPATH' ) ) exit;

class Quick_View {

	/**
	 * Holds the theme instance.
	 *
	 * @access private
	 * @static
	 *
	 * @var Quick_View
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Quick_View An instance of the class.
	 */
	public static function instance() {

		if ( is_null( self::$_instance ) ) {
			self::$_instance = new self();
		}

		return self::$_instance;

	}

	/**
	 * Constructor
	 */
	public function __construct() {

		add_action( 'wp_enqueue_scripts', 	array( $this, 'scripts' ) );

		add_action( 'wp_footer', array( $this, 'container' ), 0 );

		// Image
		add_action( 'baltic_kit_woo_product_image', 'woocommerce_show_product_sale_flash', 10 );
		add_action( 'baltic_kit_woo_product_image', 'woocommerce_show_product_images', 20 );

		// Summary
		add_action( 'baltic_kit_woo_product_summary', 'woocommerce_template_single_title', 5 );
		add_action( 'baltic_kit_woo_product_summary', 'woocommerce_template_single_rating', 10 );
		add_action( 'baltic_kit_woo_product_summary', 'woocommerce_template_single_price', 15 );
		add_action( 'baltic_kit_woo_product_summary', 'woocommerce_template_single_excerpt', 20 );
		add_action( 'baltic_kit_woo_product_summary', 'woocommerce_template_single_add_to_cart', 25 );
		add_action( 'baltic_kit_woo_product_summary', 'woocommerce_template_single_meta', 30 );

	}

	/**
	 * [scripts description]
	 *
	 * @return [type] [description]
	 */
	public function scripts() {

		wp_enqueue_script( 'zoom' );
		wp_enqueue_script( 'flexslider' );
		wp_enqueue_script( 'photoswipe-ui-default' );
		wp_enqueue_style(  'photoswipe-default-skin' );
		add_action( 'wp_footer', 'woocommerce_photoswipe' );
		wp_enqueue_script( 'wc-single-product' );
		wp_enqueue_script( 'wc-add-to-cart-variation' );

	}

	/**
	 * [container description]
	 * @return [type] [description]
	 */
	public function container() {

		?>
			<div id="quick-view__container" class="quick-view__container hide" tabindex="-1" role="dialog">
				<div class="quick-view__wrap">
					<div class="quick-view__inner">
						<button class="quick-view__close">
							<span class="screen-reader-text"><?php echo esc_html__( 'Close', 'baltic-kit' );?></span>
							<?php echo \Baltic_Icons::get_svg( array( 'class' => 'icon-stroke', 'icon' => 'close' ) );?>
						</button>
						<div class="quick-view__content"></div>
					</div><!-- .quick-view__inner -->
				</div><!-- .quick-view__wrap -->
			</div><!-- #quick-view__container -->
		<?php

	}

}
