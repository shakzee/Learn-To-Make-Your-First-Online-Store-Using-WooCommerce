<?php
/**
 * Baltic Kit class
 *
 * @package Baltic_Kit
 */

namespace BalticKit;

use BalticKit\Utility;
use BalticKit\Options;

use BalticKit\Customizer\Settings;
use BalticKit\Modules\WC;

if ( ! defined( 'ABSPATH' ) ) exit;

class Init {

	/**
	 * Holds the theme instance.
	 *
	 * @access private
	 * @static
	 *
	 * @var Baltic_Init
	 */
	public static $instance;

	public $suffix;

	private static $classes_map = [
		"Admin"				=> 'includes/admin.php',
		"Frontend_Ajax"		=> 'includes/frontend-ajax.php',
		"Homepage"			=> 'includes/homepage.php',
		"Options"			=> 'includes/options.php',
		"Page_Templates"	=> 'templates/page-templates.php',
		"Templates"			=> 'includes/templates.php',
		"Utility"			=> 'includes/utility.php',
	];

	private static $classes_aliases = [];

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Init an instance of the class.
	 */
	public static function instance() {

		if ( is_null( self::$instance ) ) {
			self::$instance = new self();
			do_action( 'baltic_kit_loaded' );
		}

		return self::$instance;
	}

	/**
	 * Plugin constructor.
	 * @since 1.0.0
	 * @access private
	 */
	private function __construct() {

		add_action( 'init', [ $this, 'init' ], 0 );

	}

	/**
	 * Initialize.
	 *
	 * @since 1.0.0
	 * @access public
	 */
	public function init() {

		spl_autoload_register( [ $this, 'autoload' ] );

		$this->suffix = Utility::get_min_suffix();

		$this->vendor();

		$this->components();

		$this->hooks();

	}

	/**
	 * Load vendor.
	 *
	 * @return void
	 */
	public function vendor() {

		require BALTIC_KIT_DIR . 'vendor/autoload.php';

	}

	/**
	 * Initiate components.
	 *
	 * @return void
	 */
	public function components() {

		Frontend_Ajax::instance();
		Page_Templates::instance();
		Homepage::instance();

		// Customizer
		Settings\General::instance();
		Settings\Hero::instance();
		Settings\Slider::instance();
		Settings\Posts::instance();
		Settings\Product_Cats::instance();
		Settings\Products::instance();
		Settings\Tweets::instance();
		Settings\Homepage::instance();

		// WooCommerce
		WC\Template::instance();
		WC\Quick_View::instance();

	}

	/**
	 * Hooks.
	 *
	 * @return void
	 */
	public function hooks() {

		add_action( 'baltic_meta', [ $this, 'meta_color'] );
		add_action( 'widgets_init', [ $this, 'register_widgets' ] );

		add_action( 'wp_enqueue_scripts', [ $this, 'frontend_assets' ] );
		add_action( 'customize_controls_enqueue_scripts', [ $this, 'customizer_control' ], 15 );

		add_action( 'edit_category', [ $this, 'flush_cats_transient' ] );
		add_action( 'save_post',     [ $this, 'flush_cats_transient' ] );
		add_action( 'customize_save_after', [ $this, 'flush_posts_queries'] );

	}

	/**
	 * Hook meta colors.
	 *
	 * @return void
	 */
	public function meta_color() {

		$meta_color = Options::get_theme_mod( 'meta_color' );

		if ( ! empty( $meta_color ) ) {
			echo '<meta name="theme-color" content="'. esc_attr( $meta_color ) .'">' . "\n";
			echo '<meta name="msapplication-navbutton-color" content="'. esc_attr( $meta_color ) .'">' . "\n";
			echo '<meta name="apple-mobile-web-app-capable" content="yes">' . "\n";
			echo '<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">' . "\n";
		}

	}

	/**
	 * Register Baltic custom widgets.
	 *
	 * @return void
	 */
	public function register_widgets() {

		register_widget( '\BalticKit\Widgets\Ajax_Recent_Viewed_Product' );

	}

