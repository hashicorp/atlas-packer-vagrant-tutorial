<?php
/**
 * @package database
 * @subpackage  main
 * @since XOOPS
 * @version $Id: $
 *
 * @author ?
 * @copyright   copyright (c) 2000-2003 XOOPS.org
 * @license		http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License (GPL)
 */

/**
 * XoopsDatabseFactory Class
 *
 * @package database
 * @subpackage  main
 * @since XOOPS
 * @version $Id: $
 *
 * @author ?
 * @copyright   copyright (c) 2000-2003 XOOPS.org
 * @license		http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License (GPL)
 */
class icms_db_legacy_Factory{

	/**
	 * Constructor
	 *
	 * Makes nothing.
	 */
	function icms_db_legacy_Factory(){}

	/**
	 * Get a reference to the only instance of database class and connects to DB
     *
     * if the class has not been instantiated yet, this will also take
     * care of that
	 *
     * @static
     * @staticvar   object  The only instance of database class
     * @return      object  Reference to the only instance of database class
	 */
	function &getDatabaseConnection()
	{
		static $instance;
		if (!isset($instance)) {
			$file = XOOPS_ROOT_PATH.'/class/database/drivers/'.XOOPS_DB_TYPE.'/database.php';
			require_once $file;
			/* begin DB Layer Trapping patch */
			if ( defined('XOOPS_DB_ALTERNATIVE') && class_exists( XOOPS_DB_ALTERNATIVE ) ) {
				$class = XOOPS_DB_ALTERNATIVE ;
			} else /* end DB Layer Trapping patch */if (!defined('XOOPS_DB_PROXY')) {
				$class = 'Xoops'.ucfirst(XOOPS_DB_TYPE).'DatabaseSafe';
			} else {
				$class = 'Xoops'.ucfirst(XOOPS_DB_TYPE).'DatabaseProxy';
			}
			$instance =& new $class();
			$instance->setLogger(XoopsLogger::instance());
			$instance->setPrefix(XOOPS_DB_PREFIX);
			if (!$instance->connect()) {
				trigger_error("notrace:Unable to connect to database", E_USER_ERROR);
			}
		}
		return $instance;
	}

	/**
	 * Gets a reference to the only instance of database class. Currently
	 * only being used within the installer.
	 *
     * @static
     * @staticvar   object  The only instance of database class
     * @return      object  Reference to the only instance of database class
	 */
	function &getDatabase()
	{
		static $database;
		if (!isset($database)) {
			$file = XOOPS_ROOT_PATH.'/class/database/drivers/'.XOOPS_DB_TYPE.'/database.php';
			require_once $file;
			if (!defined('XOOPS_DB_PROXY')) {
				$class = 'Xoops'.ucfirst(XOOPS_DB_TYPE).'DatabaseSafe';
			} else {
				$class = 'Xoops'.ucfirst(XOOPS_DB_TYPE).'DatabaseProxy';
			}
			$database =& new $class();
		}
		return $database;
	}

	/**
	 * Gets the databaseupdater object.
	 *
     * @return	object  @link icms_db_legacy_updater_Handler
	 */
	function getDatabaseUpdater()
	{
		$file = XOOPS_ROOT_PATH.'/class/database/drivers/'.XOOPS_DB_TYPE.'/databaseupdater.php';
		require_once $file;
		$class = 'Icms'.ucfirst(XOOPS_DB_TYPE).'Databaseupdater';
		$databaseUpdater =& new $class();
		return $databaseUpdater;
	}
}
?>