<?php
/**
 * Options Class.
 *
 * @package Baltic_Kit
 */

namespace BalticKit;

if ( ! defined( 'ABSPATH' ) ) exit;

class Options {

	public static function get_option() {

	    $option = wp_parse_args(
	        get_option( 'baltic_kit_settings', array() ),
	        self::defaults()
	    );

	    return $option;

	}

	public static function get_theme_mod( $name ) {

		$default = self::mods_default();

		if ( array_key_exists( $name, $default ) ) {
			return get_theme_mod( esc_attr( $name ), $default[$name] );
		} else {
			return get_theme_mod( esc_attr( $name ) );
		}

	}

	public static function options_default() {

		$defaults = [
		];

		return apply_filters( 'baltic_kit_options_default', $defaults );

	}

	/**
	 * Default settings.
	 *
	 * @return array
	 */
	public static function mods_default() {

		$defaults = [
			'meta_color'				=> '#ff5722',

			'color_text_primary'		=> '#505050',


			'header_cart'				=> true,
			'header_wishlist'			=> true,
			'product_quick_view'		=> true,

			// Homepage Order
			'homepage_order'			=> array(
				'hero'
			),

			// Hero
			'hero_prefix'				=> esc_html__( 'Baltic theme is suitable for', 'baltic-kit' ),
			'hero_rotator'				=> esc_html__( 'online shop, small business, startup', 'baltic-kit' ),
			'hero_suffix'				=> '.',
			'hero_description'			=> '',
			'hero_btn1_text'			=> esc_html__( 'Button Text #1', 'baltic-kit' ),
			'hero_btn1_link'			=> esc_url( '#' ),
			'hero_btn1_style'			=> 'primary',
			'hero_btn2_text'			=> '',
			'hero_btn2_link'			=> '',
			'hero_btn2_style'			=> 'secondary',
			'hero_btn_rounded'			=> false,
			'hero_alignment'			=> 'left',
			'hero_text_color'			=> '#505050',
			'hero_cursor_color'			=> '#06a44d',
			'hero_layout'				=> 'boxed',
			'hero_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'hero_background_overlay'	=> 'rgba(0,0,0,0)',
			'hero_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Slider
			'homepage_slider'				=> array(
				array(
					'title' 		=> esc_html__( 'Slide title #1', 'baltic-kit' ),
					'description'  	=> esc_html__( 'Slide description #1', 'baltic-kit' ),
					'image'			=> '',
					'btn_text_1'	=> esc_html__( 'Button text #1A', 'baltic-kit' ),
					'btn_link_1'	=> esc_url( '#' ),
					'btn_style_1'	=> 'primary',
					'btn_text_2'	=> esc_html__( 'Button text #1B', 'baltic-kit' ),
					'btn_link_2'	=> esc_url( '#' ),
					'btn_style_2'	=> 'secondary',
				),
				array(
					'title' 		=> esc_html__( 'Slide title #2', 'baltic-kit' ),
					'description'  	=> esc_html__( 'Slide description #2', 'baltic-kit' ),
					'image'			=> '',
					'btn_text_1'	=> esc_html__( 'Button text #2A', 'baltic-kit' ),
					'btn_link_1'	=> esc_url( '#' ),
					'btn_style_1'	=> 'primary',
					'btn_text_2'	=> esc_html__( 'Button text #2B', 'baltic-kit' ),
					'btn_link_2'	=> esc_url( '#' ),
					'btn_style_2'	=> 'secondary',
				),
			),
			'slider_btn_rounded'			=> false,
			'slider_effect'					=> 'true',
			'slider_autoplay'				=> true,
			'slider_autoplayspeed'			=> 5000,
			'slider_arrows'					=> true,
			'slider_dots'					=> true,
			'slider_pauseonhover'			=> false,
			'slider_layout'					=> 'boxed',
			'slider_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'slider_background_overlay'		=> 'rgba(0,0,0,0)',
			'slider_background'				=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Post #1
			'posts_1_title'					=> '',
			'posts_1_description'			=> '',
			'posts_1_cat'					=> '',
			'posts_1_orderby'				=> 'date',
			'posts_1_order'					=> 'DESC',
			'posts_1_archive_link'			=> false,
			'posts_1_archive_text'			=> esc_html__( 'More from our blog', 'baltic-kit' ),
			'posts_1_btn_style'				=> 'primary',
			'posts_1_btn_rounded'			=> 'off',
			'posts_1_btn_align'				=> 'center',
			'posts_1_display'				=> 'grid',
			'posts_1_limit'					=> 3,
			'posts_1_columns'				=> 3,
			'posts_1_layout'				=> 'boxed',
			'posts_1_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'posts_1_background_overlay'	=> 'rgba(0,0,0,0)',
			'posts_1_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Post #2
			'posts_2_title'					=> '',
			'posts_2_description'			=> '',
			'posts_2_cat'					=> array(),
			'posts_2_orderby'				=> 'date',
			'posts_2_order'					=> 'DESC',
			'posts_2_archive_link'			=> false,
			'posts_2_archive_text'			=> esc_html__( 'More from our blog', 'baltic-kit' ),
			'posts_2_btn_style'				=> 'primary',
			'posts_2_btn_rounded'			=> 'off',
			'posts_2_btn_align'				=> 'center',
			'posts_2_display'				=> 'grid',
			'posts_2_limit'					=> 3,
			'posts_2_columns'				=> 3,
			'posts_2_layout'				=> 'boxed',
			'posts_2_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'posts_2_background_overlay'	=> 'rgba(0,0,0,0)',
			'posts_2_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Product Catgories #1
			'product_cats_1_title'				=> '',
			'product_cats_1_description'		=> '',
			'product_cats_1'					=> array(),
			'product_cats_1_btn_text'			=> esc_html__( 'Shop Now', 'baltic-kit' ),
			'product_cats_1_layout'				=> 'boxed',
			'product_cats_1_spacing'			=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'product_cats_1_background_overlay'	=> 'rgba(0,0,0,0)',
			'product_cats_1_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Product Catgories #2
			'product_cats_2_title'				=> '',
			'product_cats_2_description'		=> '',
			'product_cats_2'					=> array(),
			'product_cats_2_btn_text'			=> esc_html__( 'Shop Now', 'baltic-kit' ),
			'product_cats_2_display'			=> 'grid',
			'product_cats_2_limit'				=> 3,
			'product_cats_2_columns'			=> 3,
			'product_cats_2_layout'				=> 'boxed',
			'product_cats_2_spacing'			=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'product_cats_2_background_overlay'	=> 'rgba(0,0,0,0)',
			'product_cats_2_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Product #1
			'products_1_title'				=> '',
			'products_1_description'		=> '',
			'products_1_display'			=> 'grid',
			'products_1_limit'				=> 3,
			'products_1_columns'			=> 3,
			'products_1_layout'				=> 'boxed',
			'products_1_spacing'			=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'products_1_background_overlay'	=> 'rgba(0,0,0,0)',
			'products_1_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Product #2
			'products_2_title'				=> '',
			'products_2_description'		=> '',
			'products_2_display'			=> 'grid',
			'products_2_limit'				=> 3,
			'products_2_columns'			=> 3,
			'products_2_layout'				=> 'boxed',
			'products_2_spacing'			=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'products_2_background_overlay'	=> 'rgba(0,0,0,0)',
			'products_2_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Product #3
			'products_3_title'				=> '',
			'products_3_description'		=> '',
			'products_3_display'			=> 'grid',
			'products_3_limit'				=> 3,
			'products_3_columns'			=> 3,
			'products_3_layout'				=> 'boxed',
			'products_3_spacing'			=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'products_3_background_overlay'	=> 'rgba(0,0,0,0)',
			'products_3_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Product #4
			'products_4_title'				=> '',
			'products_4_description'		=> '',
			'products_4_display'			=> 'grid',
			'products_4_limit'				=> 3,
			'products_4_columns'			=> 3,
			'products_4_layout'				=> 'boxed',
			'products_4_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'products_4_background_overlay'	=> 'rgba(0,0,0,0)',
			'products_4_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Latest tweets
			'tweets_title'					=> '',
			'tweets_description'			=> '',
			'tweets_handle'					=> '',
			'tweets_display'				=> 'grid',
			'tweets_limit'					=> 3,
			'tweets_columns'				=> 3,
			'tweets_layout'					=> 'boxed',
			'tweets_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'tweets_background_overlay'	=> 'rgba(0,0,0,0)',
			'tweets_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),

			// Testimonial
			'testimonial_title'					=> '',
			'testimonial_description'			=> '',
			'testimonial_display'				=> 'grid',
			'testimonial_limit'					=> 3,
			'testimonial_columns'				=> 3,
			'testimonial_layout'				=> 'boxed',
			'testimonial_spacing'				=> array( 'top' => '0px', 'bottom' => '0px', 'left' => '0px', 'right' => '0px'),
			'testimonial_background_overlay'	=> 'rgba(0,0,0,0)',
			'testimonial_background'			=> array(
				'background-color'	 	=> 'rgba(0,0,0,0)',
				'background-image' 		=> '',
				'background-repeat' 	=> 'repeat',
				'background-position' 	=> 'center center',
				'background-size' 		=> 'cover',
				'background-attachment' => 'scroll'
			),
		];

		return apply_filters( 'baltic_kit_mods_default', $defaults );

	}

}
