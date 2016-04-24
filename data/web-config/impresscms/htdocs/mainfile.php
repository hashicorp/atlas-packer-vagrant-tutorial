<?php
/**
* All information in order to connect to database are going through here.
*
* Be careful if you are changing data's in this file.
*
* @copyright	http://www.xoops.org/ The XOOPS Project
* @copyright	XOOPS_copyrights.txt
* @copyright	http://www.impresscms.org/ The ImpressCMS Project
* @license		http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License (GPL)
* @package		installer
* @since		XOOPS
* @author		http://www.xoops.org The XOOPS Project
* @author	   Sina Asghari (aka stranger) <pesian_stranger@users.sourceforge.net>
* @version		$Id$
*/

if (!defined("XOOPS_MAINFILE_INCLUDED")) {
	define("XOOPS_MAINFILE_INCLUDED",1);

	// XOOPS Physical Path
	// Physical path to your main XOOPS directory WITHOUT trailing slash
	// Example: define( 'XOOPS_ROOT_PATH', '/vagrant/www/htdocs' );
	define( 'XOOPS_ROOT_PATH', '/vagrant/www/htdocs' );

	// XOOPS Security Physical Path
	// Physical path to your security XOOPS directory WITHOUT trailing slash.
	// Ideally off your server WEB folder
	// Example: define( 'XOOPS_TRUST_PATH', '/vagrant/www/cfg_6a4bab88a87eec8' );
	define( 'XOOPS_TRUST_PATH', '/vagrant/www/cfg_6a4bab88a87eec8' );

	include_once XOOPS_TRUST_PATH . '/fe37f33c38f1b532c9702d63d53961af.php' ;

	// XOOPS Virtual Path (URL)
	// Virtual path to your main XOOPS directory WITHOUT trailing slash
	// Example: define( 'XOOPS_URL', 'http://192.168.0.105' );
	define( 'XOOPS_URL',  'http://' . $_SERVER[HTTP_HOST] );

	define('XOOPS_CHECK_PATH', 0);
	// Protect against external scripts execution if safe mode is not enabled
	if (XOOPS_CHECK_PATH && !@ini_get('safe_mode')) {
		if (function_exists('debug_backtrace')) {
			$xoopsScriptPath = debug_backtrace();
			if (!count($xoopsScriptPath)) {
			 	die("ImpressCMS path check: this file cannot be requested directly");
			}
			$xoopsScriptPath = $xoopsScriptPath[0]['file'];
		} else {
			$xoopsScriptPath = isset($_SERVER['PATH_TRANSLATED']) ? $_SERVER['PATH_TRANSLATED'] :  $_SERVER['SCRIPT_FILENAME'];
		}
		if (DIRECTORY_SEPARATOR != '/') {
			// IIS6 may double the \ chars
			$xoopsScriptPath = str_replace( strpos( $xoopsScriptPath, '\\\\', 2 ) ? '\\\\' : DIRECTORY_SEPARATOR, '/', $xoopsScriptPath);
		}
		if (strcasecmp( substr($xoopsScriptPath, 0, strlen(XOOPS_ROOT_PATH)), str_replace( DIRECTORY_SEPARATOR, '/', XOOPS_ROOT_PATH))) {
		 	exit("ImpressCMS path check: Script is not inside XOOPS_ROOT_PATH and cannot run.");
		}
	}

	// Database
	// Choose the database to be used
	define( 'XOOPS_DB_TYPE', 'pdo.mysql' );
 
    // Set the database charset if applicable
    if (defined('XOOPS_DB_CHARSET')) die();
    define( 'XOOPS_DB_CHARSET', 'utf8' );

	// Table Prefix
	// This prefix will be added to all new tables created to avoid name conflict in the database. If you are unsure, just use the default 'icms'.
	define( 'XOOPS_DB_PREFIX', SDATA_DB_PREFIX );

	// Database Hostname
	// Hostname of the database server. If you are unsure, 'localhost' works in most cases.
	define( 'XOOPS_DB_HOST', SDATA_DB_HOST );

	// Database Username
	// Your database user account on the host
	define( 'XOOPS_DB_USER', SDATA_DB_USER );

	// Database Password
	// Password for your database user account
	define( 'XOOPS_DB_PASS', SDATA_DB_PASS );

	// Database Name
	// The name of database on the host. The installer will attempt to create the database if not exist
	define( 'XOOPS_DB_NAME', SDATA_DB_NAME );

	// Password Salt Key $mainSalt
	// This salt will be appended to passwords in the icms_encryptPass() function.
	// Do NOT change this once your site is Live, doing so will invalidate everyones Password.
	define( 'XOOPS_DB_SALT', SDATA_DB_SALT );
	
	// Use persistent connection? (Yes=1 No=0)
	// Default is 'Yes'. Choose 'Yes' if you are unsure.
	define( 'XOOPS_DB_PCONNECT', 0 );

	// (optional) Physical path to script that logs database queries.
	// Example: define('ICMS_LOGGING_HOOK', XOOPS_ROOT_PATH . '/modules/foobar/logging_hook.php');
	define('ICMS_LOGGING_HOOK', '');

	define( 'XOOPS_GROUP_ADMIN', '1' );
	define( 'XOOPS_GROUP_USERS', '2' );
	define( 'XOOPS_GROUP_ANONYMOUS', '3' );

    foreach ( array('GLOBALS', '_SESSION', 'HTTP_SESSION_VARS', '_GET', 'HTTP_GET_VARS', '_POST', 'HTTP_POST_VARS', '_COOKIE', 'HTTP_COOKIE_VARS', '_REQUEST', '_SERVER', 'HTTP_SERVER_VARS', '_ENV', 'HTTP_ENV_VARS', '_FILES', 'HTTP_POST_FILES', 'xoopsDB', 'xoopsUser', 'xoopsUserId', 'xoopsUserGroups', 'xoopsUserIsAdmin', 'icmsConfig', 'xoopsOption', 'xoopsModule', 'xoopsModuleConfig', 'xoopsRequestUri') as $bad_global) {
        if (isset( $_REQUEST[$bad_global] )) {
            header( 'Location: '.XOOPS_URL.'/' );
            exit();
        }
    }

	define('ICMS_GROUP_ADMIN', XOOPS_GROUP_ADMIN);
	define('ICMS_GROUP_USERS', XOOPS_GROUP_USERS);
	define('ICMS_GROUP_ANONYMOUS', XOOPS_GROUP_ANONYMOUS);
	define( 'ICMS_URL', XOOPS_URL );
	define( 'ICMS_TRUST_PATH', XOOPS_TRUST_PATH );
	define( 'ICMS_ROOT_PATH', XOOPS_ROOT_PATH );
	if (!isset($xoopsOption['nocommon']) && XOOPS_ROOT_PATH != '') {
		include XOOPS_ROOT_PATH."/include/common.php";
	}
}
?>