<?php
/**
 * Frontend Ajax.
 *
 * @package Baltic_Kit
 */
namespace BalticKit;

if ( ! defined( 'ABSPATH' ) ) exit;

class Frontend_Ajax {

	/**
	 * Holds the theme instance.
	 *
	 * @access private
	 * @static
	 *
	 * @var Ajax
	 */
	public static $instance;

	/**
	 * Ajax end-point handler.
	 *
	 * @var string
	 */
	private $endpoint = 'ajax-request';

	public $templates;

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
		}

		return self::$instance;
	}

	public function __construct() {

		$this->templates = new Templates;

        add_action( 'parse_request',	[ $this, 'parse_request' ] );
        add_filter( 'query_vars',   	[ $this, 'query_vars' ] );

	}

	/**
	 * Add query vars.
	 *
	 * @param  array
	 * @return void
	 */
	public function query_vars( $vars ) {

        $vars[] = $this->endpoint;
        $vars[] = 'action';
        return $vars;

	}

	/**
	 * [output description]
	 * @param  [type] $output [description]
	 * @return [type]         [description]
	 */
	public function output( $output ) {
		return str_replace( array( "\n", "\t", "\r" ), '', $output );
	}

	/**
	 * Is doing ajax.
	 *
	 * @return boolean true|false
	 */
	public function is_doing_ajax() {
		return true;
	}

	/**
	 * Parse request of ajax.
	 *
	 * @param  $wp
	 * @return void
	 */
	public function parse_request( $wp ) {

		if ( array_key_exists( $this->endpoint, $wp->query_vars ) ) {

			add_filter( 'wp_doing_ajax', [ $this, 'is_doing_ajax' ] );

			if ( isset( $wp->query_vars['action'] ) ) {

				$action = $wp->query_vars['action'];

				switch ( $action ) {

					case 'recently_viewed_product':
						$this->recently_viewed();
					break;

					case 'quick_view_product':
						$this->quick_view();
					break;

					case 'wishlist_count' :
						$this->wishlist_count();
					break;

					default:
						echo esc_html__( 'Wrong paramater.', 'baltic-kit' );
					break;

				}
			}

			exit;

		}

	}

	/**
	 * Recently viewed product response.
	 *
	 * @return string html
	 */
	public function recently_viewed() {

		if ( ! isset( $_REQUEST['count'] ) ) {
			die();
		}

		$viewed_products = ! empty( $_COOKIE['baltic_kit_recently_viewed_products'] ) ? (array) explode( '|', $_COOKIE['baltic_kit_recently_viewed_products'] ) : array();
		$viewed_products = array_reverse( array_filter( array_map( 'absint', $viewed_products ) ) );

		if ( empty( $viewed_products ) ) {
			die();
		}

		$count = intval( $_REQUEST['count'] );

		$query_args = [
			'posts_per_page' => $count,
			'no_found_rows'  => 1,
			'post_status'    => 'publish',
			'post_type'      => 'product',
			'post__in'       => $viewed_products,
			'orderby'        => 'post__in',
		];

		if ( 'yes' === get_option( 'woocommerce_hide_out_of_stock_items' ) ) {
			$query_args['tax_query'] = [
				[
					'taxonomy' => 'product_visibility',
					'field'    => 'name',
					'terms'    => 'outofstock',
					'operator' => 'NOT IN',
				],
			];
		}

	    $r = new \WP_Query( $query_args );

		ob_start();
		if( $r->have_posts() ):
			echo '<ul>';
			while( $r->have_posts() ): $r->the_post();
				wc_get_template( 'content-widget-product.php' );
			endwhile;
			echo '</ul>';
		endif;
		wp_reset_postdata();

		$content = $this->output( ob_get_clean() );

		echo $content;

		die();

	}

	/**
	 * Quick view response.
	 *
	 * @return string html
	 */
	public function quick_view() {

		if ( ! isset( $_REQUEST['product_id'] ) ) {
			die();
		}

		$product_id = intval( $_REQUEST['product_id'] );

		$query_args = [
			'p'         	=> $product_id,
			'post_type' 	=> 'product',
			'no_found_rows' => 1,
		];

		$r = new \WP_Query( $query_args );

		ob_start();
		if( $r->have_posts() ):
			while( $r->have_posts() ): $r->the_post();
				$this->templates->get_template_part( 'quick', 'view' );
			endwhile;
		endif;
		wp_reset_postdata();

		$content = $this->output( ob_get_clean() );

		echo $content;

		die();

	}

	/**
	 * Wisthlist count response.
	 *
	 * @return string json
	 */
	public function wishlist_count() {

		wp_send_json( array(
			'count' => \yith_wcwl_count_all_products()
		) );

	}

}
