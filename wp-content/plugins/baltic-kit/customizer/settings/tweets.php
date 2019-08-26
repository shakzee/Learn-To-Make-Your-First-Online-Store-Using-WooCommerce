<?php
/**
 * Tweets Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Tweets {

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
	 * @var Tweets
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Tweets An instance of the class.
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
		add_action( 'init', array( $this, 'tweets' ) );

	}

	/**
	 * Add settings panel.
	 *
	 * @return void
	 */
	public function panel() {

		Baltic_Kirki::add_panel( 'baltic_tweets_panel', array(
		    'title' 			=> esc_html__( 'Latest Tweets', 'baltic-kit' ),
		    'priority'			=> 10,
		    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
		) );

	}

	/**
	 * Latest tweets settings.
	 *
	 * @return void
	 */
	public function tweets() {

		Baltic_Kirki::add_section( 'baltic_latest_tweets_section', array(
		    'title' 		=> esc_html__( 'Latest Tweets', 'baltic-kit' ),
		    'panel' 		=> 'baltic_tweets_panel'
		) );

		Baltic_Kirki::add_field( 'baltic', array(
			'type'        	=> 'text',
			'settings'    	=> 'tweets_handle',
			'label'       	=> esc_attr__( 'Twitter Username', 'baltic-kit' ),
			'section'     	=> 'baltic_latest_tweets_section',
			'default'     	=> $this->default['tweets_handle'],
			'transport'		=> 'auto',
			'partial_refresh' => array(
				'tweets_handle' => array(
					'selector'        		=> '.homepage__tweets',
					'render_callback' 		=> array( 'BalticKit\Homepage', 'tweets' ),
					'container_inclusive' 	=> true
				),
			),
		) );

	}

}
