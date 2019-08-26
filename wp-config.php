<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'woocommerce');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'fE1.J`|:r#*H57cIT+2>52OCVb$=j*I8|]U]S^SUqGct*UZCq~8]ECiS{<:e}El`');
define('SECURE_AUTH_KEY',  '_|KP~tKgW!!v,dV+Uoq##`>jaO6M;?^=~9A&(?8u8Yh+eYFx+g|[bn7drC={eTEE');
define('LOGGED_IN_KEY',    ',0HDX @)*n8[hLH*nrwJ[_v4D.[TDoBx  Fo{Bk+$Df8f4mB~]2_d{#i&VdGh8`&');
define('NONCE_KEY',        'd<4@=YXv{M#)Q+hkiF!1Xn!aZAIlA!=MT?BCzeI nyFM(.y!S!KF&QKjj>P(,, /');
define('AUTH_SALT',        'r$Y.?I6:LJ/+PRY@^ 8[=y K=<b0`8<VR5_PdKXB>I!]x7~IlouVG5YOLT L$/^W');
define('SECURE_AUTH_SALT', '|L*a9k#+ weO.<9M@k&]u?+t1g|D<u~Xc:mpdU+#AK iHmhwn%eXF^0J}YdSy~u{');
define('LOGGED_IN_SALT',   'kHS`>k<U5zha_5d2bA1LV2uP,@j{jg%a7<DZSwO+7ePYe`Ty=.+!q_a+sb78R2Ch');
define('NONCE_SALT',       '|$o;8HaD^WPky7i$ZexE !~8&o~8el.ivY>#nYod3cxz8R&C~n}N%7SS<x:&*H}K');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'skz_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
