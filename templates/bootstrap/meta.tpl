{************************************
***** Meta Properties Template ******
*************************************}
<!-- meta.tpl -->
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
{*<meta property="og:image" content="http://linkhayvn.com/avatars/logo.png">
<meta property="og:image:type" content="image/png">*}
{if $meta_description neq ""}
	<meta name="description" content="{$meta_description|truncate:"300"}" />
	<meta property="og:description" content="{$meta_description|truncate:"300"}" />
{elseif $pagename eq "search"}
	<meta name="description" content="{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.search|sanitize:2|stripslashes}" />
	<meta property="og:description" content="{#PLIGG_Visual_Search_SearchResults#} {$templatelite.get.search|sanitize:2|stripslashes}" />
{else}
	<meta name="description" content="{#PLIGG_Visual_What_Is_Pligg_Text#}" />
	<meta property="og:description" content="{#PLIGG_Visual_What_Is_Pligg_Text#}" />
{/if}
{if $meta_keywords neq ""}
	<meta name="keywords" content="{$meta_keywords}" />
{elseif $pagename eq "search"}
	<meta name="keywords" content="{$templatelite.get.search|sanitize:2|stripslashes}" />
{else}
	<meta name="keywords" content="{#PLIGG_Visual_Meta_Keywords#}" />
{/if}
<meta name="Language" content="{#PLIGG_Visual_Meta_Language#}" />
<meta name="Robots" content="All" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Pligg" />
<!--/meta.tpl -->