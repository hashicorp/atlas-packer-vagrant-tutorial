<?php

$db =& icms_db_Factory::instance() ;

// beggining of Output
icms_cp_header();
include dirname(__FILE__).'/mymenu.php' ;

	// for RTL users
	@define( '_GLOBAL_LEFT' , @_ADM_USE_RTL == 1 ? 'right' : 'left' ) ;
	@define( '_GLOBAL_RIGHT' , @_ADM_USE_RTL == 1 ? 'left' : 'right' ) ;

// open table for ADVISORY
echo "<style>dd {margin-"._GLOBAL_LEFT.": 32px;}</style>\n" ;
echo "<br />\n<div style='border: 2px solid #2F5376;padding:8px;width:95%;' class='bg4'>\n" ;

// calculate the relative path between XOOPS_ROOT_PATH and XOOPS_TRUST_PATH
$root_paths = explode( '/' , XOOPS_ROOT_PATH ) ;
$trust_paths = explode( '/' , XOOPS_TRUST_PATH ) ;
foreach( $root_paths as $i => $rpath ) {
	if( $rpath != $trust_paths[ $i ] ) break ;
}
$relative_path = str_repeat( '../' , count( $root_paths ) - $i ) . implode( '/' , array_slice( $trust_paths , $i ) ) ;

// the path of XOOPS_TRUST_PATH accessible check
echo "<dl><dt>'XOOPS_TRUST_PATH' : " ;
echo "<img src='".XOOPS_URL.'/'.htmlspecialchars($relative_path)."/modules/protector/public_check.png' width='40' height='20' alt='' style='border:1px solid black;' /><br /><a href='".XOOPS_URL.'/'.htmlspecialchars($relative_path)."/modules/protector/public_check.php'>"._AM_ADV_TRUSTPATHPUBLICLINK."</a></dt>\n" ;
echo "<dd>"._AM_ADV_TRUSTPATHPUBLIC."</dd></dl>" ;

// register_globals
echo "<dl><dt>'register_globals' : " ;
$safe = ! ini_get( "register_globals" ) ;
if( $safe ) {
	echo "off &nbsp; <span style='color:green;font-weight:bold;'>ok</span></dt>\n" ;
} else {
	echo "on  &nbsp; <span style='color:red;font-weight:bold;'>"._AM_ADV_NOTSECURE."</span></dt>\n" ;
	echo "<dd>"._AM_ADV_REGISTERGLOBALS."<br /><br />
			".XOOPS_ROOT_PATH."/.htaccess<br /><br />
			<b>php_flag &nbsp; register_globals &nbsp; off</b>
		</dd>" ;
}
echo "</dl>\n" ;


// allow_url_fopen
echo "<dl><dt>'allow_url_fopen' : " ;
$safe = ! ini_get( "allow_url_fopen" ) ;
if( $safe ) {
	echo "off &nbsp; <span style='color:green;font-weight:bold;'>ok</span></dt>\n" ;
} else {
	echo "on  &nbsp; <span style='color:red;font-weight:bold;'>"._AM_ADV_NOTSECURE."</span></dt>\n" ;
	echo "<dd>"._AM_ADV_ALLOWURLFOPEN."</dd>" ;
}
echo "</dl>\n" ;


// session.use_trans_sid
echo "<dl><dt>'session.use_trans_sid' : " ;
$safe = ! ini_get( "session.use_trans_sid" ) ;
if( $safe ) {
	echo "off &nbsp; <span style='color:green;font-weight:bold;'>ok</span></dt>\n" ;
} else {
	echo "on  &nbsp; <span style='color:red;font-weight:bold;'>"._AM_ADV_NOTSECURE."</span></dt>\n" ;
	echo "<dd>"._AM_ADV_USETRANSSID."</dd>" ;
}
echo "</dl>\n" ;


// XOOPS_DB_PREFIX
echo "<dl><dt>'XOOPS_DB_PREFIX' : " ;
$safe = strtolower( XOOPS_DB_PREFIX ) != 'xoops' ;
if( $safe ) {
	echo XOOPS_DB_PREFIX." &nbsp; <span style='color:green;font-weight:bold;'>ok</span></dt>\n<dd>" ;
} else {
	echo XOOPS_DB_PREFIX." &nbsp; <span style='color:red;font-weight:bold;'>"._AM_ADV_NOTSECURE."</span></dt>\n" ;
	echo "<dd>"._AM_ADV_DBPREFIX."<br />\n" ;
}
echo "<a href='index.php?page=prefix_manager'>"._AM_ADV_LINK_TO_PREFIXMAN."</a></dd>" ;
echo "</dl>\n" ;


// patch to mainfile.php
echo "<dl><dt>'mainfile.php' : " ;
if( ! defined( 'PROTECTOR_PRECHECK_INCLUDED' ) ) {
	echo "missing precheck &nbsp; <span style='color:red;font-weight:bold;'>"._AM_ADV_NOTSECURE."</span></dt>\n" ;
	echo "<dd>"._AM_ADV_MAINUNPATCHED."</dd>" ;
} else if( ! defined( 'PROTECTOR_POSTCHECK_INCLUDED' ) ) {
	echo "missing postcheck &nbsp; <span style='color:red;font-weight:bold;'>"._AM_ADV_NOTSECURE."</span></dt>\n" ;
	echo "<dd>"._AM_ADV_MAINUNPATCHED."</dd>" ;
} else {
	echo "patched &nbsp; <span style='color:green;font-weight:bold;'>ok</span></dt>\n" ;
}
echo "</dl>\n" ;

// patch to databasefactory.php
echo "<dl><dt>'databasefactory.php' : " ;
$db =& icms_db_Factory::instance() ;
if( strtolower( get_class( $db ) ) != 'protectormysqldatabase' ) {
	echo "<span style='color:red;font-weight:bold;'>"._AM_ADV_DBFACTORYUNPATCHED."</span></dt>\n" ;
} else {
	echo _AM_ADV_DBFACTORYPATCHED."<span style='color:green;font-weight:bold;'>ok</span></dt>\n" ;
}
echo "</dl>\n" ;

// close table for ADVISORY
echo "</div><br />\n" ;



// open table for PROTECTION CHECK
echo "<br />\n<div style='border: 2px solid #2F5376;padding:8px;width:95%;' class='bg4'>\n" ;

echo "<h3>"._AM_ADV_SUBTITLECHECK."</h3>\n" ;
// Check contaminations
$uri_contami = XOOPS_URL."/index.php?xoopsConfig%5Bnocommon%5D=1" ;
echo "<dl><dt>"._AM_ADV_CHECKCONTAMI.":</dt>\n" ;
echo "<dd><a href='$uri_contami' target='_blank'>$uri_contami</a></dd>" ;
echo "</dl>\n" ;

// Check isolated comments
$uri_isocom = XOOPS_URL."/index.php?cid=".urlencode(",password /*") ;
echo "<dl><dt>"._AM_ADV_CHECKISOCOM.":</dt>\n" ;
echo "<dd><a href='$uri_isocom' target='_blank'>$uri_isocom</a></dd>" ;
echo "</dl>\n" ;
// close table for PROTECTION CHECK
echo "</div>\n" ;



icms_cp_footer();
?>