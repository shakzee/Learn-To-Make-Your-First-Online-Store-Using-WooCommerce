<?php
/**
 * Hero Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Hero {

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
	 * @var Hero
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Hero An instance of the class.
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

		add_action( 'init', array( $this, 'panel' ) );
		add_action( 'init', array( $this, 'section_general' ) );
		add_action( 'init', array( $this, 'section_appearance' ) );

	}

	/**
	 * Add panel.
	 *
	 * @return void
	 */
	public function panel() {

		// Hero panel
		Baltic_Kirki::add_panel( 'baltic_hero_panel', array(
		    'title' 			=> esc_html__( 'Hero', 'baltic-kit' ),
		    'priority'			=> 10,
		    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
		) );

	}

	/**
	 * Section general settings.
	 *
	 * @return void
	 */
	public function section_general() {

		Baltic_Kirki::add_section( 'baltic_hero_section', array(
		    'title' 		=> esc_html__( 'Hero', 'baltic-kit' ),
		    'panel' 		=> 'baltic_hero_panel'
		) );

		// Hero section
		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'text',
			'settings' => 'hero_prefix',
			'label'    => esc_html__( 'Title prefix', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_prefix'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_prefix' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'textarea',
			'settings' => 'hero_rotator',
			'label'    => esc_html__( 'Title rotator', 'baltic-kit' ),
			'description' => esc_html__( 'Separate typing text by coma.', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_rotator'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_rotator' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'text',
			'settings' => 'hero_suffix',
			'label'    => esc_html__( 'Title suffix', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_suffix'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_suffix' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'textarea',
			'settings' => 'hero_description',
			'label'    => esc_html__( 'Description', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_description'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_description' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'text',
			'settings' => 'hero_btn1_text',
			'label'    => esc_html__( 'Button Text', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_btn1_text'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_btn_text' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'link',
			'settings' => 'hero_btn1_link',
			'label'    => esc_html__( 'Button link', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_btn1_link'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_btn_link' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        		=> 'select',
			'settings' 			=> 'hero_btn1_style',
			'section'  			=> 'baltic_hero_section',
			'label'       		=> __( 'Button #1 style', 'baltic-kit' ),
			'default'     		=> $this->default['hero_btn1_style'],
			'priority'    		=> 10,
			'choices'     		=> Utility::get_button_style(),
			'transport' 		=> 'auto',
			'partial_refresh' => array(
				'hero_btn1_style' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'text',
			'settings' => 'hero_btn2_text',
			'label'    => esc_html__( 'Button Text #2', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_btn2_text'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_btn_text' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'     => 'link',
			'settings' => 'hero_btn2_link',
			'label'    => esc_html__( 'Button link #2', 'baltic-kit' ),
			'section'  => 'baltic_hero_section',
			'default'  => $this->default['hero_btn2_link'],
			'priority' => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'hero_btn_link' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        		=> 'select',
			'settings' 			=> 'hero_btn2_style',
			'section'  			=> 'baltic_hero_section',
			'label'       		=> __( 'Button #2 style', 'baltic-kit' ),
			'default'     		=> $this->default['hero_btn2_style'],
			'priority'    		=> 10,
			'choices'     		=> Utility::get_button_style(),
			'transport' 		=> 'auto',
			'partial_refresh' => array(
				'hero_btn2_style' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        		=> 'checkbox',
			'settings' 			=> 'hero_btn_rounded',
			'section'  			=> 'baltic_hero_section',
			'label'       		=> __( 'Button rounded', 'baltic-kit' ),
			'default'     		=> $this->default['hero_btn_rounded'],
			'priority'    		=> 10,
			'transport' 		=> 'auto',
			'partial_refresh' => array(
				'hero_btn_rounded' => array(
					'selector'        		=> '.homepage__hero',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'hero' ),
					'container_inclusive' 	=> true
				),
			),
		) );

	}

	/**
	 * Section appearance settings.
	 *
	 * @return void
	 */
	public function section_appearance() {

		// Hero appearance
		Baltic_Kirki::add_section( 'baltic_hero_appearance', array(
		    'title' 		=> esc_html__( 'Hero Appearance', 'baltic-kit' ),
		    'panel' 		=> 'baltic_hero_panel'
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        		=> 'radio-buttonset',
			'settings' 			=> 'hero_alignment',
			'section'  			=> 'baltic_hero_appearance',
			'label'       		=> __( 'Hero text alignment', 'baltic-kit' ),
			'default'     		=> $this->default['hero_alignment'],
			'priority'    		=> 10,
			'choices'     		=> array(
				'left'   	=> esc_attr__( 'Left', 'baltic-kit' ),
				'center' 	=> esc_attr__( 'Center', 'baltic-kit' ),
				'right'  	=> esc_attr__( 'Right', 'baltic-kit' ),
			),
			'transport' 		=> 'auto',
			'output'			=> array(
				array(
					'element'  => '.homepage__hero-inner',
					'property' => 'text-align',
				)
			)
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'color',
			'settings'    	=> 'hero_text_color',
			'label'       	=> __( 'Text color', 'baltic-kit' ),
			'section'     	=> 'baltic_hero_appearance',
			'default'     	=> $this->default['hero_text_color'],
			'choices'     	=> array( 'alpha' => true ),
			'transport'		=> 'auto',
			'output'		=> array(
				array(
					'element'  => '.homepage__hero-area',
					'property' => 'color',
				),
			)
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'color',
			'settings'    	=> 'hero_cursor_color',
			'label'       	=> __( 'Cursor color', 'baltic-kit' ),
			'section'     	=> 'baltic_hero_appearance',
			'default'     	=> $this->default['hero_cursor_color'],
			'choices'     	=> array( 'alpha' => true ),
			'transport'		=> 'auto',
			'output'		=> array(
				array(
					'element'  => '.homepage__hero-rotator:after',
					'property' => 'background-color',
				),
			)
		) );

	}

}
