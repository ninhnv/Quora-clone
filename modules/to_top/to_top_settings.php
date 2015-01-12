<?php
define('to_top_path', my_pligg_base . '/modules/to_top/');

define('to_top_lang_conf', lang_loc . '/modules/to_top/lang.conf');

define('to_top_tpl_path', '../modules/to_top/templates/');



if(is_object($main_smarty)){
	$main_smarty->assign('to_top_path', to_top_path);
	$main_smarty->assign('to_top_lang_conf', to_top_lang_conf);
	$main_smarty->assign('to_top_tpl_path', to_top_tpl_path);
}

/* end of to_top_settings.php */
