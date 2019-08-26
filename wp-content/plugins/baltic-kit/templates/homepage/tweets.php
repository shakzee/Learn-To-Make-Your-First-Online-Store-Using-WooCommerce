<?php
/**
 * Baltic Homepage Slider
 *
 * @package  Baltic
 */

namespace BalticKit;

$title 			= Options::get_theme_mod( 'tweets_title' );
$description 	= Options::get_theme_mod( 'tweets_description' );
$display 		= Options::get_theme_mod( 'tweets_display' );
$display 		= ( ! empty( $display ) ) ? $display : '';
$overlay 		= Options::get_theme_mod( 'tweets_overlay' );
$limit 			= Options::get_theme_mod( 'tweets_limit' );
$columns 		= Options::get_theme_mod( 'tweets_columns' );
$username 		= Options::get_theme_mod( 'tweets_handle' );

?>
<div id="homepage__tweets" class="homepage__tweets homepage-section <?php echo esc_attr( $display );?>" data-columns="<?php echo absint( $columns );?>">
<?php if( Utility::unsupported_blocks( 'twitter' ) ) return;?>
<div class="homepage-overlay">
<?php if( Options::get_theme_mod( 'tweets_layout' ) === 'boxed' ) : ?>
<div class="container">
<?php endif;?>

	<?php if( ! empty( $title ) || ! empty( $description ) ) : ?>
		<div class="homepage__header">
			<?php if ( !empty( $title ) ) : ?>
				<h2 class="homepage__header-title"><?php echo esc_attr( $title );?></h2>
			<?php endif;?>
			<?php if ( ! empty( $description ) ) : ?>
				<div class="homepage__header-description"><?php echo wp_kses_post( wpautop( $description ) );?></div>
			<?php endif;?>
		</div><!-- .homepage__header -->
	<?php endif;?>

	<?php
	if( ! empty( $username ) ) :

		$args = [
			'screen_name' 	=> esc_attr( $username ),
			'count'			=> absint( $limit )
		];

		$tweets = campaignkit_twitter_get_tweets( $args );

		$html = '';

		$html .= sprintf( '<div class="baltic-twitter columns columns-%s">', absint( $columns ) );

		foreach ( $tweets as $tweet ) {

			$html .= '<div class="column-item">';

				$html .= '<div class="baltic-twitter__item">';

					$html .= '<div class="baltic-twitter__profile">';

						$html .= sprintf( '<a href="%1$s" class="baltic-twitter__userpict" rel="nofollow"><img src="%2$s" alt="%3$s"></a>',
							esc_url( 'https://twitter.com/' . esc_attr( $tweet['user']['screen_name'] ) ),
							esc_url( $tweet['user']['profile_image_url_https'] ),
							esc_attr( $tweet['user']['name'] )
						);

						$html .= sprintf( '<a href="%1$s" class="baltic-twitter__username" rel="nofollow"><span class="baltic-twitter__name">%2$s</span><span class="baltic-twitter__screen">@%3$s</span></a>',
							esc_url( 'https://twitter.com/' . esc_attr( $tweet['user']['screen_name'] ) ),
							esc_attr( $tweet['user']['name'] ),
							esc_attr( $tweet['user']['screen_name'] )
						);

					$html .= '</div>';

					$html .= '<div class="baltic-twitter__text">'. wp_kses_post( $tweet['ck_html_text'] ) .'</div>';

					$html .= sprintf( '<a href="%1$s" class="baltic-twitter__date" target="_blank"><time datetime="%2$s">%3$s%4$s</time></a>',
						esc_url( sprintf( 'https://twitter.com/%1$s/status/%2$s', esc_attr( $tweet['user']['screen_name'] ), $tweet['id'] ) ),
						date_i18n( 'Y-m-d H:i:sO', strtotime( $tweet['created_at'] ) ),
						\Baltic_Icons::get_svg( array( 'icon' => 'twitter' ) ),
						esc_attr( $tweet['ck_created_at'] )
					);

				$html .= '</div>';

			$html .= '</div>';

		}

		$html .= '</div>';

		echo $html;

	endif;
	?>

<?php if( Options::get_theme_mod( 'tweets_layout' ) === 'boxed' ) : ?>
</div><!-- .container -->
<?php endif;?>
</div><!-- .homepage-overlay -->
</div><!-- .homepage__post-1 -->
