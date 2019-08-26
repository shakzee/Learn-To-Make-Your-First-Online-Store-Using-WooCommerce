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

class Posts {

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
	 * @var Posts
	 */
	private static $_instance;

	/**
	 * Ensures only one instance of the theme class is loaded or can be loaded.
	 *
	 * @access public
	 * @static
	 *
	 * @return Posts An instance of the class.
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
	 * Categories selection settings.
	 *
	 * @return void
	 */
	public function categories() {

		$posts = array(
			'posts_1',
			'posts_2'
		);
		$count = 0;
		foreach ( $posts as $setting ) {

			$count++;

			Baltic_Kirki::add_panel( 'baltic_' . $setting . '_panel', array(
			    'title' 			=> sprintf( esc_html__( 'Posts #%s', 'baltic-kit' ), $count ),
			    'priority'			=> 10,
			    'active_callback'	=> array( 'Baltic_Utility', 'is_homepage_template' )
			) );

			Baltic_Kirki::add_section( 'baltic_' . $setting . '_section', array(
			    'title' 		=> esc_html__( 'Categories', 'baltic-kit' ),
			    'panel' 		=> 'baltic_' . $setting . '_panel'
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'select',
				'settings'    	=> $setting . '_cat' ,
				'section'     	=> 'baltic_'. $setting .'_section',
				'label'       	=> __( 'Categories', 'baltic-kit' ),
				'default'     	=> '',
				'priority'    	=> 1,
				'multiple'    	=> 999,
				'choices'     	=> Utility::get_categories(),
				'transport' 	=> 'auto',
				'partial_refresh' => array(
					$setting . '_cat' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'select',
				'settings'    	=> $setting .'_orderby',
				'section'     	=> 'baltic_'. $setting .'_section',
				'label'       	=> esc_attr__( 'Orderby', 'baltic-kit' ),
				'default'     	=> $this->default[ $setting .'_orderby' ],
				'choices'     	=> array(
					'none'			=> esc_html__( 'None', 'baltic-kit' ),
					'id'			=> esc_html__( 'ID', 'baltic-kit' ),
					'author'		=> esc_html__( 'Author', 'baltic-kit' ),
					'title'			=> esc_html__( 'Title', 'baltic-kit' ),
					'date'			=> esc_html__( 'Date', 'baltic-kit' ),
					'modified'		=> esc_html__( 'Modified', 'baltic-kit' ),
					'rand'			=> esc_html__( 'Random', 'baltic-kit' ),
					'comment_count'	=> esc_html__( 'Comment count', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting . '_orderby' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'select',
				'settings'    	=> $setting .'_order',
				'section'     	=> 'baltic_'. $setting .'_section',
				'label'       	=> esc_attr__( 'Order', 'baltic-kit' ),
				'default'     	=> $this->default[ $setting .'_order' ],
				'choices'     	=> array(
					'ASC'	=> esc_html__( 'Lowest to highest', 'baltic-kit' ),
					'DESC'	=> esc_html__( 'Highest to lowest', 'baltic-kit' ),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting . '_order' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        	=> 'checkbox',
				'settings'    	=> $setting .'_archive_link',
				'label'       	=> esc_attr__( 'Display link to blog archive?', 'baltic-kit' ),
				'section' 		=> 'baltic_'. $setting .'_section',
				'default'     	=> $this->default[ $setting .'_archive_link' ],
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting . '_archive_link' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'     			=> 'text',
				'settings' 			=> $setting .'_archive_text',
				'label'    			=> esc_html__( 'Archive link text', 'baltic-kit' ),
				'section'  			=> 'baltic_'. $setting .'_section',
				'default'     		=> $this->default[ $setting .'_archive_text' ],
				'active_callback' 	=> array(
					array(
						'setting'  => $setting .'_archive_link',
						'operator' => '==',
						'value'    => true,
					),
				),
				'transport'		=> 'auto',
				'partial_refresh' => array(
					$setting . '_archive_text' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        		=> 'select',
				'settings' 			=> $setting .'_btn_style',
				'section'  			=> 'baltic_'. $setting .'_section',
				'label'       		=> __( 'Button style', 'baltic-kit' ),
				'default'     		=> $this->default[ $setting .'_btn_style' ],
				'choices'     		=> Utility::get_button_style(),
				'transport'			=> 'auto',
				'active_callback' 	=> array(
					array(
						'setting'  => $setting .'_archive_link',
						'operator' => '==',
						'value'    => true,
					),
				),
				'partial_refresh' 	=> array(
					$setting . '_btn_style' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        		=> 'switch',
				'settings' 			=> $setting .'_btn_rounded',
				'section'  			=> 'baltic_'. $setting .'_section',
				'label'       		=> __( 'Button rounded', 'baltic-kit' ),
				'default'     		=> $this->default[ $setting .'_btn_rounded' ],
				'choices'     		=> array(
					'on'  => esc_attr__( 'Yes', 'baltic-kit' ),
					'off' => esc_attr__( 'No', 'baltic-kit' ),
				),
				'active_callback' 	=> array(
					array(
						'setting'  => $setting .'_archive_link',
						'operator' => '==',
						'value'    => true,
					),
				),
				'transport'			=> 'auto',
				'partial_refresh' 	=> array(
					$setting . '_btn_rounded' => array(
						'selector'        		=> '.homepage__' . str_replace( '_', '-', $setting ),
						'render_callback' 		=> array( 'BalticKit\Homepage', $setting ),
						'container_inclusive' 	=> true
					),
				),
			) );

			Baltic_Kirki::add_field( 'baltic', array(
				'type'        		=> 'radio-buttonset',
				'settings' 			=> $setting .'_btn_align',
				'section'  			=> 'baltic_'. $setting .'_section',
				'label'       		=> __( 'Button alignment', 'baltic-kit' ),
				'default'     		=> $this->default[ $setting .'_btn_align' ],
				'choices'     		=> array(
					'left'   	=> esc_attr__( 'Left', 'baltic-kit' ),
					'center' 	=> esc_attr__( 'Center', 'baltic-kit' ),
					'right'  	=> esc_attr__( 'Right', 'baltic-kit' ),
				),
				'active_callback' 	=> array(
					array(
						'setting'  => $setting .'_archive_link',
						'operator' => '==',
						'value'    => true,
					),
				),
				'transport' 		=> 'auto',
				'output'			=> array(
					array(
						'element'  => '.homepage__' . str_replace( '_', '-', $setting ) . ' .homepage__footer',
						'property' => 'text-align',
					)
				)
			) );

		}

	}

}
