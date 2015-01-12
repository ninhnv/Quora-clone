<?php

include_once('internal/Smarty.class.php');
$main_smarty = new Smarty;

include('config.php');
include(mnminclude.'html1.php');
include(mnminclude.'link.php');
include(mnminclude.'smartyvariables.php');

$vars = '';
check_actions('regulation', $vars);

define('pagename', 'regulation'); 
$main_smarty->assign('pagename', pagename);

// sidebar
$main_smarty = do_sidebar($main_smarty);

// show the template
header( "HTTP/1.1 404 Not Found" );
$main_smarty->assign('tpl_center', $the_template . '/regulation');
$main_smarty->display($the_template . '/pligg.tpl');
exit;

?>