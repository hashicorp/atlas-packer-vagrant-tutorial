<?php

eval( '
function '.$mydirname.'_notify_iteminfo( $category, $item_id )
{
	return protector_notify_base( "'.$mydirname.'" , $category , $item_id ) ;
}
' ) ;

if( ! function_exists( 'protector_notify_base' ) ) {

function protector_notify_base( $mydirname , $category , $item_id )
{
	include_once dirname(__FILE__).'/include/common_functions.php' ;

	$db =& icms_db_Factory::instance() ;

	$module_handler = icms::handler('icms_module') ;
	$module =& $module_handler->getByDirname( $mydirname ) ;

	if( $category == 'global' ) {
		$item['name'] = '';
		$item['url'] = '';
		return $item ;
	}
}

}

?>