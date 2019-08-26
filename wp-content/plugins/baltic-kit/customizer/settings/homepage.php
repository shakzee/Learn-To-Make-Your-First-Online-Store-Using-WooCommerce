<?php
/**
 * Homepage Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Homepage {

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
	 * @var Homepage
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Homepage An instance of the class.
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

		add_action( 'init', array( $this, 'title_description' ) );
		add_action( 'init', array( $this, 'display' ) );
		add_action( 'init', array( $this, 'layout_background' ) );
		add_action( 'init', array( $this, 'order' ) );

	}

	/**
	 * Homepage title and description section settings.
	 *
	 * @return void
	 */
	public function title_description() {

		$descriptions = array(
			'product_cats_1',
			'product_cats_2',
			'products_1',
			'products_2',
			'products_3',
			'products_4',
			'posts_1',
			'posts_2',
			'testimonial',
			'tweets'
		);

		foreach ( $descriptions as $setting ) {

			Baltic_Kirki::add_section( 'baltic_' . $setting . '_description', array(
			    'title' 		=> esc_html__( 'Description', 'baltic-kit' ),
			    'panel' 		=> 'baltic_' . $setting . '_panel',
			    'priority'		=> 1
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'     			=> 'text',
				'settings' 			=> $setting . '_title',
				'section'  			=> 'baltic_' . $setting . '_description',
				'label'    			=> __( 'Title', 'baltic-kit' ),
				'default'			=> '',
				'transport'			=> 'auto',
				'partial_refresh' 	=> array(
					$setting .'_title' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'     			=> 'textarea',
				'settings' 			=> $setting . '_description',
				'section'  			=> 'baltic_' . $setting . '_description',
				'label'    			=> __( 'Description', 'baltic-kit' ),
				'default'			=> '',
				'transport'			=> 'auto',
				'partial_refresh' 	=> array(
					$setting .'_description' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        		=> 'radio-buttonset',
				'settings' 			=> $setting .'_header_align',
				'section'  			=> 'baltic_' . $setting . '_description',
				'label'       		=> __( 'Alignment', 'baltic-kit' ),
				'default'     		=> 'center',
				'choices'     		=> array(
					'left'   	=> esc_attr__( 'Left', 'baltic-kit' ),
					'center' 	=> esc_attr__( 'Center', 'baltic-kit' ),
					'right'  	=> esc_attr__( 'Right', 'baltic-kit' ),
				),
				'transport' 		=> 'auto',
				'output'			=> array(
					array(
						'element'  => '.homepage__' . str_replace( '_', '-', $setting ) . ' .homepage__header',
						'property' => 'text-align',
					)
				)
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        		=> 'color',
				'settings' 			=> $setting .'_header_color',
				'section'  			=> 'baltic_' . $setting . '_description',
				'label'       		=> __( 'Title and description color', 'baltic-kit' ),
				'default'     		=> $this->default['color_text_primary'],
				'choices'     		=> array( 'alpha' => true ),
				'transport'			=> 'auto',
				'output'			=> array(
					array(
						'element'  	=> '.homepage__' . str_replace( '_', '-', $setting ) . ' .homepage__header',
						'property' 	=> 'color',
					),
					array(
						'element'	=> '.homepage__' . str_replace( '_', '-', $setting ) . ' .homepage__header-description:before',
						'property'	=> 'background-color'
					)
				)
			) );
		}

	}

	/**
	 * Display settings
	 *
	 * @return void
	 */
	public function display() {

		$displays = array(
			'products_1',
			'products_2',
			'products_3',
			'products_4',
			'posts_1',
			'posts_2',
			'testimonial',
			'tweets'
		);
		foreach( $displays as $setting ) {

			Baltic_Kirki::add_section( 'baltic_' . $setting . '_display', array(
			    'title' 		=> esc_html__( 'Display', 'baltic-kit' ),
			    'panel' 		=> 'baltic_' . $setting . '_panel',
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'select',
				'settings'    => $setting .'_display',
				'label'       => esc_attr__( 'Display', 'baltic-kit' ),
				'section'     => 'baltic_'. $setting .'_display',
				'default'     => 'grid',
				'choices'     => array(
					'grid'		=> esc_html__( 'Grid', 'baltic-kit' ),
					'slider'	=> esc_html__( 'Slideshow', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_display' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'number',
				'settings'    	=> $setting .'_limit',
				'section'     	=> 'baltic_'. $setting .'_display',
				'label'       	=> esc_attr__( 'Limit', 'baltic-kit' ),
				'default'     	=> $this->default[$setting .'_limit'],
				'choices'     	=> array(
					'min'  => 1,
					'max'  => 99999,
					'step' => 1,
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_limit' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'number',
				'settings'    	=> $setting .'_columns',
				'section'     	=> 'baltic_'. $setting .'_display',
				'label'       	=> esc_attr__( 'Columns', 'baltic-kit' ),
				'default'     	=> $this->default[$setting .'_columns'],
				'choices'     	=> array(
					'min'  => 1,
					'max'  => 6,
					'step' => 1,
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_columns' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

		}

	}

	/**
	 * Layout and background settings for all homepage sections.
	 *
	 * @return void
	 */
	public function layout_background() {

		/** Background */
		$backgrounds = array(
			'hero',
			'slider',
			'product_cats_1',
			'product_cats_2',
			'products_1',
			'products_2',
			'products_3',
			'products_4',
			'posts_1',
			'posts_2',
			'testimonial',
			'tweets'
		);

		foreach ( $backgrounds as $setting ) {

			// Layout == spacing
			Baltic_Kirki::add_section( 'baltic_'. $setting .'_layout', array(
			    'title' 		=> esc_html__( 'Spacing', 'baltic-kit' ),
			    'panel' 		=> 'baltic_'. $setting .'_panel',
			    'priority'		=> 99
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'select',
				'settings'    => $setting .'_layout',
				'label'       => esc_attr__( 'Layout', 'baltic-kit' ),
				'section'     => 'baltic_'. $setting .'_layout',
				'default'     => $this->default[ $setting . '_layout' ],
				'choices'     => array(
					'boxed'			=> esc_html__( 'Boxed', 'baltic-kit' ),
					'full-width'	=> esc_html__( 'Full width', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting .'_layout' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'spacing',
				'settings'    	=> $setting .'_spacing',
				'section'     	=> 'baltic_'. $setting .'_layout',
				'label'       	=> esc_attr__( 'Spacing', 'baltic-kit' ),
				'default'     	=> $this->default[ $setting . '_spacing' ],
				'transport'		=> 'auto',
				'output' => array(
					array(
						'element'  	=> '.homepage__' . str_replace( '_', '-', $setting ) . ' > .homepage-overlay',
						'property'	=> 'padding'
					),
				),
			) );

			// Background
			Baltic_Kirki::add_section( 'baltic_'. $setting .'_background', array(
			    'title' 		=> esc_html__( 'Background', 'baltic-kit' ),
			    'panel' 		=> 'baltic_'. $setting . '_panel',
			    'priority'		=> 99
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'color',
				'settings'    	=> $setting .'_overlay',
				'label'       	=> __( 'Background overlay', 'baltic-kit' ),
				'section'     	=> 'baltic_'. $setting .'_background',
				'default'     	=> 'rgba(0,0,0,0)',
				'choices'     	=> array( 'alpha' => true ),
				'transport'		=> 'auto',
				'output'		=> array(
					array(
						'element'  => '.homepage__' . str_replace( '_', '-', $setting ) . ' .homepage-overlay',
						'property' => 'background-color',
					),
				)
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        => 'background',
				'settings'    => $setting .'_background',
				'label'       => esc_html__( 'Background', 'baltic-kit' ),
				'section'     => 'baltic_'. $setting .'_background',
				'default'     => $this->default[ $setting . '_background' ],
				'transport'		=> 'auto',
				'output' => array(
					array(
						'element'  => '.homepage__' . str_replace( '_', '-', $setting )
					),
				),
			) );

		}

	}

	/**
	 * Homepage order settings.
	 *
	 * @return void
	 */
	public function order() {

		Baltic_Kirki::add_section( 'baltic_homepage_order', array(
		    'title' 			=> esc_html__( 'Homepage Order', 'baltic-kit' ),
		    'priority'			=> 10,
		    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'sortable',
			'settings'    => 'homepage_order',
			'section'     => 'baltic_homepage_order',
			'default'     => $this->default['homepage_order'],
			'choices'     => array(
				'hero'					=> esc_html__( 'Hero', 'baltic-kit' ),
				'slider'				=> esc_html__( 'Slider', 'baltic-kit' ),
				'product-cats-1'		=> esc_html__( 'Product Categories #1', 'baltic-kit' ),
				'product-cats-2'		=> esc_html__( 'Product Categories #2', 'baltic-kit' ),
				'products-1'			=> esc_html__( 'Products #1', 'baltic-kit' ),
				'products-2'			=> esc_html__( 'Products #2', 'baltic-kit' ),
				'products-3'			=> esc_html__( 'Products #3', 'baltic-kit' ),
				'products-4'			=> esc_html__( 'Products #4', 'baltic-kit' ),
				'posts-1'				=> esc_html__( 'Posts #1', 'baltic-kit' ),
				'posts-2'				=> esc_html__( 'Posts #2', 'baltic-kit' ),
				'testimonial'			=> esc_html__( 'Testimonial', 'baltic-kit' ),
				'tweets'				=> esc_html__( 'Tweets', 'baltic-kit' ),
			),
			'priority'    	=> 10,
			'transport'		=> 'auto',
			'partial_refresh' => array(
				'homepage_order' => array(
					'selector'        		=> '.baltic-homepage',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'sections' ),
					'container_inclusive' 	=> false
				),
			),
		) );

	}

}
