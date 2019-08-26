<?php
/**
 * Testimonial Settings.
 *
 * @package Baltic_Kit
 */

namespace BalticKit\Customizer\Settings;

use BalticKit\Options;
use BalticKit\Utility;
use Baltic_Kirki;

if ( ! defined( 'ABSPATH' ) ) exit;

class Testimonial {

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
	 * @var Testimonial
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Testimonial An instance of the class.
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

		$this->default = Options::defaults();

		add_action( 'init', array( $this, 'categories' ) );

	}

}
