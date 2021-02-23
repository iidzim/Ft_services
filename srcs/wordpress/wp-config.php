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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'ikram' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );  # clusterIp

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'CP+9D&-H0qC~DRQ;jV}+-&wr~6sKk TP7 C20[-)!JhHURJ0X({aVl7$^=eR0-_]');
define('SECURE_AUTH_KEY',  'ov8JrCz:1!K4$kYPX$$qUYlb/&o].+Gq94Nre|k(q~cjSDbw[`.ND`LUS,jxD`{N');
define('LOGGED_IN_KEY',    '.zFIBzA-!ounj}#Um-D|^JdMk{n(Z#~ApPzOo` FzIW1R`%`b @7+QuV5V%z>hWF');
define('NONCE_KEY',        '8*b|cEO(.p$v:|#XA7tLgZky@Wj-}73$_iLxI#.E]RMHVI|^hfy-/Ri~xj>j$/S ');
define('AUTH_SALT',        '8HN$/Z]JbZ8JVK>o#u8Vs*+8nCP#0(&c`oKUWz[_$oUzI-f;`;^(d50-e~_03Lu8');
define('SECURE_AUTH_SALT', '0[04!(XP3K}_/:bm&9c?)W> uCeClxa]a^Y>k[4ZC{H<C7voA[0o(VhBLE:=o_k|');
define('LOGGED_IN_SALT',   'EuVt,E$+$~M!+5;~s6dTicp<iHIzFA/$pc{9`1m0J5$9V!0a+`81$)vHPeT<|H<%');
define('NONCE_SALT',       'J&X|(uB;~Ybr+ GxROicjxK+JE{3@[~$xQk4[4EwFV)Ig8=@=^({b8:sGnH47jJf');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
