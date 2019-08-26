<?php
/**
 * Components.
 *
 * @package Baltic_Kit
 */

namespace BalticKit;

if ( ! defined( 'ABSPATH' ) ) exit;

class Homepage {

	/**
	 * Holds the theme instance.
	 *
	 * @access private
	 * @static
	 *
	 * @var Baltic_Structure_Homepage
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Baltic_Structure_Homepage An instance of the class.
	 */
	public static function instance() {

		if ( is_null( self::$_instance ) ) {
			self::$_instance = new self();
		}

		return self::$_instance;

	}

	public function __construct() {

		add_action( 'baltic_homepage', array( __class__, 'sections' ) );

	}

	/**
	 * Template loader.
	 *
	 * @param string $slug Template slug.
	 * @param string $name Optional. Template variation name. Default null.
	 * @param bool   $load Optional. Whether to load template. Default true.
	 * @static
	 *
	 * @return string
	 */
	public static function get_template_part( $slug, $name = null, $load = true ) {
		$templates = new Templates;
		$templates->get_template_part( $slug, $name = null, $load = true );
	}

	/**
	 * Homepage Sections
	 *
	 * @return string html
	 */
	public static function sections() {

		$sections = Options::get_theme_mod( 'homepage_order' );

		foreach ( $sections as $section ) {
			self::get_template_part( 'homepage/' . $section );
		}

	}

	/**
	 * Callback function for homepage/hero.php template part
	 *
	 * @return void
	 */
	public static function hero() {
		self::get_template_part( 'homepage/hero' );
	}

	/**
	 * Callback function for homepage/slider.php template part
	 *
	 * @return void
	 */
	public static function slider() {
		self::get_template_part( 'homepage/slider' );
	}

	/**
	 * Callback function for homepage/product-categories-1.php template part
	 *
	 * @return void
	 */
	public static function product_cats_1() {
		self::get_template_part( 'homepage/product-cats-1' );
	}

	/**
	 * Callback function for homepage/product-categories-2.php template part
	 *
	 * @return void
	 */
	public static function product_cats_2() {
		self::get_template_part( 'homepage/product-cats-2' );
	}

	/**
	 * Callback function for homepage/products-1.php template part
	 *
	 * @return void
	 */
	public static function products_1() {
		self::get_template_part( 'homepage/products-1' );
	}

	/**
	 * Callback function for homepage/products-2.php template part
	 *
	 * @return void
	 */
	public static function products_2() {
		self::get_template_part( 'homepage/products-2' );
	}

	/**
	 * Callback function for homepage/products-3.php template part
	 *
	 * @return void
	 */
	public static function products_3() {
		self::get_template_part( 'homepage/products-3' );
	}

	/**
	 * Callback function for homepage/products-4.php template part
	 *
	 * @return void
	 */
	public static function products_4() {
		self::get_template_part( 'homepage/products-4' );
	}

	/**
	 * Callback function for homepage/posts-1.php template part
	 *
	 * @return void
	 */
	public static function posts_1() {
		self::get_template_part( 'homepage/posts-1' );
	}

	/**
	 * Callback function for homepage/posts-2.php template part
	 *
	 * @return void
	 */
	public static function posts_2() {
		self::get_template_part( 'homepage/posts-2' );
	}

	/**
	 * Callback function for homepage/testimonial.php template part
	 *
	 * @return void
	 */
	public static function testimonial() {
		self::get_template_part( 'homepage/testimonial' );
	}

	/**
	 * Callback function for homepage/latest-tweets.php template part
	 *
	 * @return void
	 */
	public static function tweets() {
		self::get_template_part( 'homepage/tweets' );
	}

}
