<?php
/**
 * Products Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Products {

	/**
	 * Holds settings defaults, populated in constructor.
	 *
	 * @access private
	 * @var array
	 */
	private $default;

	/**
	 * Holds the theme instance.
	 *
	 * @access private
	 * @static
	 *
	 * @var Products
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Products An instance of the class.
	 */
	public static function instance() {

		if ( is_null( self::$_instance ) ) {
			self::$_instance = new self();
		}

		return self::$_instance;

	}

	/**
	 * Constructor.
	 */
	public function __construct() {

		$this->default = Options::mods_default();

		add_action( 'init', array( $this, 'categories' ) );

	}

	/**
	 * Register products settings.
	 * 
	 * @return void
	 */
	public function categories() {

		$products = [
			'products_1',
			'products_2',
			'products_3',
			'products_4',
		];

		$count = 0;
		foreach ( $products as $setting ) {

			$count++;
			Baltic_Kirki::add_panel( 'baltic_' . $setting . '_panel', array(
			    'title' 			=> sprintf( esc_html__( 'Products #%s', 'baltic-kit' ), $count ),
			    'priority'			=> 10,
			    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
			) );

			Baltic_Kirki::add_section( 'baltic_' . $setting . '_property', array(
			    'title' 		=> esc_html__( 'Property', 'baltic-kit' ),
			    'panel' 		=> 'baltic_' . $setting . '_panel',
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'select',
				'settings'    	=> 'baltic_' . $setting .'_categories',
				'section'     	=> 'baltic_'. $setting .'_property',
				'label'       	=> __( 'Categories', 'baltic-kit' ),
				'default'     	=> '',
				'multiple'    	=> 9999,
				'choices'     	=> Utility::get_slug_product_cats(),
				'transport' 	=> 'auto',
				'partial_refresh' => array(
					$setting .'_categories' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'select',
				'settings'    => 'baltic_'. $setting .'_orderby',
				'section'     => 'baltic_'. $setting .'_property',
				'label'       => esc_attr__( 'Orderby', 'baltic-kit' ),
				'default'     => 'date',
				'choices'     => array(
					'date'			=> esc_html__( 'Date', 'baltic-kit' ),
					'id'			=> esc_html__( 'ID', 'baltic-kit' ),
					'menu_order'	=> esc_html__( 'Menu Order', 'baltic-kit' ),
					'popularity'	=> esc_html__( 'Popularity', 'baltic-kit' ),
					'rand'			=> esc_html__( 'Random', 'baltic-kit' ),
					'rating'		=> esc_html__( 'Rating', 'baltic-kit' ),
					'title'			=> esc_html__( 'Title', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_orderby' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'select',
				'settings'    => 'baltic_'. $setting .'_order',
				'section'     => 'baltic_'. $setting .'_property',
				'label'       => esc_attr__( 'Order', 'baltic-kit' ),
				'default'     => 'ASC',
				'choices'     => array(
					'ASC'			=> esc_html__( 'Lowest to highest', 'baltic-kit' ),
					'DESC'			=> esc_html__( 'Highest to lowest', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_order' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'select',
				'settings'    => 'baltic_'. $setting .'_visibility',
				'section'     => 'baltic_'. $setting .'_property',
				'label'       => esc_attr__( 'Visibility', 'baltic-kit' ),
				'default'     => 'visible',
				'choices'     => array(
					'visible'	=> esc_html__( 'Visible', 'baltic-kit' ),
					'catalog'	=> esc_html__( 'Catalog', 'baltic-kit' ),
					'search'	=> esc_html__( 'Search', 'baltic-kit' ),
					'hidden'	=> esc_html__( 'Hidden', 'baltic-kit' ),
					'featured'  => esc_html__( 'Featured', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_visibility' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'select',
				'settings'    => 'baltic_'. $setting .'_status',
				'section'     => 'baltic_'. $setting .'_property',
				'label'       => esc_attr__( 'Status', 'baltic-kit' ),
				'default'     => '',
				'choices'     => array(
					''				=> esc_html__( 'Default', 'baltic-kit' ),
					'on_sale'		=> esc_html__( 'On Sale', 'baltic-kit' ),
					'best_selling'	=> esc_html__( 'Best Selling', 'baltic-kit' ),
					'top_rated'		=> esc_html__( 'Top Rated', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_status' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

		}

	}

}
