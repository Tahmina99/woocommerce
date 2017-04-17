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
define('DB_NAME', 'wocmrce');

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
define('AUTH_KEY',         'A)W|8j`xh1@zhik8#@us]AZ1M0v@K0ajj|*&B:G;Y>X0{0<JE+J{| bHaEs{[jPD');
define('SECURE_AUTH_KEY',  'Ouy}jjCmz`eLtY&lWF~k$/H-3k]9|Jm3lNX.S5gza#;+u+%vsQ^H;?miTlf*N2Pk');
define('LOGGED_IN_KEY',    ')t{~o_8cazn1Hay,MkOHXHd6rQEN^ BCI!X%H(5j  -Q%{?{ZE /S-iN,#$lEm3u');
define('NONCE_KEY',        'Dr7@5U{#sNl>i _IT)AgNpO>Y$U%&ap>U}du(9B)#Gq}d+y e|.MHX)A=g0]X}`H');
define('AUTH_SALT',        '#g/n+r+?9KT`8Ul0Pk5]w.]C];PtA<P@L/?x7OtoO|n.mB.IKZE^wE 0cYym_Ifn');
define('SECURE_AUTH_SALT', 'gg,-k@`r)eQMhcS_;};Z3NH~gIh7)+Zhx|6/}]^@BbOcM!9O+}DLG-,g|qpdq?+_');
define('LOGGED_IN_SALT',   'p4lym1~Gq[;-]/&U,Z^I:we|m&9Z!rg<4*-g)9JBw;4?UJq%T|7b$tZ$:sQX#3%w');
define('NONCE_SALT',       '9b(-F4:/oCunF1q=)&5$l17fJaME(`aBTm$7a_:>nKjBpeD/Qn+|3%U90x[eu!K=');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
