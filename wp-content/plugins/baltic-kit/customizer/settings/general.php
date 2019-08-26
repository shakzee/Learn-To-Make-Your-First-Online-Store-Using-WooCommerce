<?php
/**
 * General Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class General {

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
	 * @var General
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return General An instance of the class.
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

		add_action( 'init', [ $this, 'theme_color'] );

	}

	public function theme_color() {

		Baltic_Kirki::add_section( 'baltic_meta_color_section', [
		    'title' 		=> esc_html__( 'Meta Color', 'baltic-kit' ),
		    'panel' 		=> 'baltic_colors_panel'
		]);

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'color',
			'settings'    	=> 'meta_color',
			'label'       	=> __( 'Meta color', 'baltic-kit' ),
			'section'     	=> 'baltic_meta_color_section',
			'default'     	=> $this->default['meta_color'],
			'transport'		=> 'postMessage'
		) );

	}

}
