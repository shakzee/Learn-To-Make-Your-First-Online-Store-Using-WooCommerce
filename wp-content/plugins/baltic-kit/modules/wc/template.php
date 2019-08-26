<?php
/**
 * WooCommerce Template hook
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Modules\WC;

use BalticKit\Options;

if ( ! defined( 'ABSPATH' ) ) exit;

class Template {

	/**
	 * Holds the theme instance.
	 *
	 * @access private
	 * @static
	 *
	 * @var Template
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Template An instance of the class.
	 */
	public static function instance() {

		if ( is_null( self::$_instance ) ) {
			self::$_instance = new self();
		}

		return self::$_instance;

	}


	public function __construct() {

		add_action( 'baltic_header', [ __class__, 'extra_header'], 25 );
		add_filter( 'woocommerce_add_to_cart_fragments', [ __class__, 'cart_link_fragment' ] );
		add_action( 'baltic_header', [ __class__, 'extra_toggle'], 35 );

		add_action( 'baltic_product_extra_buttons', [ __class__, 'extra_button' ] );

	}

	/**
	 * Extra header.
	 *
	 * @return void
	 */
	public static function extra_header() {
	?>
		<div class="site-header__extra">
			<ul>
				<?php if( defined( 'YITH_WCWL' ) ) : ?>
				<li>
					<a href="<?php the_permalink( get_option( 'yith-wcwl-page-id' ) );?>" title="<?php esc_html_e( 'Wishlist', 'baltic-kit' );?>" class="site-header__extra-wishlist">
						<?php echo \Baltic_Icons::get_svg( array( 'class' => 'icon-stroke', 'icon' => 'heart' ) );?> <span class="total hide">0</span>
					</a>
				</li>
				<?php endif;?>
				<li>
					<a href="#" title="<?php echo esc_html__( 'Cart', 'baltic-kit' );?>" class="site-header__extra-cartlink">
						<?php self::cart_link();?>
					</a>
				</li>
			</ul>
		</div><!-- .site-header-extra -->
	<?php
	}

	/**
	 * Cart link value.
	 *
	 * @return void
	 */
	public static function cart_link() {
	?>
	<div class="site-header__extra-value">
		<?php
		echo \Baltic_Icons::get_svg( array( 'class' => 'icon-stroke', 'icon' => 'cart' ) );

		if( \WC()->cart->get_cart_contents_count() !== 0 ) : ?>
			<span class="total">
				<?php echo wp_kses_data( \WC()->cart->get_cart_contents_count() );?>
			</span>
		<?php endif;?>
	</div>
	<?php
	}

	/**
	 * Cart link fragment.
	 *
	 * @uses  cart_link()
	 * @return void
	 */
	public static function cart_link_fragment( $fragments ) {
		ob_start();
		self::cart_link();
		$fragments['.site-header__extra-value'] = ob_get_clean();

		return $fragments;
	}

	/**
	 * [baltic_wc_header_cart description]
	 *
	 * @uses  is_checkout() [<description>]
	 * @uses  is_cart() [<description>]
	 * @uses  the_widget( $widget, $instance = array, $args = array ) [<description>]
	 * @return [type] [description]
	 */
	public static function extra_toggle() {
		if( is_cart() || is_checkout() ) {
			return;
		}
	?>
		<div class="site-header__extra-toggle">
			<?php the_widget( 'WC_Widget_Cart', array( 'title' => '' ) );?>
		</div><!-- .site-header-cart -->
	<?php
	}

	public static function extra_button() {

		if( ! defined( 'YITH_WCWL' ) && ( Options::get_theme_mod( 'product_quick_view' ) == false ) ) {
			return;
		}

	?>
		<div class="baltic-extra-button">
			<ul>
				<?php if( defined( 'YITH_WCWL' ) ) :?>
				<li>
					<?php echo do_shortcode( '[yith_wcwl_add_to_wishlist]' );?>
				</li>
				<?php endif;?>
				<?php if( Options::get_theme_mod( 'product_quick_view' ) == true ) : ?>
					<li>
						<a href="<?php the_permalink( get_the_id() );?>" class="extra-button baltic-quick-view" title="<?php esc_html_e( 'Quick View', 'baltic-kit' );?>" data-product_id="<?php echo get_the_ID();?>">
							<?php echo \Baltic_Icons::get_svg( array( 'class' => 'icon-stroke', 'icon' => 'search' ) );?>
						</a>
					</li>
				<?php endif;?>
			</ul>
		</div>
	<?php

	}

}
