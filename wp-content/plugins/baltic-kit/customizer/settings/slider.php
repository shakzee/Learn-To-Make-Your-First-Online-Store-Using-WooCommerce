<?php
/**
 * Slider Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Slider {

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
	 * @var Baltic_Settings_Slider
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Baltic_Settings_Slider An instance of the class.
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

		add_action( 'init', array( $this, 'slides' ) );
		add_action( 'init', array( $this, 'slides_settings' ) );

	}

	/**
	 * Add panel.
	 *
	 * @return void
	 */
	public function panel() {

		// Slider panel
		Baltic_Kirki::add_panel( 'baltic_slider_panel', array(
		    'title' 			=> esc_html__( 'Slider', 'baltic-kit' ),
		    'priority'			=> 10,
		    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
		) );

	}

	/**
	 * Slides settings.
	 *
	 * @return void
	 */
	public function slides() {

		Baltic_Kirki::add_section( 'baltic_slider_section', array(
		    'title' 		=> esc_html__( 'Slides', 'baltic-kit' ),
		    'panel' 		=> 'baltic_slider_panel'
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'repeater',
			'label'       => esc_html__( 'Slider', 'baltic-kit' ),
			'section'     => 'baltic_slider_section',
			'priority'    => 10,
			'row_label' => array(
				'type' => 'text',
				'value' => esc_html__( 'slide', 'baltic-kit' ),
			),
			'settings'    => 'homepage_slider',
			'default'     => $this->default['homepage_slider'],
			'fields' => array(
				'title' => array(
					'type'        => 'text',
					'label'       => esc_html__( 'Title', 'baltic-kit' ),
					'default'     => esc_html__( 'Slide title', 'baltic-kit' ),
				),
				'description' => array(
					'type'        => 'textarea',
					'label'       => esc_html__( 'Description', 'baltic-kit' ),
					'default'     => esc_html__( 'Slide description', 'baltic-kit' ),
				),
				'image' => array(
					'type'        => 'image',
					'label'       => esc_html__( 'Image', 'baltic-kit' ),
					'default'     => '',
				),
				'btn_text_1' => array(
					'type'        => 'text',
					'label'       => esc_html__( 'Button Text #1', 'baltic-kit' ),
					'default'     => esc_html__( 'Button text', 'baltic-kit' ),
				),
				'btn_link_1' => array(
					'type'        => 'url',
					'label'       => esc_html__( 'Button Link #1', 'baltic-kit' ),
					'default'     => '#',
				),
				'btn_style_1' => array(
					'type'        => 'select',
					'label'       => esc_html__( 'Button style #1', 'baltic-kit' ),
					'default'     => 'primary',
					'choices'     => Utility::get_button_style(),
				),
				'btn_text_2' => array(
					'type'        => 'text',
					'label'       => esc_html__( 'Button Text #2', 'baltic-kit' ),
					'default'     => '',
				),
				'btn_link_2' => array(
					'type'        => 'url',
					'label'       => esc_html__( 'Button Link #2', 'baltic-kit' ),
					'default'     => '',
				),
				'btn_style_2' => array(
					'type'        => 'select',
					'label'       => esc_html__( 'Button style #2', 'baltic-kit' ),
					'default'     => 'secondary',
					'choices'     => Utility::get_button_style(),
				),
			),
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'homepage_slider' => array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

	}

	/**
	 * Slides settings.
	 *
	 * @return void
	 */
	public function slides_settings() {

		Baltic_Kirki::add_section( 'baltic_slider_setting', array(
		    'title' 		=> esc_html__( 'Slides Setting', 'baltic-kit' ),
		    'panel' 		=> 'baltic_slider_panel'
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'color',
			'settings'    	=> 'slider_text_color',
			'label'       	=> esc_html__( 'Text color', 'baltic-kit' ),
			'section'     	=> 'baltic_slider_setting',
			'default'     	=> $this->default['color_text_primary'],
			'choices'     	=> array( 'alpha' => true ),
			'transport'		=> 'auto',
			'output'		=> array(
				array(
					'element'  => '.slide__item-content',
					'property' => 'color',
				),
			)
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'color',
			'settings'    	=> 'slider_overlay_color',
			'label'       	=> esc_html__( 'Background overlay', 'baltic-kit' ),
			'section'     	=> 'baltic_slider_setting',
			'default'     	=> '',
			'choices'     	=> array( 'alpha' => true ),
			'transport'		=> 'auto',
			'output'		=> array(
				array(
					'element'  => '.slide__item-overlay',
					'property' => 'background-color',
				),
			)
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        		=> 'checkbox',
			'settings' 			=> 'slider_btn_rounded',
			'section'  			=> 'baltic_slider_setting',
			'label'       		=> __( 'Button rounded', 'baltic-kit' ),
			'default'     		=> $this->default['slider_btn_rounded'],
			'priority'    		=> 10,
			'transport' 		=> 'auto',
			'partial_refresh' => array(
				'slider_btn_rounded' => array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'select',
			'settings'    => 'slider_effect',
			'label'       => esc_html__( 'Effect', 'baltic-kit' ),
			'section'     => 'baltic_slider_setting',
			'default'     => 'true',
			'priority'    => 10,
			'multiple'    => 1,
			'choices'     => array(
				'true' 	=> esc_html__( 'Fade', 'baltic-kit' ),
				'false' => esc_html__( 'Slide', 'baltic-kit' )
			),
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'slider_effect' 	=> array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'checkbox',
			'settings'    => 'slider_autoplay',
			'label'       => esc_html__( 'Autoplay', 'baltic-kit' ),
			'section'     => 'baltic_slider_setting',
			'default'     => true,
			'priority'    => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'slider_autoplay' 	=> array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'number',
			'settings'    => 'slider_autoplayspeed',
			'label'       => esc_html__( 'Autoplay Speed (in milisecond)', 'baltic-kit' ),
			'section'     => 'baltic_slider_setting',
			'default'     => $this->default['slider_autoplayspeed'],
			'choices'     	=> array(
				'min'  => 1,
				'max'  => 9999999,
				'step' => 1,
			),
			'priority'    => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'slider_autoplayspeed' => array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
			'active_callback'    => array(
				array(
					'setting'  => 'homepage_slider_autoplay',
					'operator' => '==',
					'value'    => true,
				)
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'checkbox',
			'settings'    => 'slider_arrows',
			'label'       => esc_html__( 'Display Arrows', 'baltic-kit' ),
			'section'     => 'baltic_slider_setting',
			'default'     => true,
			'priority'    => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'slider_arrows' 	=> array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'checkbox',
			'settings'    => 'slider_dots',
			'label'       => esc_html__( 'Display Dots', 'baltic-kit' ),
			'section'     => 'baltic_slider_setting',
			'default'     => true,
			'priority'    => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'slider_dots' 		=> array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        => 'checkbox',
			'settings'    => 'slider_pauseonhover',
			'label'       => esc_html__( 'Pause on hover', 'baltic-kit' ),
			'section'     => 'baltic_slider_setting',
			'default'     => false,
			'priority'    => 10,
			'transport'	=> 'auto',
			'partial_refresh' => array(
				'slider_pauseonhover' => array(
					'selector'        		=> '.homepage__slider',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'slider' ),
					'container_inclusive' 	=> true
				),
			),
		) );

	}

}
