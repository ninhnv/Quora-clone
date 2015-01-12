<?php

// the path to the module. the probably shouldn't be changed unless you rename the lightview folder(s)
define('lightview_path', my_pligg_base . '/modules/lightview/');
// the path to the modules templates. 
define('lightview_tpl_path', '../modules/lightview/templates/');

// don't touch anything past this line.

if(isset($main_smarty) && is_object($main_smarty)){
	$main_smarty->assign('lightview_path', lightview_path);
	$main_smarty->assign('lightview_tpl_path', lightview_tpl_path);
}

?>
