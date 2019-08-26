<?php
/**
 * Product_Cats Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Product_Cats {

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
	 * @var Product_Cats
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Product_Cats An instance of the class.
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

		$product_cats = array(
			'product_cats_1',
			'product_cats_2'
		);
		$count = 0;
		foreach ( $product_cats as $setting ) {

			$count++;
			Baltic_Kirki::add_panel( 'baltic_' . $setting . '_panel', array(
			    'title' 			=> sprintf( esc_html__( 'Product Categories #%s', 'baltic-kit' ), $count ),
			    'priority'			=> 10,
			    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
			) );

			Baltic_Kirki::add_section( 'baltic_' . $setting . '_selector', array(
			    'title' 		=> esc_html__( 'Product categories', 'baltic-kit' ),
			    'panel' 		=> 'baltic_' . $setting . '_panel'
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'text',
				'settings'    	=> $setting . '_btn_text',
				'label'       	=> esc_attr__( 'Button text', 'baltic-kit' ),
				'section'     	=> 'baltic_' . $setting . '_selector',
				'default'     	=> $this->default[$setting . '_btn_text'],
				'transport' 	=> 'auto',
				'partial_refresh' => array(
					$setting .'_categories' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

		}

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'select',
			'settings'    	=> 'product_cats_1',
			'label'       	=> __( 'Product Categories', 'baltic-kit' ),
			'section'     	=> 'baltic_product_cats_1_selector',
			'default'     	=> '',
			'priority'    	=> 1,
			'multiple'    	=> 6,
			'choices'     	=> Utility::get_product_cats(),
			'transport' 	=> 'auto',
			'partial_refresh' => array(
				'product_cats_1' => array(
					'selector'        		=> '.homepage__product-cats-1',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'product_cats_1' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'select',
			'settings'    	=> 'product_cats_2',
			'label'       	=> __( 'Product Categories', 'baltic-kit' ),
			'section'     	=> 'baltic_product_cats_2_selector',
			'default'     	=> '',
			'priority'    	=> 1,
			'multiple'    	=> 999,
			'choices'     	=> Utility::get_product_cats(),
			'transport' 	=> 'auto',
			'partial_refresh' => array(
				'product_cats_2' => array(
					'selector'        		=> '.homepage__product-cats-2',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'product_cats_2' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_section( 'baltic_product_cats_2_display', array(
		    'title' 		=> esc_html__( 'Display', 'baltic-kit' ),
		    'panel' 		=> 'baltic_product_cats_2_panel',
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'select',
			'settings'    => 'product_cats_2_display',
			'label'       => esc_attr__( 'Display', 'baltic-kit' ),
			'section'     => 'baltic_product_cats_2_display',
			'default'     => 'grid',
			'choices'     => array(
				'grid'		=> esc_html__( 'Grid', 'baltic-kit' ),
				'slider'	=> esc_html__( 'Slideshow', 'baltic-kit' ),
			),
			'transport'		=> 'auto',
			'partial_refresh' => array(
				'product_cats_2_display' => array(
					'selector'        		=> '.homepage__product-cats-2',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'product_cats_2' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'number',
			'settings'    	=> 'product_cats_2_columns',
			'section'     	=> 'baltic_product_cats_2_display',
			'label'       	=> esc_attr__( 'Columns', 'baltic-kit' ),
			'default'     	=> 4,
			'choices'     	=> array(
				'min'  => 1,
				'max'  => 6,
				'step' => 1,
			),
			'transport'		=> 'auto',
			'partial_refresh' => array(
				'product_cats_2_display' => array(
					'selector'        		=> '.homepage__product-cats-2',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'product_cats_2' ),
					'container_inclusive' 	=> true
				),
			),
		) );

	}

}
