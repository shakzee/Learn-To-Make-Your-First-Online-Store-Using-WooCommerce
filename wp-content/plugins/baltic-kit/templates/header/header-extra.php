<?php
/**
 * Header Extra.
 *
 * @package Baltic
 */

?>

<div class="site-header-extra">
	<ul>
		<?php if( defined( 'YITH_WCWL' ) ) : ?>
			<li><a href="<?php the_permalink( get_option( 'yith-wcwl-page-id' ) );?>" title="<?php esc_html_e( 'Wishlist', 'baltic-kit' );?>" class="header-wishlist"><?php echo baltic_get_svg( array( 'class' => 'icon-stroke', 'icon' => 'heart' ) );?> <span class="total hide">0</span></a></li>
		<?php endif;?>
		<li><a href="#" title="<?php echo esc_html__( 'Cart', 'baltic-kit' );?>" class="header-cart-link"><?php baltic_wc_cart_link();?></a></li>
	</ul>
</div><!-- .site-header-extra -->
