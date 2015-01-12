<?php
	include_once('to_top_settings.php');

	/* 
	 * tell pligg what pages this modules should be included in
	 * pages are <script name> minus .php
	 * index.php becomes 'index' and upcoming.php becomes 'upcoming'
	 ***************************************************************/
	$do_not_include_in_pages = array();
	
	$include_in_pages = array('all');
	if( do_we_load_module() ) {		
		if(is_object($main_smarty)){
			module_add_action_tpl('tpl_pligg_body_start', to_top_tpl_path . 'to_top.tpl');
			include_once(mnmmodules . 'to_top/to_top_main.php');
		}
	}
	
	
	
/* end of to_top_init.php */