	/**
	 * Enqueue plugin frontend assets.
	 *
	 * @return void
	 */
	public function frontend_assets() {

		$suffix = Utility::get_min_suffix();

		wp_enqueue_style( 'baltic-kit-frontend',
			BALTIC_KIT_URI . "assets/css/frontend{$suffix}.css",
			[ 'baltic-style' ],
			BALTIC_KIT_VERSION,
			'all'
		);

		wp_enqueue_script( 'typist',
			BALTIC_KIT_URI . "assets/js/typist/typist{$this->suffix}.js",
			[],
			'1.2',
			true
		);

		wp_enqueue_script( 'baltic-kit-frontend',
			BALTIC_KIT_URI . "assets/js/frontend{$suffix}.js",
			['jquery'],
			BALTIC_KIT_VERSION,
			true
		);

		$output = array(
			'ajax_url'		=> add_query_arg( array( 'ajax-request' => 'baltic_kit' ), home_url('/') ),
			'error_msg'		=> esc_html__( 'Request error.', 'baltic-kit' )
		);
		wp_localize_script( 'baltic-kit-frontend', 'BalticKitl10n', $output );

	}

	/**
	 * Customizer control assets.
	 *
	 * @return void
	 */
	public function customizer_control() {

		wp_enqueue_style( 'baltic-kit-customizer-control',
			BALTIC_KIT_URI . "/assets/css/customizer-control{$this->suffix}.css",
			array(),
			BALTIC_KIT_VERSION,
			'all'
		);

	}

	/**
	 * Delete categories transient.
	 *
	 * @return void
	 */
	public function flush_cats_transient() {

		if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
			return;
		}

		delete_transient( 'baltic_kit_get_categories' );
		delete_transient( 'baltic_kit_get_slug_categories' );
		delete_transient( 'baltic_kit_get_product_cats' );
		delete_transient( 'baltic_kit_get_slug_product_cats' );

	}

	/**
	 * Delete queries transient.
	 *
	 * @return void
	 */
	public function flush_posts_queries() {

		if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
			return;
		}

		delete_transient( 'baltic_kit_posts_1_query' );
		delete_transient( 'baltic_kit_posts_2_query' );

	}

	/**
	 * Laod class.
	 *
	 * @param  [type] $relative_class_name [description]
	 * @return [type]                      [description]
	 */
	private static function load_class( $relative_class_name ) {

		if ( isset( self::$classes_map[ $relative_class_name ] ) ) {
			$filename = BALTIC_KIT_DIR . '/' . self::$classes_map[ $relative_class_name ];
		} else {
			$filename = strtolower(
				preg_replace(
					[ '/([a-z])([A-Z])/', '/_/', '/\\\/' ],
					[ '$1-$2', '-', DIRECTORY_SEPARATOR ],
					$relative_class_name
				)
			);

			$filename = BALTIC_KIT_DIR . $filename . '.php';
		}

		if ( is_readable( $filename ) ) {
			require $filename;
		}

	}

	/**
	 * Autoload function.
	 *
	 * @param  [type] $class [description]
	 * @return [type]        [description]
	 */
	public function autoload( $class ) {

		if ( 0 !== strpos( $class, __NAMESPACE__ . '\\' ) ) {
			return;
		}

		$relative_class_name = preg_replace( '/^' . __NAMESPACE__ . '\\\/', '', $class );

		$has_class_alias = isset( self::$classes_aliases[ $relative_class_name ] );

		if ( $has_class_alias ) {
			$relative_class_name = self::$classes_aliases[ $relative_class_name ];
		}

		$final_class_name = __NAMESPACE__ . '\\' . $relative_class_name;

		if ( ! class_exists( $final_class_name ) ) {
			self::load_class( $relative_class_name );
		}

		if ( $has_class_alias ) {
			class_alias( $final_class_name, $class );
		}

	}

}

Init::instance();
