<?php
define( 'DB_NAME', '${DB_NAME}' );
define( 'DB_USER', '${DB_USER}' );
define( 'DB_PASSWORD','${DB_PASS}' );
define( 'DB_HOST', '${DB_HOST}' );
define( 'DB_COLLATE', '' );

// 온라인 생성기에서 가져온 시크릿 키
define('AUTH_KEY',         'DoMD!QO`+)k2So6v.vDc-nN|1bGW$$d3+yC)Rg>zqQRw>AH~#xe _Zp!/[SXq)LV');
define('SECURE_AUTH_KEY',  ')Z2-G&IlK~!Es(E#gmxL>knp]_<g?M+9Pl,WUcN5s{;-ddjSdoK(-M,P@XdTR6)9');
define('LOGGED_IN_KEY',    'Vu|Ctz6Cc?^`3C)KlYJ|<}JFO#4#p$zh>ImiYUod!u{|s-GkE&jWp8I2JE77P^ce');
define('NONCE_KEY',        '0Y=]%T`C/rh2od0qA?ZyN~~vbrU/QaM-O(#=|D2kIVePT}~NR}A0>/U?eEhmT6`5');
define('AUTH_SALT',        '-O<1AtXhp@]IB:<HGfR>EseU,F;IFtPyb-$yJ!1+0}oX$+r{mi<MzhEiPaTQYMnR');
define('SECURE_AUTH_SALT', '`&yrzHn$2xxa=.HS7aSIgRVzzuF=j/TUz,CB$l%xwehdqGyMBQ?k$N[FRb1-%(|v');
define('LOGGED_IN_SALT',   'CI!PmZSUh3>|K4^lqN/z7Xp[RckWLw+N-}S71+-MR1+)-D)oZk&I lb&_SBu:(`I');
define('NONCE_SALT',       'q+-ge)QQ|G5%>UiV@CHpcJ}=k%Vz|0JDkB;U}st7wIi$~Em^5e}@=8U@ gx|T`?M');

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

require_once ABSPATH . 'wp-settings.php';
?>
